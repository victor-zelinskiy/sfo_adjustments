cm = get_cm(); rm = _G.rm;
local ast_line = "**********************************************************************\n"

--copy paste from RecruitmentControlsMeter.lua
local group_image_paths = {
    ["special"] = {"ui/custom/recruitment_controls/special_units_1.png", "Special"},
    ["rare"] = {"ui/custom/recruitment_controls/rare_units_1.png", "Rare"}
}--:map<string, vector<string>>
local prefix_to_subculture = {
    bst = "wh_dlc03_sc_bst_beastmen",
    wef = "wh_dlc05_sc_wef_wood_elves",
    brt = "wh_main_sc_brt_bretonnia",
    chs = "wh_main_sc_chs_chaos",
    dwf = "wh_main_sc_dwf_dwarfs",
    emp = "wh_main_sc_emp_empire",
    grn = "wh_main_sc_grn_greenskins",
    nor = "wh_main_sc_nor_norsca",
    vmp = "wh_main_sc_vmp_vampire_counts",
    tmb = "wh2_dlc09_sc_tmb_tomb_kings",
    def = "wh2_main_sc_def_dark_elves",
    hef = "wh2_main_sc_hef_high_elves",
    lzd = "wh2_main_sc_lzd_lizardmen",
    skv = "wh2_main_sc_skv_skaven",
    cst = "wh2_dlc11_sc_cst_vampire_coast"
}--:map<string, string>
local subculture_to_prefix = {} --:map<string, string>
for k, v in pairs(prefix_to_subculture) do
    subculture_to_prefix[v] = k
end
subculture_to_prefix["wh_main_sc_teb_teb"] = "emp"
subculture_to_prefix["wh_main_sc_ksl_kislev"] = "emp"
subculture_to_prefix["wh_main_sc_grn_savage_orcs"] = "grn"
--end copy paste


--changed block
local exchange_armies_cache = {}

local is_temp_force_update_restrictions = false
local is_force_update_restrictions = false

local indexes_to_update = {
    false, --1
    false, --2
    false, --3
    false, --4
    false, --5
    false, --6
    false, --7
    false, --8
    false, --9
    false, --10
    false, --11
    false, --12
    false, --13
    false, --14
    false, --15
    false, --16
    false, --17
    false, --18
    false, --19
    false, --20
}

local function CacheUnitNameInExchange(panel, index, char_cqi)
    local Panel = find_uicomponent(core:get_ui_root(), "unit_exchange", panel)
    local subculture_prefix
    local char
    if char_cqi ~= nil then
        char = cm:get_character_by_cqi(char_cqi);
        subculture_prefix = subculture_to_prefix[char:faction():subculture()]
    end
    if not not Panel then
        local armyUnit = find_uicomponent(Panel, "units", "UnitCard" .. index);
        if not not armyUnit then
            if exchange_armies_cache[panel] == nil then
                exchange_armies_cache[panel] = {}
            end

            local armyUnitName;
            local i = index - 1;
            if char ~= nil and i < char:military_force():unit_list():num_items() then
                local unit_list = char:military_force():unit_list();
                local unit_from_list = unit_list:item_at(i);
                armyUnitName = unit_from_list:unit_key();
            else
                armyUnit:SimulateMouseOn();
                local unitInfo = find_uicomponent(core:get_ui_root(), "UnitInfoPopup", "tx_unit-type");
                local rawstring = unitInfo:GetStateText();
                local infostart = string.find(rawstring, "unit/") + 5;
                local infoend = string.find(rawstring, "]]") - 1;
                armyUnitName = string.sub(rawstring, infostart, infoend)
                armyUnit:SimulateMouseOff()
            end

            --add icon
            local x, y = armyUnit:Position()
            if not not subculture_prefix then
                if char_cqi ~= nil then
                    local rm_char = rm:get_character_by_cqi(char_cqi)
                    if rm_char ~= nil then
                        if not not armyUnitName then
                            local unit = rm:get_unit(armyUnitName, rm_char)
                            if not not unit then
                                local uicParent = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel", "icon_list")
                                if not not uicParent then
                                    local uicSibling = find_uicomponent(uicParent, "dy_upkeep")
                                    if not not uicSibling then
                                        local icon_name = subculture_prefix .. '_rm_cost_icon_' .. tostring(index)
                                        local icon = find_uicomponent(core:get_ui_root(), "unit_exchange", panel, icon_name)
                                        local icon_path = unit._UIPip;
                                        if not icon then
                                            if not not icon_path then
                                                local newIcon = UIComponent(uicSibling:CopyComponent(icon_name))
                                                Panel:Adopt(newIcon:Address())
                                                newIcon:SetVisible(true)
                                                newIcon:SetImagePath(icon_path, 0)
                                                newIcon:SetImagePath(icon_path, 1)
                                                newIcon:SetCurrentStateImageOpacity(0, 0)
                                                newIcon:SetStateText('')
                                                newIcon:SetCanResizeHeight(true)
                                                newIcon:SetCanResizeWidth(true)
                                                newIcon:Resize(30, 30)
                                                newIcon:SetCanResizeHeight(false)
                                                newIcon:SetCanResizeWidth(false)
                                                newIcon:MoveTo(x + 32, y + 17)
                                                local ui_text = unit._UIText;
                                                if not not ui_text then
                                                    newIcon:SetTooltipText(ui_text, true)
                                                else
                                                    newIcon:SetTooltipText('', true)
                                                end
                                            end
                                        else
                                            if not not icon_path then
                                                icon:SetVisible(true)
                                                icon:SetImagePath(icon_path, 1)
                                                icon:MoveTo(x + 32, y + 17)
                                                local ui_text = unit._UIText;
                                                if not not ui_text then
                                                    icon:SetTooltipText(ui_text, true)
                                                else
                                                    icon:SetTooltipText('', true)
                                                end
                                            else
                                                icon:SetVisible(false)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            --@add icon

            local is_transfered = false
            local transferArrow = find_uicomponent(armyUnit, "exchange_arrow")
            if not not transferArrow then
                is_transfered = transferArrow:Visible()
            end
            exchange_armies_cache[panel][index] = {armyUnitName, is_transfered};
        else
            local agentUnit = find_uicomponent(Panel, "units", "Agent " .. index);
            if not not agentUnit then
                if exchange_armies_cache[panel] == nil then
                    exchange_armies_cache[panel] = {}
                end
                local armyUnitName;
                local i = index - 1;
                if char ~= nil and i < char:military_force():unit_list():num_items() then
                    local unit_list = char:military_force():unit_list();
                    local unit_from_list = unit_list:item_at(i);
                    armyUnitName = unit_from_list:unit_key();
                else
                    agentUnit:SimulateMouseOn();
                    local unitInfo = find_uicomponent(core:get_ui_root(), "UnitInfoPopup", "tx_unit-type");
                    local rawstring = unitInfo:GetStateText();
                    local infostart = string.find(rawstring, "unit/") + 5;
                    local infoend = string.find(rawstring, "]]") - 1;
                    armyUnitName = string.sub(rawstring, infostart, infoend)
                    agentUnit:SimulateMouseOff()
                end
                local is_transfered = false
                local transferArrow = find_uicomponent(agentUnit, "exchange_arrow")
                if not not transferArrow then
                    is_transfered = transferArrow:Visible()
                end
                exchange_armies_cache[panel][index] = {armyUnitName, is_transfered};
            end
        end
    end
end


local function cache_armies(char_cqi, second_char_cqi)
    local subculture_prefix
    local char
    if char_cqi ~= nil then
        char = cm:get_character_by_cqi(char_cqi);
        subculture_prefix = subculture_to_prefix[char:faction():subculture()]
    end

    if not not subculture_prefix then
        for i = 1, 20 do
            local icon_name = subculture_prefix .. '_rm_cost_icon_' .. tostring(i)
            local icon1 = find_uicomponent(core:get_ui_root(), "unit_exchange", "main_units_panel_1", icon_name)
            local icon2 = find_uicomponent(core:get_ui_root(), "unit_exchange", "main_units_panel_2", icon_name)
            if not not icon1 then
                icon1:SetVisible(false)
            end
            if not not icon2 then
                icon2:SetVisible(false)
            end
        end
    end

    for i = 1, 20 do
        CacheUnitNameInExchange("main_units_panel_1", i, char_cqi)
        CacheUnitNameInExchange("main_units_panel_2", i, second_char_cqi)
    end
end

local function update_cache(index)
    CacheUnitNameInExchange("main_units_panel_1", index)
    CacheUnitNameInExchange("main_units_panel_2", index)
end


local function onCharacterSelected(character, parentEvent)
    local subculture_prefix = subculture_to_prefix[character:faction():subculture()]
    if character:has_military_force() and character:faction():is_human() and character:faction():name() == cm:get_local_faction(true) then
        --# assume character: CA_CHAR
        --tell RM which character is selected. This is core to the entire system.
        local char_cqi = character:command_queue_index()
        local current_character, was_created = rm:set_current_character(char_cqi)
        local unit_list = character:military_force():unit_list();
        local num_items = unit_list:num_items();
        local queueNum = current_character._queueNum
        local sum = num_items + queueNum
        for i = 0, 19 do
            if i >= sum then
                local icon_name = subculture_prefix .. '_main_rm_cost_icon_' .. tostring(i)
                local icon = find_uicomponent(core:get_ui_root(), "units_panel", icon_name)
                if not not icon then
                    icon:SetVisible(false)
                end
            end
        end

        cm:callback(function()
            --changed block
            --add icons
            local panel = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel");
            local uic_units = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel", "units");

            if not not panel then
                local horde_uic = find_uicomponent(panel, "tabgroup", "tab_horde_buildings");
                local horde_mode = horde_uic and horde_uic:CurrentState() == "selected";
                if not not uic_units then
                    for i = 0, uic_units:ChildCount() - 1 do
                        local unitComponent = UIComponent(uic_units:Find(i));
                        local armyUnitName;
                        if i < num_items then
                            local unit_from_list = unit_list:item_at(i);
                            armyUnitName = unit_from_list:unit_key();
                        else
                            unitComponent:SimulateMouseOn();
                            local unitInfo = find_uicomponent(core:get_ui_root(), "UnitInfoPopup", "tx_unit-type");
                            local rawstring = unitInfo:GetStateText();
                            local infostart = string.find(rawstring, "unit/") + 5;
                            local infoend = string.find(rawstring, "]]") - 1;
                            armyUnitName = string.sub(rawstring, infostart, infoend)
                            unitComponent:SimulateMouseOff();
                        end
                        local x, y = unitComponent:Position()
                        if not not subculture_prefix then
                            if char_cqi ~= nil then
                                if not not armyUnitName then
                                    local unit = rm:get_unit(armyUnitName, current_character)
                                    if not not unit then
                                        local uicParent = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel", "icon_list")
                                        if not not uicParent then
                                            local uicSibling = find_uicomponent(uicParent, "dy_upkeep")
                                            if not not uicSibling then
                                                local icon_name = subculture_prefix .. '_main_rm_cost_icon_' .. tostring(i)
                                                local icon = find_uicomponent(core:get_ui_root(), "units_panel", icon_name)
                                                local icon_path = unit._UIPip;
                                                if not icon then
                                                    if not not icon_path then
                                                        local newIcon = UIComponent(uicSibling:CopyComponent(icon_name))
                                                        panel:Adopt(newIcon:Address())
                                                        if horde_mode then
                                                            newIcon:SetVisible(false)
                                                        else
                                                            newIcon:SetVisible(true)
                                                        end
                                                        newIcon:SetImagePath(icon_path, 0)
                                                        newIcon:SetImagePath(icon_path, 1)
                                                        newIcon:SetCurrentStateImageOpacity(0, 0)
                                                        newIcon:SetStateText('')
                                                        newIcon:SetCanResizeHeight(true)
                                                        newIcon:SetCanResizeWidth(true)
                                                        newIcon:Resize(30, 30)
                                                        newIcon:SetCanResizeHeight(false)
                                                        newIcon:SetCanResizeWidth(false)
                                                        local final_x = x + 32
                                                        local final_y = y + 17
                                                        newIcon:MoveTo(final_x, final_y)
                                                        local ui_text = unit._UIText;
                                                        if not not ui_text then
                                                            newIcon:SetTooltipText(ui_text, true)
                                                        else
                                                            newIcon:SetTooltipText('', true)
                                                        end
                                                    end
                                                else
                                                    if not not icon_path then
                                                        if horde_mode then
                                                            icon:SetVisible(false)
                                                        else
                                                            icon:SetVisible(true)
                                                        end
                                                        icon:SetImagePath(icon_path, 1)
                                                        local final_x = x + 32
                                                        local final_y = y + 17
                                                        icon:MoveTo(final_x, final_y)
                                                        local ui_text = unit._UIText;
                                                        if not not ui_text then
                                                            icon:SetTooltipText(ui_text, true)
                                                        else
                                                            icon:SetTooltipText('', true)
                                                        end
                                                    else
                                                        icon:SetVisible(false)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            --@add icons
            if parentEvent == 'RecruiterManagerOkButtonListener' or parentEvent == 'UnitMergedAndDestroyed' then
                current_character:set_army_stale()
                rm:check_all_units_on_character(current_character)
                rm:enforce_all_units_on_current_character()
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
            elseif parentEvent == 'CharacterSelected' then
                rm:check_all_units_on_character(current_character)
                rm:enforce_all_units_on_current_character()
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
            elseif parentEvent == 'RecruiterManagerPanelClosedMercenaries' then
                cm:callback(function()
                    local uicParent = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel", "icon_list")
                    if not not uicParent then
                        rm:check_all_units_on_character(current_character)
                        rm:enforce_all_units_on_current_character()
                        core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
                    end
                end, 0.2)
            end
        end, 0.1)
    else
        cm:callback( function()
            local panel = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel");
            if not not panel then
                local local_faction = cm:get_local_faction(true);
                if not not local_faction then
                    local cm_local_faction = cm:get_faction(local_faction)
                    if not not cm_local_faction then
                        local local_subculture_prefix = subculture_to_prefix[cm_local_faction:subculture()]
                        for i = 0, 19 do
                            local icon_name = local_subculture_prefix .. '_main_rm_cost_icon_' .. tostring(i)
                            local icon = find_uicomponent(core:get_ui_root(), "units_panel", icon_name)
                            if not not icon then
                                icon:SetVisible(false)
                            end
                        end
                    end
                end;
            end
        end, 0.1)
    end
end

core:add_listener(
        "RecruiterManagerOkButtonListener",
        "ComponentLClickUp",
        function(context)
            return context.string == "tab_horde_buildings"
        end,
        function()
            local panel = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel");
            if not not panel then
                local local_faction = cm:get_local_faction(true);
                if not not local_faction then
                    local cm_local_faction = cm:get_faction(local_faction)
                    if not not cm_local_faction then
                        local local_subculture_prefix = subculture_to_prefix[cm_local_faction:subculture()]
                        for i = 0, 19 do
                            local icon_name = local_subculture_prefix .. '_main_rm_cost_icon_' .. tostring(i)
                            local icon = find_uicomponent(core:get_ui_root(), "units_panel", icon_name)
                            if not not icon then
                                icon:SetVisible(false)
                            end
                        end
                    end
                end
            end
        end,
        true);

core:add_listener(
        "RecruiterManagerOkButtonListener",
        "ComponentLClickUp",
        function(context)
            return context.string == "tab_army"
        end,
        function()
            local panel = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel");
            if not not panel then
                local local_faction = cm:get_local_faction(true);
                if not not local_faction then
                    local cm_local_faction = cm:get_faction(local_faction)
                    if not not cm_local_faction then
                        local local_subculture_prefix = subculture_to_prefix[cm_local_faction:subculture()]
                        for i = 0, 19 do
                            local icon_name = local_subculture_prefix .. '_main_rm_cost_icon_' .. tostring(i)
                            local icon = find_uicomponent(core:get_ui_root(), "units_panel", icon_name)
                            if not not icon then
                                icon:SetVisible(true)
                            end
                        end
                    end
                end
            end
        end,
        true);
--@changed block

cm:add_first_tick_callback(function()
    --add unit added to queue listener
    core:add_listener(
        "RecruiterManagerOnRecruitOptionClicked",
        "ComponentLClickUp",
        true,
        function(context)
            --# assume context: CA_UIContext
            local unit_component_ID = tostring(UIComponent(context.component):Id())
            --is our clicked component a unit?
            if string.find(unit_component_ID, "_recruitable") and UIComponent(context.component):CurrentState() == "active" and (not UIComponent(context.component):GetTooltipText():find("col:red")) then
                --print_all_uicomponent_children(UIComponent(context.component))
                --its a unit! steal the users input so that they don't click more shit while we calculate.
                cm:steal_user_input(true);
                rm:log("Locking recruitment button for ["..unit_component_ID.."] temporarily");
                --reduce the string to get the name of the unit.
                local unitID = string.gsub(unit_component_ID, "_recruitable", "")
                --add the unit to queue so that our model knows it exists.
                local current_character = rm:current_character();
                rm:add_unit_to_character_queue_and_refresh_limits(unitID, current_character)
                rm:enforce_unit_and_grouped_units(unitID, current_character)
                rm:output_state(current_character)
                local cm_char = cm:get_character_by_cqi(current_character:command_queue_index());
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm_char)
                cm:callback( function()
                    onCharacterSelected(cm_char, 'RecruiterManagerOnRecruitOptionClicked')
                end, 0.1)
            end
        end,
        true);
    --add unit added to queue from mercenaries listener
    core:add_listener(
        "RecruiterManagerOnMercenaryOptionClicked",
        "ComponentLClickUp",
        true,
        function(context)
            --# assume context: CA_UIContext
            local unit_component_ID = tostring(UIComponent(context.component):Id())
            --is our clicked component a unit?
            if string.find(unit_component_ID, "_mercenary") and UIComponent(context.component):CurrentState() == "active" and (not UIComponent(context.component):GetTooltipText():find("col:red")) then
                --its a unit! steal the users input so that they don't click more shit while we calculate.
                --changed block
                is_temp_force_update_restrictions = true
                --@changed block
                cm:steal_user_input(true);
                rm:log("Locking recruitment button for ["..unit_component_ID.."] temporarily");
                --reduce the string to get the name of the unit.
                local unitID = string.gsub(unit_component_ID, "_mercenary", "")
                --add the unit to queue so that our model knows it exists.
                local current_character = rm:current_character();
                rm:add_unit_to_character_queue_and_refresh_limits(unitID, current_character, true)
                rm:enforce_unit_and_grouped_units(unitID, current_character)
                rm:output_state(current_character)
                local cm_char = cm:get_character_by_cqi(current_character:command_queue_index());
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm_char)
                cm:callback( function()
                    onCharacterSelected(cm_char, 'RecruiterManagerOnMercenaryOptionClicked')
                end, 0.1)
            end
        end,
        true);

    --v function(queuedUnit: CA_UIC) --> string
    local function GetQueuedUnitClicked(queuedUnit)
        queuedUnit:SimulateMouseOn();
        local unitInfo = find_uicomponent(core:get_ui_root(), "UnitInfoPopup", "tx_unit-type");
        local rawstring = unitInfo:GetStateText();
        local infostart = string.find(rawstring, "unit/") + 5;
        local infoend = string.find(rawstring, "]]") - 1;
        local QueuedUnitName = string.sub(rawstring, infostart, infoend)
        return QueuedUnitName
    end


    --add queued unit clicked listener 
    core:add_listener(
    "RecruiterManagerOnQueuedUnitClicked",
    "ComponentLClickUp",
    true,
    function(context)
        --# assume context: CA_UIContext
        local component = UIComponent(context.component)
        local queue_component_ID = tostring(component:Id())
        if string.find(queue_component_ID, "QueuedLandUnit") then
            rm:log(ast_line.."\tPATH START: Component Clicked was a Queued Unit!")
            local unitID = GetQueuedUnitClicked(component)
            local current_character = rm:current_character()
            --if we got a unit name, we can just update the counts now.
            if not is_string(unitID) then
                rm:log("WARNING: could not find Queued Unit ID directly, setting queue stale and re-evaluating the UI.")
                current_character:set_queue_stale()
            end
            if not current_character:is_queue_stale() then --if we aren't stale, we must have a unit
                rm:log("Queued Unit name to be removed is: "..unitID)
                --changed block
                current_character:clear_restrictions()
                rm:remove_unit_from_character_queue_and_refresh_limits(unitID, current_character)
                rm:enforce_unit_and_grouped_units(unitID, current_character)
                rm:check_individual_unit_on_character(unitID, current_character)
                rm:enforce_all_units_on_current_character()
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(current_character:command_queue_index()))
                rm:output_state(current_character) -- will only fire when logging is enabled.
                --@changed block
            else --backup route.    
                --if we are stale, we might have a unit, but we don't want to rely on anything here!.
                cm:remove_callback("RMOnQueue")
                cm:callback( function() -- we callback this because if we don't do it on a small delay, it will pick up the unit we just cancelled as existing!
                    --we want to re-evaluate the units who were previously in queue, they may have changed.
                    local queue_counts = current_character:get_queue_counts() 
                    rm:check_all_units_on_character(current_character)
                    rm:enforce_all_units_on_current_character()
                    rm:output_state(current_character)
                    core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
                end, 0.1, "RMOnQueue")
            end
            cm:remove_callback("RMOnQueueOnCharacterSelected")
            cm:callback( function()
                local char_cqi = current_character:command_queue_index()
                onCharacterSelected(cm:get_character_by_cqi(char_cqi), "RecruiterManagerOnQueuedUnitClicked")
            end, 0.1, "RMOnQueueOnCharacterSelected")
        end
    end,
    true);
    --add queued mercenary listener
    core:add_listener(
    "RecruiterManagerOnQueuedMercenaryClicked",
    "ComponentLClickUp",
    true,
    function(context)
        --# assume context: CA_UIContext
        local component = UIComponent(context.component)
        local queue_component_ID = tostring(component:Id())
        if string.find(queue_component_ID, "temp_merc_") then
            local position = queue_component_ID:gsub("temp_merc_", "")
            rm:log(ast_line.."\tPATH START: Component Clicked was a Queued Mercenary Unit @ ["..position.."]!")
            local current_character = rm:current_character()
            local int_pos = tonumber(position)+1 --# assume int_pos: int
            local unitID = current_character:remove_merc_at_position_returning_key(int_pos)
            --if we got a unit name, we can just update the counts now.
            if not unitID then
                return --no mercenary at this position, do nothing
            end
            rm:log("Queued Mercenary name to be removed is: "..unitID)
            rm:check_individual_unit_on_character(unitID, current_character)
            rm:enforce_unit_and_grouped_units(unitID, rm:current_character())
            rm:output_state(current_character) -- will only fire when logging is enabled.
            core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
            cm:remove_callback("RMOnQueueMercOnCharacterSelected")
            cm:callback( function()
                local char_cqi = current_character:command_queue_index()
                onCharacterSelected(cm:get_character_by_cqi(char_cqi), "RecruiterManagerOnQueuedMercenaryClicked")
            end, 0.1, "RMOnQueueMercOnCharacterSelected")
        end
    end,
    true);


    --add character battle completed listener
    core:add_listener(
    "RecruiterManagerPlayerCharacterBattled",
    "CharacterCompletedBattle",
    function(context)
        return context:character():faction():is_human() and rm:has_character(context:character():command_queue_index()) 
    end,
    function(context)
        rm:log("Player Character Completed Battle!")
        local character = context:character()
        --# assume character: CA_CHAR
        local current_character = rm:get_character_by_cqi(character:command_queue_index())
        current_character:set_army_stale()
        current_character:set_queue_stale()
        is_force_update_restrictions = true
    end,
    true)


    --changed block
    core:add_listener(
            "ClickButtonRecruitmentListener",
            "ComponentLClickUp",
            function(context) return context.string == "button_recruitment" or context.string == "button_renown" end,
            function()
                if is_force_update_restrictions or is_temp_force_update_restrictions then
                    local current_character = rm:current_character()
                    if current_character == nil then
                        return
                    end
                    cm:callback( function()
                        current_character:clear_restrictions()
                        rm:check_all_units_on_character(current_character)
                        rm:enforce_all_units_on_current_character()
                        is_force_update_restrictions = false
                        is_temp_force_update_restrictions = false
                    end, 0.1)
                end
            end,
            true
    );

    core:add_listener(
            "ClickButtonHireRenownListener",
            "ComponentLClickUp",
            function(context) return context.string == "button_hire_renown" end,
            function()
                is_temp_force_update_restrictions = false
            end,
            true
    );
    --@changed block

    --add character moved listener
    core:add_listener(
    "RecruiterManagerPlayerCharacterMoved",
    "CharacterFinishedMoving",
    function(context)
        return context:character():faction():is_human() and rm:has_character(context:character():command_queue_index())
    end,
    function(context)
        rm:log("Player Character moved!")
        local character = context:character()
        --# assume character: CA_CHAR
        --the character moved, so we're going to set both their army and their queue stale and force the script to re-evaluate them next time they are available.
        rm:get_character_by_cqi(character:command_queue_index()):set_army_stale()
        rm:get_character_by_cqi(character:command_queue_index()):set_queue_stale()
    end,
    true)

    --add unit trained listener
    core:add_listener(
    "RecruiterManagerPlayerFactionRecruitedUnit",
    "UnitTrained",
    function(context)
        return context:unit():faction():is_human() and rm:has_character(context:unit():force_commander():command_queue_index())
    end,
    function(context)
        local unit = context:unit()
        cm:callback(function()
            local char_cqi = unit:force_commander():command_queue_index();
            onCharacterSelected(cm:get_character_by_cqi(char_cqi), "UnitTrained")
            local rec_char = rm:get_character_by_cqi(char_cqi)
            rec_char:set_army_stale()
            rec_char:clear_mercenary_queue(false)
            rm:get_character_by_cqi(char_cqi):set_queue_stale()
        end, 0.1)
    end,
    true)

    --add character selected listener
    core:add_listener(
        "RecruiterManagerOnCharacterSelected",
        "CharacterSelected",
        true,
        function(context)
            rm:log("Human Character Selected by player!")
            local character = context:character()
            onCharacterSelected(character, "CharacterSelected")
        end,
        true)
    --add recruit panel open listener
    core:add_listener(
        "RecruiterManagerOnRecruitPanelOpened",
        "PanelOpenedCampaign",
        function(context) 
            local panel = (context.string == "units_recruitment")
            if rm:current_character() == nil then
                return false
            end
            return panel 
        end,
        function(context)
            local current_character = rm:current_character()
            cm:callback(function() --do this on a delay so the panel has time to fully open before the script tries to read it!
                --first, define a holder for our recruit options
                local rec_opt = {} --:map<string, boolean>
                --next, get the paths we need to get
                local pathset = current_character._UIPathSet
                local paths_to_check = pathset:get_path_list(current_character)
                for j = 1, #paths_to_check do
                    local recruitmentList = find_uicomponent_from_table(core:get_ui_root(), pathset:get_path(paths_to_check[j]))
                    if not not recruitmentList then
                        for i = 0, recruitmentList:ChildCount() - 1 do	
                            local recruitmentOption = UIComponent(recruitmentList:Find(i)):Id();
                            local unitID = string.gsub(recruitmentOption, "_recruitable", "")
                            rec_opt[unitID] = true
                        end
                    end
                end
                rm:check_all_ui_recruitment_options(current_character, rec_opt)
                rm:enforce_units_by_table(rec_opt, current_character)
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
                rm:output_state(rm:current_character())
            end, 0.1)
        end,
        true
    )


    --changed block
    core:add_listener(
            "player_stance_monitor",
            "ForceAdoptsStance",
            function(context)
                return context:stance_adopted() == 4 and context:military_force():faction():is_human() == true;
            end,
            function()
                cm:callback(function()
                    local rec_opt = {}
                    local current_character = rm:current_character()
                    local pathset = current_character._UIPathSet
                    local paths_to_check = pathset:get_path_list(current_character)
                    for j = 1, #paths_to_check do
                        local recruitmentList = find_uicomponent_from_table(core:get_ui_root(), pathset:get_path(paths_to_check[j]))
                        if not not recruitmentList then
                            for i = 0, recruitmentList:ChildCount() - 1 do
                                local recruitmentOption = UIComponent(recruitmentList:Find(i)):Id();
                                local unitID = string.gsub(recruitmentOption, "_recruitable", "")
                                rec_opt[unitID] = true
                            end
                        end
                    end
                    rm:check_all_ui_recruitment_options(current_character, rec_opt)
                    rm:enforce_units_by_table(rec_opt, current_character)
                    core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
                    rm:output_state(rm:current_character())
                end, 0.1)
            end,
            true
    );


    core:add_listener(
            "RecruiterManagerOkButtonListener",
            "ComponentLClickUp",
            function(context) return context.string == "button_ok"
                    and UIComponent(UIComponent(context.component):Parent()):Id() == "ok_cancel_buttongroup" end,
            function()
                cm:callback(function()
                    local current_character = rm:current_character()
                    if current_character ~= nil then
                        local char_cqi = current_character:command_queue_index()
                        onCharacterSelected(cm:get_character_by_cqi(char_cqi), "RecruiterManagerOkButtonListener")
                    end
                end, 0.1)
            end,
            true
    );
    --@changed block

    --multiplayer safe listener
    core:add_listener(
        "UITriggerScriptEventRecruiterManager",
        "UITriggerScriptEvent",
        function(context)
            return context:trigger():starts_with("recruiter_manager|force_stance|")
        end,
        function(context)
            local trigger = context:trigger() --:string
            local cqi = trigger:gsub("recruiter_manager|force_stance|", "")
            --# assume cqi: CA_CQI
            if not (cm:get_character_by_cqi(cqi):military_force():active_stance() == "MILITARY_FORCE_ACTIVE_STANCE_TYPE_SETTLE") then
                cm:force_character_force_into_stance(cm:char_lookup_str(cqi), "MILITARY_FORCE_ACTIVE_STANCE_TYPE_SETTLE")
            end
        end,
        true
    )
    --stance return listener

    --add mercenary panel open listener
    core:add_listener(
        "RecruiterManagerOnMercenaryPanelOpened",
        "PanelOpenedCampaign",
        function(context) 
            return context.string == "mercenary_recruitment"; 
        end,
        function(context)
            cm:callback(function() --do this on a delay so the panel has time to fully open before the script tries to read it!
                --check every unit which has a restriction against the character's lists. This will call refresh on queue and army further upstream when necessary!
                local recruitmentList = find_uicomponent(core:get_ui_root(), 
                "units_panel", "main_units_panel", "recruitment_docker", "recruitment_options", "mercenary_display", "listview", "list_clip", "list_box")
                local current_character = rm:current_character()
                local record = {} --:map<string, boolean>
                rm:log("PATH START: Looping through all recruitment options")
                for i = 0, recruitmentList:ChildCount() - 1 do	
                    local recruitmentOption = UIComponent(recruitmentList:Find(i)):Id();
                    local unitID = string.gsub(recruitmentOption, "_mercenary", "")
                    record = rm:check_individual_unit_on_character(unitID, current_character, record)
                    rm:enforce_ui_restriction_on_unit(rm:get_unit(unitID))
                end
                rm:output_state(rm:current_character())
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
            end, 0.1)
        end,
        true
    )

    --add listener for mercenary panel closing
    core:add_listener(
        "RecruiterManagerPanelClosedMercenaries",
        "PanelClosedCampaign",
        function(context)
            return context.string == "mercenary_recruitment"; 
        end,
        function(context)
            local current_character = rm:current_character()
            current_character:clear_mercenary_queue(false)
            cm:callback( function()
                local char_cqi = current_character:command_queue_index()
                onCharacterSelected(cm:get_character_by_cqi(char_cqi), "RecruiterManagerPanelClosedMercenaries")
            end, 0.1)
        end,
        true
    )



    --add disbanded listener
    core:add_listener(
        "RecruiterManagerUnitDisbanded",
        "UnitDisbanded",
        function(context)
            return context:unit():faction():is_human() and rm:has_character(context:unit():force_commander():command_queue_index())
        end,
        function(context)
            rm:log("PATH START Human character disbanded a unit!")
            --changed block
            local current_character = rm:current_character()
            current_character:clear_restrictions()
            local unit = context:unit()
            --# assume unit: CA_UNIT
            --remove the unit from the army
            rm:get_character_by_cqi(unit:force_commander():command_queue_index()):remove_unit_from_army(unit:unit_key())
            --check the unit (+groups) again.
            rm:check_individual_unit_on_character(unit:unit_key(), current_character)
            rm:enforce_all_units_on_current_character()
            rm:output_state(current_character)
            --@changed block
        end,
        true);
    --add merged listener
    core:add_listener(
        "RecruiterManagerUnitMerged",
        "UnitMergedAndDestroyed",
        function(context)
            return context:new_unit():faction():is_human() and rm:has_character(context:new_unit():force_commander():command_queue_index())
        end,
        function(context)
            local cqi = context:new_unit():force_commander():command_queue_index()
            cm:callback(function()
                onCharacterSelected(cm:get_character_by_cqi(cqi), "UnitMergedAndDestroyed")
            end, 0.1)
        end,
        true)
end)

-------------
--transfers--
-------------
RM_TRANSFERS = {} --:map<string, CA_CQI>
--v function() --> CA_CQI
local function find_second_army()

    --v function(ax: number, ay: number, bx: number, by: number) --> number
    local function distance_2D(ax, ay, bx, by)
        return (((bx - ax) ^ 2 + (by - ay) ^ 2) ^ 0.5);
    end;

    local first_char = cm:get_character_by_cqi(rm._UICurrentCharacter)
    local char_list = first_char:faction():character_list()
    local closest_char --:CA_CHAR
    local last_distance = 50 --:number
    local ax = first_char:logical_position_x()
    local ay = first_char:logical_position_y()
    for i = 0, char_list:num_items() - 1 do
        local char = char_list:item_at(i)
        if cm:char_is_mobile_general_with_army(char) then
            if char:command_queue_index() == first_char:command_queue_index() then

            else
                local dist = distance_2D(ax, ay, char:logical_position_x(), char:logical_position_y())
                if dist < last_distance then
                    last_distance = dist
                    closest_char = char
                end
            end
        end
    end
    if closest_char then
        --the extra call is to force load the char into the model
        return rm:get_character_by_cqi(closest_char:command_queue_index()):command_queue_index()
    else
        rm:log("failed to find the other char!")
        return nil
    end
end

--v function(panel: string, index: number) --> (string, boolean)
local function GetUnitNameInExchange(panel, index)
    local Panel = find_uicomponent(core:get_ui_root(), "unit_exchange", panel)
    if not not Panel then
        local armyUnit = find_uicomponent(Panel, "units", "UnitCard" .. index);
        if not not armyUnit then
            armyUnit:SimulateMouseOn();
            local unitInfo = find_uicomponent(core:get_ui_root(), "UnitInfoPopup", "tx_unit-type");
            local rawstring = unitInfo:GetStateText();
            local infostart = string.find(rawstring, "unit/") + 5;
            local infoend = string.find(rawstring, "]]") - 1;
            local armyUnitName = string.sub(rawstring, infostart, infoend)
            rm:log("Found unit ["..armyUnitName.."] at ["..index.."] ")
            local is_transfered = false --:boolean
            local transferArrow = find_uicomponent(armyUnit, "exchange_arrow")
            if not not transferArrow then
                is_transfered = transferArrow:Visible()
            end
            return armyUnitName, is_transfered
        else
            return nil, false
        end
    end
    return nil, false
end

--changed block
--v function(reason: string)
local function LockExchangeButton(reason, number_of_units_first, number_of_units_second)
    local ok_button = find_uicomponent(core:get_ui_root(), "unit_exchange", "hud_center_docker", "ok_cancel_buttongroup", "button_ok")
    if not not ok_button then
        if number_of_units_first > 20 or number_of_units_second > 20 then
            ok_button:ShaderTechniqueSet('normal_t0', true, true)
            ok_button:ShaderVarsSet(nil, nil, nil, nil, true, true)
        else
            ok_button:ShaderTechniqueSet('set_greyscale_t0', true, true)
            ok_button:ShaderVarsSet(0.9, 1, nil, nil, true, true)
        end
        ok_button:SetDisabled(true)
        if number_of_units_first > 20 then
            ok_button:SetTooltipText("[[col:red]]Exchange is impossible: too many units in a single army! ("..tostring(number_of_units_first).."/20)[[/col]]", false)
        elseif number_of_units_second > 20 then
            ok_button:SetTooltipText("[[col:red]]Exchange is impossible: too many units in a single army! ("..tostring(number_of_units_second).."/20)[[/col]]", false)
        else
            ok_button:SetTooltipText(reason, false)
        end
    else
        rm:log("ERROR: could not find the exchange ok button!")
    end
end
--@changed block

--changed block
--v function()
local function UnlockExchangeButton(number_of_units_first, number_of_units_second)
    local ok_button = find_uicomponent(core:get_ui_root(), "unit_exchange", "hud_center_docker", "ok_cancel_buttongroup", "button_ok")
    if not not ok_button then
        ok_button:SetDisabled(false)
        if number_of_units_first > 20 then
            ok_button:SetTooltipText("[[col:red]]Exchange is impossible: too many units in a single army! ("..tostring(number_of_units_first).."/20)[[/col]]", false)
        elseif number_of_units_second > 20 then
            ok_button:SetTooltipText("[[col:red]]Exchange is impossible: too many units in a single army! ("..tostring(number_of_units_second).."/20)[[/col]]", false)
        else
            ok_button:SetTooltipText('', false)
        end
        ok_button:SetImagePath("ui/skins/default/icon_check.png")
        ok_button:ShaderTechniqueSet('normal_t0', true, true)
        ok_button:ShaderVarsSet(nil, nil, nil, nil, true, true)
    else
        rm:log("ERROR: could not find the exchange ok button!")
    end
end
--@changed block

--changed block
--v function(army_count: map<string, number>, rec_char: RECRUITER_CHARACTER) --> (boolean, string)
local function check_individual_army_validity(army_count, rec_char, subculture_prefix)
    local groups = {} --:map<string, number>
    for unit, count in pairs(army_count) do 
       local rec_unit = rm:get_unit(unit, rec_char)
       for groupID, _ in pairs(rec_unit:groups()) do
            groups[groupID] = (groups[groupID] or 0) + (rec_unit:weight() * count)
       end
       --TODO implement individual unit caps.
    end

    local result = {}
    for suffix, _ in pairs(group_image_paths) do
        local groupID = subculture_prefix.."_"..suffix
        local limit = rec_char:get_quantity_limit_for_group(groupID)
        local count = (groups[groupID] or 0);
        if count > limit then
            table.insert(result, {groupID, count, limit, false, "[[col:red]]Exchange is impossible: too many "..rm:get_ui_name_for_group(groupID).." in a single army! ("..count.."/"..limit..")[[/col]]"})
        else
            table.insert(result, {groupID, count, limit, true, "valid"})
        end
    end
    return result;
end
--@changed block



--changed block
--v function(first_army_count: map<string, number>, second_army_count:map<string, number>) --> (boolean, string)
local function are_armies_valid(first_army_result, second_army_result)
    for i, record in pairs(first_army_result) do
        if record[4] == false then
            return false, record[5]
        end
    end

    for i, record in pairs(second_army_result) do
        if record[4] == false then
            return false, record[5]
        end
    end

    return true, "valid";
end
--@changed block

--v function() --> (map<string, number>, map<string, number>)
local function count_armies()
    local first_army_count = {} --:map<string, number>
    local second_army_count = {} --:map<string, number>
    local sub_exchange_armies_cache_1 = exchange_armies_cache["main_units_panel_1"]
    local sub_exchange_armies_cache_2 = exchange_armies_cache["main_units_panel_2"]
    for i = 1, 20 do
        if sub_exchange_armies_cache_1 then
            local values = sub_exchange_armies_cache_1[i];
            if values then
                local unitID = values[1]
                if not not unitID then
                    if values[2] then
                        if second_army_count[unitID] == nil then
                            second_army_count[unitID] = 0
                        end
                        second_army_count[unitID] = second_army_count[unitID] + 1
                    else
                        if first_army_count[unitID] == nil then
                            first_army_count[unitID] = 0
                        end
                        first_army_count[unitID] = first_army_count[unitID] + 1
                    end
                end
            end
        end

        if sub_exchange_armies_cache_2 then
            local values = sub_exchange_armies_cache_2[i];
            if values then
                local unitID = values[1]
                if not not unitID then
                    if not values[2] then
                        if second_army_count[unitID] == nil then
                            second_army_count[unitID] = 0
                        end
                        second_army_count[unitID] = second_army_count[unitID] + 1
                    else
                        if first_army_count[unitID] == nil then
                            first_army_count[unitID] = 0
                        end
                        first_army_count[unitID] = first_army_count[unitID] + 1
                    end
                end
            end
        end
    end
    return first_army_count, second_army_count
end


--changed block
local function update_display(uic, rec_char, groupID, current_count)

    local image = nil --:string
    local name = nil --:string
    for k,v in pairs(group_image_paths) do
        if groupID:find(k) then
            image = v[1]
            name = v[2]
            break
        end
    end
    --changed block
    cm:callback( function()
        local cap = rec_char:get_quantity_limit_for_group(groupID)
        if image then
            uic:SetImagePath(image, 1)
        end
        if current_count and cap then
            local result_count = cap - current_count
            if (result_count < 0) then
                uic:SetStateText("[[col:red]]" .. tostring(current_count) .. "/" .. tostring(cap) .. "[[/col]]")
            else
                uic:SetStateText(tostring(current_count) .. "/" .. tostring(cap))
            end
            uic:SetVisible(true)
        end
        local col = "dark_g"
        if current_count >= cap then
            col = "red"
        end
        if name and current_count and cap then
            local tt_string = "You have used "..tostring(current_count).." of the "..tostring(cap).." "..name.." points available to this force! (Army Caps)"
            uic:SetTooltipText(tt_string, true)
        end
    end, 0.2, "updateExcDisplayCallback")
    --@changed block
end



local function addDisplayForFirstArmy(cqi, first_result, subculture_prefix)
    for suffix, _ in pairs(group_image_paths) do
        local rec_char = rm:get_character_by_cqi(cqi)
        local groupID = subculture_prefix.."_"..suffix
        local uicParent = find_uicomponent(core:get_ui_root(), "unit_exchange", "main_units_panel_1", "frame")
        if uicParent then
            local uic = find_uicomponent(uicParent, "rm_exc_display_first_"..groupID)
            if not uic then
                local uicSibling = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel", "icon_list", "rm_display_" .. groupID)
                if not not uicSibling then
                    local new_uic = UIComponent(uicSibling:CopyComponent("rm_exc_display_first_"..groupID))
                    local pos_x, pos_y = uicParent:Position();
                    if string.find(suffix, 'rare') then
                        new_uic:MoveTo(pos_x - 151, pos_y)
                    else
                        new_uic:MoveTo(pos_x - 87, pos_y)
                    end
                    uicParent:Adopt(new_uic:Address());
                    local current_count = 0;
                    for i, record in pairs(first_result) do
                        if (record[1] == groupID) then
                            current_count = record[2]
                        end
                    end
                    update_display(new_uic, rec_char, groupID, current_count)
                end
            else
                local pos_x, pos_y = uicParent:Position();
                if string.find(suffix, 'rare') then
                    uic:MoveTo(pos_x - 151, pos_y)
                else
                    uic:MoveTo(pos_x - 87, pos_y)
                end
                local current_count = 0;
                for i, record in pairs(first_result) do
                    if (record[1] == groupID) then
                        current_count = record[2]
                    end
                end
                update_display(uic, rec_char, groupID, current_count)
            end
        end
    end
end

local function addDisplayForSecondArmy(cqi, second_result)
    for suffix, _ in pairs(group_image_paths) do
        local char = cm:get_character_by_cqi(cqi);
        local rec_char = rm:get_character_by_cqi(cqi)
        local subculture_prefix = subculture_to_prefix[char:faction():subculture()];
        if not subculture_prefix then
            return
        end
        local groupID = subculture_prefix.."_"..suffix
        local uicParent = find_uicomponent(core:get_ui_root(), "unit_exchange", "main_units_panel_2", "frame")
        if uicParent then
            local uic = find_uicomponent(uicParent, "rm_exc_display_second_"..groupID)
            if not uic then
                local uicSibling = find_uicomponent(core:get_ui_root(), "units_panel", "main_units_panel", "icon_list", "rm_display_" .. groupID)
                local new_uic = UIComponent(uicSibling:CopyComponent("rm_exc_display_second_"..groupID))
                local pos_x, pos_y = uicParent:Position();
                if string.find(suffix, 'rare') then
                    new_uic:MoveTo(pos_x - 156, pos_y + 10)
                else
                    new_uic:MoveTo(pos_x - 91, pos_y + 10)
                end
                uicParent:Adopt(new_uic:Address());
                local current_count = 0;
                for i, record in pairs(second_result) do
                    if (record[1] == groupID) then
                        current_count = record[2]
                    end
                end
                update_display(new_uic, rec_char, groupID, current_count)
            else
                local pos_x, pos_y = uicParent:Position();
                if string.find(suffix, 'rare') then
                    uic:MoveTo(pos_x - 156, pos_y + 10)
                else
                    uic:MoveTo(pos_x - 91, pos_y + 10)
                end
                local current_count = 0;
                for i, record in pairs(second_result) do
                    if (record[1] == groupID) then
                        current_count = record[2]
                    end
                end
                update_display(uic, rec_char, groupID, current_count)
            end
        end
    end
end

local function number_of_units(army)
    local total_count = 0;
    for unit, count in pairs(army) do
        total_count = total_count + count;
    end
    return total_count;
end

local function onExchangeOptionClicked()
    cm:remove_callback("RMTransferReval")
    cm:callback(function()
        for i = 1, 20 do
            if indexes_to_update[i] then
                update_cache(i);
                indexes_to_update[i] = false
            end
        end
        local first_army, second_army = count_armies()
        local number_of_units_first, number_of_units_second = number_of_units(first_army), number_of_units(second_army);
        local char = cm:get_character_by_cqi(RM_TRANSFERS.first);
        if not char then
            UnlockExchangeButton(number_of_units_first, number_of_units_second)
            return
        end
        local subculture_prefix = subculture_to_prefix[char:faction():subculture()];
        if not subculture_prefix then
            UnlockExchangeButton(number_of_units_first, number_of_units_second)
            return
        end
        local first_result = check_individual_army_validity(first_army, rm:get_character_by_cqi(RM_TRANSFERS.first), subculture_prefix)
        local second_result = check_individual_army_validity(second_army, rm:get_character_by_cqi(RM_TRANSFERS.second), subculture_prefix)
        addDisplayForFirstArmy(RM_TRANSFERS.first, first_result, subculture_prefix);
        addDisplayForSecondArmy(RM_TRANSFERS.second, second_result, subculture_prefix);
        local valid_armies, reason = are_armies_valid(first_result, second_result)
        if valid_armies then
            UnlockExchangeButton(number_of_units_first, number_of_units_second)
        else
            LockExchangeButton(reason, number_of_units_first, number_of_units_second)
        end
    end, 0.1, "RMTransferReval")
end
--@changed block

cm:add_first_tick_callback(function()
    core:add_listener(
        "RecruiterManagerOnExchangePanelOpened",
        "PanelOpenedCampaign",
        function(context) 
            return context.string == "unit_exchange"; 
        end,
        function(context)
            cm:callback(function() --do this on a delay so the panel has time to fully open before the script tries to read it!
                -- print_all_uicomponent_children(find_uicomponent(core:get_ui_root(), "unit_exchange"))
                RM_TRANSFERS.first = rm._UICurrentCharacter
                RM_TRANSFERS.second = find_second_army()
                --changed block
                cache_armies(RM_TRANSFERS.first, RM_TRANSFERS.second)
                local first_army, second_army = count_armies()
                local number_of_units_first, number_of_units_second = number_of_units(first_army), number_of_units(second_army);
                local char = cm:get_character_by_cqi(RM_TRANSFERS.first);
                local subculture_prefix = subculture_to_prefix[char:faction():subculture()];
                if not subculture_prefix then
                    UnlockExchangeButton(number_of_units_first, number_of_units_second)
                    return
                end
                local first_result = check_individual_army_validity(first_army, rm:get_character_by_cqi(RM_TRANSFERS.first), subculture_prefix)
                local second_result = check_individual_army_validity(second_army, rm:get_character_by_cqi(RM_TRANSFERS.second), subculture_prefix)
                addDisplayForFirstArmy(RM_TRANSFERS.first, first_result, subculture_prefix);
                addDisplayForSecondArmy(RM_TRANSFERS.second, second_result, subculture_prefix);
                local valid_armies, reason = are_armies_valid(first_result, second_result)
                if valid_armies then
                    UnlockExchangeButton(number_of_units_first, number_of_units_second)
                else
                    rm:log("locking exchange button for reason ["..reason.."] ")
                    LockExchangeButton(reason, number_of_units_first, number_of_units_second)
                end
                --@changed block
            end, 0.1)
        end,
        true
    )

    --changed block
    core:add_listener(
            "RecruiterManagerOnExchangeOptionClicked",
            "ComponentLClickUp",
            function(context)
                local result = not not string.find(context.string, "UnitCard");
                if result then
                    local substring = string.gsub(context.string, "UnitCard", "");
                    local index = tonumber(substring);
                    indexes_to_update[index] = true
                end
                return result
            end,
            function(context)
                onExchangeOptionClicked()
            end,
            true);

    core:add_listener(
            "RecruiterManagerOnExchangeAgentOptionClicked",
            "ComponentLClickUp",
            function(context)
                local result = not not string.find(context.string, "Agent");
                if result then
                    local substring = string.gsub(context.string, "Agent ", "");
                    local index = tonumber(substring);
                    indexes_to_update[index] = true
                end
                return result
            end,
            function(context)
                onExchangeOptionClicked()
            end,
            true);
    --@changed block


    core:add_listener(
        "RecruiterManagerOnExchangePanelClosed",
        "PanelClosedCampaign",
        function(context)
            return context.string == "unit_exchange"
        end,
        function(context)
            rm:log("Exchange panel closed, setting armies stale!")
            for _, cqi in pairs(RM_TRANSFERS) do
                rm:get_character_by_cqi(cqi):set_army_stale()
                core:trigger_event("RecruiterManagerGroupCountUpdated", cm:get_character_by_cqi(rm:current_character():command_queue_index()))
            end
        end,
        true
    )

end)