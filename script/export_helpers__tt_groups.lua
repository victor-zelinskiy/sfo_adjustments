cm = get_cm(); sfo = _G.sfo; rm = _G.rm;

local units = {

    --sfo bretonnia
    {"brt_crossbow", "brt_core"},
    {"brt_macemen", "brt_core"},
    {"brt_hood", "brt_special", 1},
    {"brt_tournament", "brt_rare", 1},

    --sfo beastmen
    {"bst_Khorngor", "bst_special", 1},
    {"bst_Pestigor", "bst_special", 1},
    {"bst_Slaangor", "bst_special", 1},
    {"bst_Tzaangor", "bst_special", 1},
    {"bst_dragon_ogre", "bst_rare", 2},
    {"bst_warhound", "bst_rare", 1},

    --sfo chaos
    {"chs_cultist", "chs_core"},
    {"chs_cultist_0", "chs_core"},
    {"chs_khorne_berserk", "chs_special", 1},
    {"chs_nurgle_sons", "chs_special", 1},
    {"chs_slaanesh_bless", "chs_special", 1},
    {"chs_zelot", "chs_special", 1},
    {"chs_chaos_dragon", "chs_rare", 2},

    --sfo coast
    {"cst_boarding_crew", "cst_special", 1},
    {"cst_carronade", "cst_core"},
    {"cst_pirate_merc", "cst_special", 1},
    {"cst_raiders", "cst_special", 1},

    --sfo dark elves
    {"def_dread", "def_special", 1},
    {"def_manticore_knight", "def_special", 2},

    --sfo dwarfs
    {"dwf_thunderers_1", "dwf_core"},
    {"dwf_everguard", "dwf_special", 2},
    {"dwf_daemon_slayer", "dwf_special", 2},
    {"dwf_sniper", "dwf_rare", 1},
    {"dwf_everguard_shield", "dwf_special", 2},

    --sfo empire
    {"emp_flagellants_ext", "emp_core"},
    {"emp_wolf_kin", "emp_core"},
    {"emp_carroburg", "emp_special", 1},
    {"emp_imp_guard", "emp_special", 1},
    {"emp_knights_panther", "emp_special", 1},
    {"emp_sigmar_war", "emp_special", 1},
    {"emp_ulric_sons", "emp_special", 1},
    {"emp_wolf_knight", "emp_special", 1},
    {"emp_tank_ror", "emp_rare", 2},

    --sfo greenskins
    {"grn_forest_spear", "grn_core"},
    {"cr_grn_art_spear_chukka", "grn_core"},
    {"grn_black_orc_shields", "grn_special", 1},
    {"grn_savage_big_great", "grn_special", 1},
    {"grn_black_orc_boss", "grn_rare", 1},
    {"grn_giant_squig", "grn_rare", 1},
    {"grn_savage_idol_1", "grn_rare", 1},

    --sfo high elves
    {"hef_handmaidens", "hef_special", 1},

    --sfo lizardmen
    {"lzd_skinks_red", "lzd_core"},
    {"lzd_eternity", "lzd_special", 2},

    --sfo norsca
    {"nor_whaler", "nor_special", 1},
    {"nor_whaler_fix", "nor_special", 1},
    {"chs_marauder_mutant", "nor_special", 2},
    {"wh_dlc01_chs_inf_chosen_2", "nor_special", 2},
    {"wh_main_chs_inf_chosen_0", "nor_special", 2},
    {"wh_main_chs_inf_chosen_1", "nor_special", 2},

    --sfo skaven
    {"skv_black13", "skv_special", 1},
    {"skv_redguard", "skv_special", 1},
    {"skv_rictus_stormvermin_0", "skv_special", 1},
    {"skv_rictus_stormvermin_1", "skv_special", 1},

    -- vmp vampires
    {"vmp_blood_dragon", "vmp_rare", 1},
    {"vmp_zombie_dragon", "vmp_rare", 2},
    {"vmp_black_grail", "vmp_rare", 2},

    --sfo wood elves
    {"wef_glade_striders", "wef_core"},
    {"wef_eternal_sword", "wef_special", 1},
    {"wef_wildwood_warden", "wef_special", 1},
    {"wef_warhawks", "wef_special", 1},
    {"wef_vaul", "wef_special", 1},
    {"wef_ashenhawks", "wef_special", 1},
    {"wef_wargrove", "wef_rare", 1},
    {"wef_kurnoth", "wef_special", 1},

        ---------------------------------------------------------------
        --EMPIRE
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_dlc04_emp_inf_free_company_militia_0", "emp_core"},
        {"wh_main_emp_inf_halberdiers", "emp_core"},
        {"wh_main_emp_inf_handgunners", "emp_core"},
        {"wh_main_emp_inf_spearmen_0", "emp_core"},
        {"wh_main_emp_inf_spearmen_1", "emp_core"},
        {"wh_main_emp_inf_swordsmen", "emp_core"},
        {"wh2_dlc13_emp_inf_archers_0", "emp_core"},
        {"wh_main_emp_inf_crossbowmen", "emp_core"},
        {"wh2_dlc13_emp_inf_huntsmen_0", "emp_core"},
        {"wh_dlc04_emp_inf_flagellants_0", "emp_core"},
        {"wh_main_emp_cav_pistoliers_1", "emp_core"},
        --SPECIAL
        {"wh_dlc04_emp_cav_knights_blazing_sun_0", "emp_special", 1},
        {"wh_main_emp_cav_demigryph_knights_0", "emp_special", 2},
        {"wh_main_emp_cav_demigryph_knights_1", "emp_special", 2},
        {"wh_main_emp_cav_outriders_0", "emp_special", 1},
        {"wh_main_emp_cav_outriders_1", "emp_special", 1},
        {"wh_main_emp_cav_reiksguard", "emp_special", 1},
        {"wh_main_emp_art_great_cannon", "emp_special", 1},
        {"wh_main_emp_art_mortar", "emp_special", 1},
        {"wh_main_emp_inf_greatswords", "emp_special", 1},
        {"wh_main_emp_cav_empire_knights", "emp_special", 1},
        --RARE
        {"wh_main_emp_art_helblaster_volley_gun", "emp_rare", 1},
        {"wh_main_emp_art_helstorm_rocket_battery", "emp_rare", 1},
        {"wh2_dlc13_emp_veh_war_wagon_0", "emp_rare", 1},
        {"wh2_dlc13_emp_veh_war_wagon_1", "emp_rare", 1},
        {"wh2_dlc13_emp_veh_war_wagon_ror_0", "emp_rare", 1},
        {"wh_main_emp_veh_luminark_of_hysh_0", "emp_rare", 2},
        {"wh_main_emp_veh_steam_tank", "emp_rare", 2},

        -------ROR-------
        --SPECIAL
        {"wh_dlc04_emp_inf_tattersouls_0", "emp_special", 1},
        {"wh2_dlc13_emp_inf_archers_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_inf_huntsmen_ror_0", "emp_special", 1},
        {"wh_dlc04_emp_inf_sigmars_sons_0", "emp_special", 1},
        {"wh_dlc04_emp_inf_stirlands_revenge_0", "emp_special", 1},
        {"wh_dlc04_emp_inf_silver_bullets_0", "emp_special", 1},
        {"wh_dlc04_emp_cav_zintlers_reiksguard_0", "emp_special", 1},
        {"wh_dlc04_emp_cav_royal_altdorf_gryphites_0", "emp_special", 2},
        {"wh_dlc04_emp_art_hammer_of_the_witches_0", "emp_special", 1},
        --RARE
        {"wh_dlc04_emp_art_sunmaker_0", "emp_rare", 1},
        {"wh_dlc04_emp_veh_templehof_luminark_0", "emp_rare", 2},


        -------ELECTOR COUNTSHIP-------
        --SPECIAL
        {"wh2_dlc13_emp_cav_pistoliers_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_inf_handgunners_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_inf_swordsmen_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_inf_halberdiers_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_cav_empire_knights_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_cav_empire_knights_ror_2", "emp_special", 1},
        {"wh2_dlc13_emp_inf_greatswords_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_inf_spearmen_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_inf_crossbowmen_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_cav_empire_knights_ror_1", "emp_special", 1},
        {"wh2_dlc13_emp_art_mortar_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_cav_outriders_ror_0", "emp_special", 1},
        {"wh2_dlc13_emp_veh_steam_tank_ror_0", "emp_special", 1},

        -------MARKUS WULFHART IMPERIAL SUPPLY-------
        --CORE
        {"wh2_dlc13_emp_inf_halberdiers_imperial_supply", "emp_core"},
        {"wh2_dlc13_emp_inf_handgunners_imperial_supply", "emp_core"},
        {"wh2_dlc13_emp_cav_pistoliers_1_imperial_supply", "emp_core"},
        {"wh2_dlc13_emp_inf_huntsmen_0_imperial_supply", "emp_core"},
        --SPECIAL
        {"wh2_dlc13_emp_cav_demigryph_knights_0_imperial_supply", "emp_special", 2},
        {"wh2_dlc13_emp_cav_demigryph_knights_1_imperial_supply", "emp_special", 2},
        {"wh2_dlc13_emp_art_great_cannon_imperial_supply", "emp_special", 1},
        {"wh2_dlc13_emp_cav_knights_blazing_sun_0_imperial_supply", "emp_special", 1},
        {"wh2_dlc13_emp_cav_outriders_1_imperial_supply", "emp_special", 1},
        {"wh2_dlc13_emp_cav_reiksguard_imperial_supply", "emp_special", 1},
        {"wh2_dlc13_emp_inf_greatswords_imperial_supply", "emp_special", 1},
        {"wh2_dlc13_emp_cav_empire_knights_imperial_supply", "emp_special", 1},
        --RARE
        {"wh2_dlc13_emp_art_helblaster_volley_gun_imperial_supply", "emp_rare", 1},
        {"wh2_dlc13_emp_art_helstorm_rocket_battery_imperial_supply","emp_rare", 1},
        {"wh2_dlc13_emp_veh_luminark_of_hysh_0_imperial_supply", "emp_rare", 2},
        {"wh2_dlc13_emp_veh_steam_tank_imperial_supply", "emp_rare", 2},
        {"wh2_dlc13_emp_veh_war_wagon_0_imperial_supply", "emp_rare", 1},
        {"wh2_dlc13_emp_veh_war_wagon_1_imperial_supply", "emp_rare", 1},
        {"wh2_dlc13_huntmarshall_veh_obsinite_gyrocopter_0_mercenary", "emp_rare", 1},

        ---------------------------------------------------------------
        --DWARFS
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_main_dwf_inf_dwarf_warrior_0", "dwf_core"},
        {"wh_main_dwf_inf_dwarf_warrior_1", "dwf_core"},
        {"wh_main_dwf_inf_miners_0", "dwf_core"},
        {"wh_main_dwf_inf_miners_1", "dwf_core"},
        {"wh_main_dwf_inf_quarrellers_0", "dwf_core"},
        {"wh_main_dwf_inf_quarrellers_1", "dwf_core"},
        {"wh_main_dwf_inf_thunderers_0", "dwf_core"},
        {"wh_dlc06_dwf_art_bolt_thrower_0", "dwf_core"},
        {"wh_dlc06_dwf_inf_rangers_0", "dwf_core"},
        {"wh_dlc06_dwf_inf_rangers_1", "dwf_core"},
        --SPECIAL
        {"wh_dlc06_dwf_inf_bugmans_rangers_0", "dwf_special", 1},
        {"wh_main_dwf_art_cannon", "dwf_special", 1},
        {"wh_main_dwf_art_grudge_thrower", "dwf_special", 1},
        {"wh_main_dwf_inf_hammerers", "dwf_special", 2},
        {"wh_main_dwf_inf_ironbreakers", "dwf_special", 2},
        {"wh_main_dwf_veh_gyrobomber", "dwf_special", 1},
        {"wh_main_dwf_veh_gyrocopter_0", "dwf_special", 1},
        {"wh_main_dwf_veh_gyrocopter_1", "dwf_special", 1},
        {"wh_main_dwf_inf_slayers", "dwf_special", 1},
        {"wh2_dlc10_dwf_inf_giant_slayers", "dwf_special", 1},
        {"wh_main_dwf_inf_longbeards", "dwf_special", 1},
        {"wh_main_dwf_inf_longbeards_1", "dwf_special", 1},
        --RARE
        {"wh_main_dwf_art_flame_cannon", "dwf_rare", 1},
        {"wh_main_dwf_art_organ_gun", "dwf_rare", 1},
        {"wh_main_dwf_inf_irondrakes_0", "dwf_rare", 1},
        {"wh_main_dwf_inf_irondrakes_2", "dwf_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh_dlc06_dwf_inf_ekrund_miners_0", "dwf_special", 1},
        {"wh_dlc06_dwf_inf_warriors_dragonfire_pass_0", "dwf_special", 1},
        {"wh_dlc06_dwf_inf_dragonback_slayers_0", "dwf_special", 2},
        {"wh_dlc06_dwf_inf_old_grumblers_0", "dwf_special", 1},
        {"wh_dlc06_dwf_inf_peak_gate_guard_0", "dwf_special", 2},
        {"wh_dlc06_dwf_inf_norgrimlings_ironbreakers_0", "dwf_special", 2},
        {"wh_dlc06_dwf_inf_ulthars_raiders_0", "dwf_special", 1},
        {"wh_dlc06_dwf_veh_skyhammer_0", "dwf_special", 1},
        {"wh_dlc06_dwf_art_gob_lobber_0", "dwf_special", 1},
        --RARE
        {"wh_dlc06_dwf_inf_norgrimlings_irondrakes_0", "dwf_rare", 1},


        ---------------------------------------------------------------
        --VAMPIRE COUNTS
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_main_vmp_inf_crypt_ghouls", "vmp_core"},
        {"wh_main_vmp_inf_skeleton_warriors_0", "vmp_core"},
        {"wh_main_vmp_inf_skeleton_warriors_1", "vmp_core"},
        {"wh_main_vmp_inf_zombie", "vmp_core"},
        {"wh_main_vmp_mon_fell_bats", "vmp_core"},
        {"wh_main_vmp_mon_dire_wolves", "vmp_core"},
        --SPECIAL
        {"wh_dlc04_vmp_veh_corpse_cart_0", "vmp_special", 1},
        {"wh_dlc04_vmp_veh_corpse_cart_1", "vmp_special", 1},
        {"wh_dlc04_vmp_veh_corpse_cart_2", "vmp_special", 1},
        {"wh_main_vmp_cav_hexwraiths", "vmp_special", 1},
        {"wh_main_vmp_inf_grave_guard_0", "vmp_special", 1},
        {"wh_main_vmp_inf_grave_guard_1", "vmp_special", 1},
        {"wh_main_vmp_mon_crypt_horrors", "vmp_special", 1},
        {"wh_main_vmp_cav_black_knights_0", "vmp_special", 1},
        {"wh_main_vmp_cav_black_knights_3", "vmp_special", 1},
        {"wh_main_vmp_mon_vargheists", "vmp_special", 1},
        {"wh_main_vmp_inf_cairn_wraiths", "vmp_special", 1},
        --RARE
        {"wh_dlc02_vmp_cav_blood_knights_0", "vmp_rare", 2},
        {"wh_dlc04_vmp_veh_mortis_engine_0", "vmp_rare", 2},
        {"wh_main_vmp_mon_terrorgheist", "vmp_rare", 1},
        {"wh_main_vmp_mon_varghulf", "vmp_rare", 1},
        {"wh_main_vmp_veh_black_coach", "vmp_rare", 1},

        -------BLOODLINE REWARDS-------
        --SPECIAL
        {"wh2_dlc11_vmp_inf_crossbowmen", "vmp_special", 1},
        --RARE
        {"wh2_dlc11_vmp_inf_handgunners", "vmp_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh_dlc04_vmp_inf_tithe_0", "vmp_special", 1},
        {"wh_dlc04_vmp_inf_konigstein_stalkers_0", "vmp_special", 1},
        {"wh_dlc04_vmp_inf_feasters_in_the_dusk_0", "vmp_special", 1},
        {"wh_dlc04_vmp_inf_sternsmen_0", "vmp_special", 1},
        {"wh_dlc04_vmp_cav_vereks_reavers_0", "vmp_special", 1},
        {"wh_dlc04_vmp_cav_chillgheists_0", "vmp_special", 2},
        {"wh_dlc04_vmp_mon_direpack_0", "vmp_special", 1},
        {"wh_dlc04_vmp_mon_devils_swartzhafen_0", "vmp_special", 1},
        --RARE
        {"wh_dlc04_vmp_veh_claw_of_nagash_0", "vmp_rare", 2},

        ---------------------------------------------------------------
        --BRETONNIA
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_dlc07_brt_cav_knights_errant_0", "brt_core"},
        {"wh_dlc07_brt_inf_men_at_arms_1", "brt_core"},
        {"wh_dlc07_brt_inf_men_at_arms_2", "brt_core"},
        {"wh_dlc07_brt_inf_peasant_bowmen_1", "brt_core"},
        {"wh_dlc07_brt_inf_peasant_bowmen_2", "brt_core"},
        {"wh_dlc07_brt_inf_spearmen_at_arms_1", "brt_core"},
        {"wh_dlc07_brt_peasant_mob_0", "brt_core"},
        {"wh_main_brt_cav_mounted_yeomen_0", "brt_core"},
        {"wh_main_brt_cav_mounted_yeomen_1", "brt_core"},
        {"wh_main_brt_inf_men_at_arms", "brt_core"},
        {"wh_main_brt_inf_peasant_bowmen", "brt_core"},
        {"wh_main_brt_inf_spearmen_at_arms", "brt_core"},
        --SPECIAL
        {"wh_main_brt_cav_knights_of_the_realm", "brt_special", 1},
        {"wh_dlc07_brt_cav_questing_knights_0", "brt_special", 1},
        {"wh_dlc07_brt_inf_battle_pilgrims_0", "brt_special", 1},
        {"wh_dlc07_brt_inf_foot_squires_0", "brt_special", 1},
        {"wh_dlc07_brt_inf_grail_reliquae_0", "brt_special", 1},
        {"wh_main_brt_art_field_trebuchet", "brt_special", 1},
        {"wh_main_brt_cav_pegasus_knights", "brt_special", 1},
        --RARE
        {"wh_dlc07_brt_art_blessed_field_trebuchet_0", "brt_rare", 1},
        {"wh_dlc07_brt_cav_grail_guardians_0", "brt_rare", 1},
        {"wh_dlc07_brt_cav_royal_hippogryph_knights_0", "brt_rare", 1},
        {"wh_dlc07_brt_cav_royal_pegasus_knights_0", "brt_rare", 1},
        {"wh_main_brt_cav_grail_knights", "brt_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh_pro04_brt_inf_battle_pilgrims_ror_0", "brt_special", 1},
        {"wh_pro04_brt_inf_foot_squires_ror_0", "brt_special", 1},
        {"wh_pro04_brt_cav_knights_errant_ror_0", "brt_special", 1},
        {"wh_pro04_brt_cav_knights_of_the_realm_ror_0", "brt_rare", 1},
        {"wh_pro04_brt_cav_questing_knights_ror_0", "brt_special", 1},
        {"wh_pro04_brt_cav_mounted_yeomen_ror_0", "brt_special", 1},

        ---------------------------------------------------------------
        --GREENSKINS
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_main_grn_cav_forest_goblin_spider_riders_0", "grn_core"},
        {"wh_main_grn_cav_forest_goblin_spider_riders_1", "grn_core"},
        {"wh_main_grn_cav_goblin_wolf_riders_0", "grn_core"},
        {"wh_main_grn_cav_goblin_wolf_riders_1", "grn_core"},
        {"wh_main_grn_inf_goblin_archers", "grn_core"},
        {"wh_main_grn_inf_goblin_spearmen", "grn_core"},
        {"wh_main_grn_inf_night_goblin_archers", "grn_core"},
        {"wh_main_grn_inf_night_goblin_fanatics", "grn_core"},
        {"wh_main_grn_inf_night_goblin_fanatics_1", "grn_core"},
        {"wh_main_grn_inf_night_goblins", "grn_core"},
        {"wh_main_grn_inf_orc_arrer_boyz", "grn_core"},
        {"wh_main_grn_inf_orc_boyz", "grn_core"},
        {"wh_main_grn_inf_savage_orc_arrer_boyz", "grn_core"},
        {"wh_main_grn_inf_savage_orcs", "grn_core"},
        {"wh2_dlc15_grn_cav_forest_goblin_spider_riders_waaagh_0", "grn_core"},
        {"wh2_dlc15_grn_veh_snotling_pump_wagon_0", "grn_core"},
        {"wh2_dlc15_grn_veh_snotling_pump_wagon_flappas_0", "grn_core"},
        --SPECIAL
        {"wh_main_grn_inf_orc_big_uns", "grn_special", 1},
        {"wh_main_grn_inf_savage_orc_big_uns", "grn_special", 1},
        {"wh_dlc06_grn_inf_nasty_skulkers_0", "grn_special", 1},
        {"wh_main_grn_cav_goblin_wolf_chariot", "grn_special", 1},
        {"wh_main_grn_cav_orc_boar_boy_big_uns", "grn_special", 1},
        {"wh_main_grn_cav_orc_boar_boyz", "grn_special", 1},
        {"wh_main_grn_cav_orc_boar_chariot", "grn_special", 1},
        {"wh_main_grn_cav_savage_orc_boar_boy_big_uns", "grn_special", 1},
        {"wh_main_grn_cav_savage_orc_boar_boyz", "grn_special", 1},
        {"wh_main_grn_inf_black_orcs", "grn_special", 1},
        {"wh_dlc06_grn_cav_squig_hoppers_0", "grn_special", 1},
        {"wh_dlc06_grn_inf_squig_herd_0", "grn_special", 1},
        {"wh_main_grn_mon_trolls", "grn_special", 1},
        {"wh2_dlc15_grn_cav_squig_hoppers_waaagh_0", "grn_special", 1},
        {"wh2_dlc15_grn_mon_river_trolls_0", "grn_special", 1},
        {"wh2_dlc15_grn_mon_stone_trolls_0", "grn_special", 1},
        {"wh2_dlc15_grn_veh_snotling_pump_wagon_roller_0", "grn_special", 1},
        --RARE
        {"wh_main_grn_art_doom_diver_catapult", "grn_rare", 1},
        {"wh_main_grn_art_goblin_rock_lobber", "grn_rare", 1},
        {"wh_main_grn_mon_arachnarok_spider_0", "grn_rare", 2},
        {"wh_main_grn_mon_giant", "grn_rare", 1},
        {"wh2_dlc15_grn_mon_feral_hydra_waaagh_0", "grn_rare", 1},
        {"wh2_dlc15_grn_mon_rogue_idol_0", "grn_rare", 1},
        {"wh2_dlc15_grn_mon_wyvern_waaagh_0", "grn_rare", 1},
        {"wh_dlc15_grn_mon_arachnarok_spider_waaagh_0", "grn_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh_dlc06_grn_inf_da_warlords_boyz_0", "grn_special", 1},
        {"wh_dlc06_grn_inf_da_eight_peaks_loonies_0", "grn_special", 1},
        {"wh_dlc06_grn_inf_krimson_killerz_0", "grn_special", 1},
        {"wh_dlc06_grn_inf_da_rusty_arrers_0", "grn_special", 1},
        {"wh_dlc06_grn_cav_moon_howlers_0", "grn_special", 1},
        {"wh_dlc06_grn_cav_durkits_squigs_0", "grn_special", 1},
        {"wh_dlc06_grn_cav_broken_tusks_mob_0", "grn_special", 1},
        {"wh_dlc06_grn_cav_mogrubbs_marauders_0", "grn_special", 1},
        {"wh_dlc06_grn_cav_deff_creepers_0", "grn_special", 1},
        {"wh_dlc06_grn_cav_teef_robbers_0", "grn_special", 1},
        {"wh2_dlc15_grn_mon_river_trolls_ror_0", "grn_special", 1},
        {"wh2_dlc15_grn_veh_snotling_pump_wagon_ror_0", "grn_special", 1},
        --RARE
        {"wh_dlc06_grn_mon_venom_queen_0", "grn_rare", 2},
        {"wh_dlc06_grn_art_hammer_of_gork_0", "grn_rare", 1},
        {"wh2_dlc15_grn_mon_rogue_idol_ror_0", "grn_rare", 1},

        ---------------------------------------------------------------
        --WARRIORS OF CHAOS
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_main_chs_mon_chaos_warhounds_0", "chs_core"},
        {"wh_main_chs_mon_chaos_warhounds_1", "chs_core"},
        {"wh_dlc06_chs_cav_marauder_horsemasters_0", "chs_core"},
        {"wh_main_chs_cav_marauder_horsemen_0", "chs_core"},
        {"wh_main_chs_cav_marauder_horsemen_1", "chs_core"},
        {"wh_dlc01_chs_inf_forsaken_0", "chs_core"},
        {"wh_main_chs_inf_chaos_marauders_0", "chs_core"},
        {"wh_main_chs_inf_chaos_marauders_1", "chs_core"},
        {"wh_main_chs_cav_chaos_chariot", "chs_core"},
        --SPECIAL
        {"wh_dlc01_chs_inf_chaos_warriors_2", "chs_special", 1},
        {"wh_main_chs_inf_chaos_warriors_0", "chs_special", 1},
        {"wh_main_chs_inf_chaos_warriors_1", "chs_special", 1},
        {"wh_dlc01_chs_mon_dragon_ogre", "chs_special", 2},
        {"wh_dlc01_chs_mon_trolls_1", "chs_special", 1},
        {"wh_main_chs_mon_trolls", "chs_special", 1},
        {"wh_dlc06_chs_feral_manticore", "chs_special", 1},
        {"wh_main_chs_cav_chaos_knights_0", "chs_special", 1},
        {"wh_main_chs_cav_chaos_knights_1", "chs_special", 1},
        {"wh_dlc01_chs_cav_gorebeast_chariot", "chs_special", 1},
        {"wh_main_chs_mon_chaos_spawn", "chs_special", 1},
        --RARE
        {"wh_main_chs_art_hellcannon", "chs_rare", 1},
        {"wh_dlc01_chs_mon_dragon_ogre_shaggoth", "chs_rare", 1},
        {"wh_main_chs_mon_giant", "chs_rare", 1},
        {"wh_dlc01_chs_inf_chosen_2", "chs_rare", 1},
        {"wh_dlc06_chs_inf_aspiring_champions_0", "chs_rare", 1},
        {"wh_main_chs_inf_chosen_0", "chs_rare", 1},
        {"wh_main_chs_inf_chosen_1", "chs_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh_pro04_chs_inf_forsaken_ror_0", "chs_special", 1},
        {"wh_pro04_chs_mon_chaos_spawn_ror_0", "chs_special", 1},
        --RARE
        {"wh_pro04_chs_art_hellcannon_ror_0", "chs_rare", 1},
        {"wh_pro04_chs_inf_chaos_warriors_ror_0", "chs_rare", 1},
        {"wh_pro04_chs_cav_chaos_knights_ror_0", "chs_rare", 1},
        {"wh_pro04_chs_mon_dragon_ogre_ror_0", "chs_rare", 2},


        ---------------------------------------------------------------
        --BEASTMEN
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_dlc03_bst_inf_chaos_warhounds_0", "bst_core"},
        {"wh_dlc03_bst_inf_chaos_warhounds_1", "bst_core"},
        {"wh_dlc03_bst_inf_ungor_raiders_0", "bst_core"},
        {"wh_dlc03_bst_inf_gor_herd_0", "bst_core"},
        {"wh_dlc03_bst_inf_gor_herd_1", "bst_core"},
        {"wh_dlc03_bst_inf_ungor_herd_1", "bst_core"},
        {"wh_dlc03_bst_inf_ungor_spearmen_0", "bst_core"},
        {"wh_dlc03_bst_inf_ungor_spearmen_1", "bst_core"},
        {"wh_dlc05_bst_mon_harpies_0", "bst_core"},
        --SPECIAL
        {"wh_dlc03_bst_inf_minotaurs_0", "bst_special", 1},
        {"wh_dlc03_bst_inf_minotaurs_1", "bst_special", 1},
        {"wh_dlc03_bst_inf_minotaurs_2", "bst_special", 2},
        {"wh_dlc03_bst_inf_razorgor_herd_0", "bst_special", 1},
        {"wh_dlc03_bst_feral_manticore", "bst_special", 1},
        {"wh_dlc03_bst_inf_bestigor_herd_0", "bst_special", 1},
        {"wh_dlc03_bst_inf_centigors_0", "bst_special", 1},
        {"wh_dlc03_bst_inf_centigors_1", "bst_special", 1},
        {"wh_dlc03_bst_inf_centigors_2", "bst_special", 1},
        {"wh_dlc03_bst_cav_razorgor_chariot_0", "bst_special", 1},
        {"wh_dlc03_bst_mon_chaos_spawn_0", "chs_special", 1},
        --RARE
        {"wh_dlc03_bst_mon_giant_0", "bst_rare", 1},
        {"wh_dlc03_bst_inf_cygor_0", "bst_rare", 2},

        -------ROR-------
        --SPECIAL
        {"wh_pro04_bst_inf_ungor_spearmen_ror_0", "bst_special", 1},
        {"wh_pro04_bst_inf_gor_herd_ror_0", "bst_special", 1},
        {"wh_pro04_bst_inf_bestigor_herd_ror_0", "bst_special", 1},
        {"wh_pro04_bst_inf_centigors_ror_0", "bst_special", 2},
        {"wh_pro04_bst_inf_minotaurs_ror_0", "bst_special", 2},
        {"wh_pro04_bst_inf_cygor_ror_0", "bst_rare", 2},

        ---------------------------------------------------------------
        --WOOD ELVES
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_dlc05_wef_inf_glade_guard_0", "wef_core"},
        {"wh_dlc05_wef_inf_glade_guard_1", "wef_core"},
        {"wh_dlc05_wef_inf_glade_guard_2", "wef_core"},
        {"wh_dlc05_wef_cav_glade_riders_0", "wef_core"},
        {"wh_dlc05_wef_cav_glade_riders_1", "wef_core"},
        {"wh_dlc05_wef_inf_dryads_0", "wef_core"},
        {"wh_dlc05_wef_inf_eternal_guard_0", "wef_core"},
        {"wh_dlc05_wef_inf_eternal_guard_1", "wef_core"},
        --SPECIAL
        {"wh_dlc05_wef_inf_deepwood_scouts_0", "wef_special", 1},
        {"wh_dlc05_wef_inf_deepwood_scouts_1", "wef_special", 1},
        {"wh_dlc05_wef_mon_treekin_0", "wef_special", 1}, --ORION AMBER
        {"wh_dlc05_wef_cav_hawk_riders_0", "wef_special", 1}, --ORION AMBER
        {"wh_dlc05_wef_inf_wardancers_0", "wef_special", 1}, --DURTHU AMBER
        {"wh_dlc05_wef_inf_wardancers_1", "wef_special", 1}, --DURTHU AMBER
        {"wh_dlc05_wef_inf_wildwood_rangers_0", "wef_special", 1}, --DURTHU AMBER
        {"wh_dlc05_wef_cav_wild_riders_0", "wef_special", 2},
        {"wh_dlc05_wef_cav_wild_riders_1", "wef_special", 2},
        {"wh_dlc05_wef_cav_sisters_thorn_0", "wef_special", 1}, --DURTHU AMBER
        --RARE
        {"wh_dlc05_wef_forest_dragon_0", "wef_rare", 2}, --ORION AMBER
        {"wh_dlc05_wef_mon_great_eagle_0", "wef_rare", 1}, --ORION AMBER
        {"wh_dlc05_wef_mon_treeman_0", "wef_rare", 2}, --ORION AMBER
        {"wh_dlc05_wef_inf_waywatchers_0", "wef_rare", 1}, --DURTHU AMBER
        -------ROR-------
        --SPECIAL
        {"wh_pro04_wef_inf_eternal_guard_ror_0", "wef_special", 1},
        {"wh_pro04_wef_inf_wildwood_rangers_ror_0", "wef_special", 1},
        {"wh_pro04_wef_inf_wardancers_ror_0", "wef_special", 1},
        {"wh_pro04_wef_inf_waywatchers_ror_0", "wef_rare", 1},
        {"wh_pro04_wef_cav_wild_riders_ror_0", "wef_special", 2},
        {"wh_pro04_wef_mon_treekin_ror_0", "wef_special", 1},


        ---------------------------------------------------------------
        --NORSCA
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh_main_nor_mon_chaos_warhounds_0", "nor_core"},
        {"wh_main_nor_mon_chaos_warhounds_1", "nor_core"},
        {"wh_dlc08_nor_inf_marauder_hunters_0", "nor_core"},
        {"wh_dlc08_nor_inf_marauder_hunters_1", "nor_core"},
        {"wh_dlc08_nor_cav_marauder_horsemasters_0", "nor_core"},
        {"wh_main_nor_cav_marauder_horsemen_1", "nor_core"},
        {"wh_main_nor_inf_chaos_marauders_0", "nor_core"},
        {"wh_main_nor_inf_chaos_marauders_1", "nor_core"},
        {"wh_main_nor_cav_marauder_horsemen_0", "nor_core"},
        {"wh_main_nor_cav_chaos_chariot", "nor_core"},
        {"wh_dlc08_nor_inf_marauder_spearman_0", "nor_core"},
        --SPECIAL
        {"wh_dlc08_nor_mon_warwolves_0", "nor_special", 1},
        {"wh_dlc08_nor_mon_norscan_ice_trolls_0", "nor_special", 1},
        {"wh_main_nor_mon_chaos_trolls", "nor_special", 1},
        {"wh_dlc08_nor_feral_manticore", "nor_special", 1},
        {"wh_dlc08_nor_inf_marauder_berserkers_0", "nor_special", 1},
        {"wh_dlc08_nor_inf_marauder_champions_0", "nor_special", 1},
        {"wh_dlc08_nor_inf_marauder_champions_0_fix", "nor_special", 1},
        {"wh_dlc08_nor_inf_marauder_champions_1", "nor_special", 1},
        {"wh_dlc08_nor_inf_marauder_champions_1_fix", "nor_special", 1},
        {"wh_dlc08_nor_mon_skinwolves_0", "nor_special", 1},
        {"wh_dlc08_nor_mon_skinwolves_1", "nor_special", 1},
        {"wh_dlc08_nor_veh_marauder_warwolves_chariot_0", "nor_special", 1},
        --RARE
        {"wh_dlc08_nor_mon_fimir_0", "nor_rare", 1},
        {"wh_dlc08_nor_mon_fimir_1", "nor_rare", 1},
        {"wh_dlc08_nor_mon_frost_wyrm_0", "nor_rare", 2},
        {"wh_dlc08_nor_mon_norscan_giant_0", "nor_rare", 1},
        {"wh_dlc08_nor_mon_war_mammoth_0", "nor_rare", 1},
        {"wh_dlc08_nor_mon_war_mammoth_1", "nor_rare", 2},
        {"wh_dlc08_nor_mon_war_mammoth_1_fix", "nor_rare", 2},
        {"wh_dlc08_nor_mon_war_mammoth_2", "nor_rare", 2},
        {"wh_dlc08_nor_mon_war_mammoth_2_fix", "nor_rare", 2},

        ------- MONSTER HUNTS / GOD ALLEGIANCE REWARDS-------
        --RARE
        {"wh_dlc08_nor_mon_frost_wyrm_ror_0", "nor_rare", 2},
        {"wh_dlc08_nor_mon_war_mammoth_ror_1", "nor_rare", 1},
        {"wh_dlc08_nor_art_hellcannon_battery", "nor_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh_pro04_nor_inf_chaos_marauders_ror_0", "nor_special", 1},
        {"wh_pro04_nor_inf_marauder_berserkers_ror_0", "nor_special", 1},
        {"wh_pro04_nor_mon_marauder_warwolves_ror_0", "nor_special", 1},
        {"wh_pro04_nor_mon_skinwolves_ror_0", "nor_special", 1},
        --RARE
        {"wh_pro04_nor_mon_fimir_ror_0", "nor_rare", 1},
        {"wh_pro04_nor_mon_war_mammoth_ror_0", "nor_rare", 2},

        ---------------------------------------------------------------
        --LIZARDMEN
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh2_main_lzd_inf_skink_cohort_1", "lzd_core"},
        {"wh2_main_lzd_inf_skink_skirmishers_0", "lzd_core"},
        {"wh2_main_lzd_inf_skink_cohort_0", "lzd_core"},
        {"wh2_main_lzd_cav_cold_ones_feral_0", "lzd_core"},
        {"wh2_dlc12_lzd_inf_skink_red_crested_0", "lzd_core"},
        {"wh2_main_lzd_inf_chameleon_skinks_0", "lzd_core"},
        {"wh2_main_lzd_mon_bastiladon_0", "lzd_core"},
        {"wh2_main_lzd_mon_stegadon_0", "lzd_core"},
        --SPECIAL
        {"wh2_main_lzd_inf_saurus_spearmen_0", "lzd_special", 1},
        {"wh2_main_lzd_inf_saurus_spearmen_1", "lzd_special", 1},
        {"wh2_main_lzd_inf_saurus_warriors_0", "lzd_special", 1},
        {"wh2_main_lzd_inf_saurus_warriors_1", "lzd_special", 1},
        {"wh2_main_lzd_mon_kroxigors", "lzd_special", 1},
        {"wh2_main_lzd_cav_terradon_riders_0", "lzd_special", 1},
        {"wh2_main_lzd_cav_terradon_riders_1", "lzd_special", 1},
        {"wh2_main_lzd_mon_bastiladon_1", "lzd_special", 1},
        {"wh2_main_lzd_mon_bastiladon_2", "lzd_special", 1},
        {"wh2_main_lzd_mon_stegadon_1", "lzd_special", 1},
        {"wh2_main_lzd_inf_temple_guards", "lzd_special", 1},
        {"wh2_main_lzd_cav_cold_one_spearmen_1", "lzd_special", 1},
        {"wh2_main_lzd_cav_cold_ones_1", "lzd_special", 1},
        {"wh2_main_lzd_cav_horned_ones_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_mon_salamander_pack_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_mon_bastiladon_3", "lzd_special", 1},
        {"wh2_dlc12_lzd_cav_ripperdactyl_riders_0", "lzd_special", 1},
        {"wh2_dlc13_lzd_mon_razordon_pack_0", "lzd_special", 1},
        {"wh2_dlc13_lzd_mon_sacred_kroxigors_0", "lzd_special", 1},
        --RARE
        {"wh2_main_lzd_mon_ancient_stegadon", "lzd_rare", 2},
        {"wh2_main_lzd_mon_carnosaur_0", "lzd_rare", 1},
        {"wh2_dlc12_lzd_mon_ancient_salamander_0", "lzd_rare", 1},
        {"wh2_dlc12_lzd_mon_ancient_stegadon_1", "lzd_rare", 2},
        {"wh2_dlc13_lzd_mon_dread_saurian_0", "lzd_rare", 2},
        {"wh2_dlc13_lzd_mon_dread_saurian_1", "lzd_rare", 2},

        -------BLESSED-------
        --CORE
        {"wh2_main_lzd_inf_skink_skirmishers_blessed_0", "lzd_core"},
        {"wh2_main_lzd_inf_chameleon_skinks_blessed_0", "lzd_core"},
        --SPECIAL
        {"wh2_main_lzd_inf_saurus_spearmen_blessed_1", "lzd_special", 1},
        {"wh2_main_lzd_inf_saurus_warriors_blessed_1", "lzd_special", 1},
        {"wh2_main_lzd_mon_kroxigors_blessed", "lzd_special", 1},
        {"wh2_main_lzd_cav_terradon_riders_blessed_1", "lzd_special", 1},
        {"wh2_main_lzd_mon_bastiladon_blessed_2", "lzd_special", 1},
        {"wh2_main_lzd_mon_stegadon_blessed_1", "lzd_special", 1},
        {"wh2_main_lzd_inf_temple_guards_blessed", "lzd_special", 1},
        {"wh2_main_lzd_cav_cold_one_spearriders_blessed_0", "lzd_special", 1},
        {"wh2_main_lzd_cav_horned_ones_blessed_0", "lzd_special", 1},
        --RARE
        {"wh2_main_lzd_mon_carnosaur_blessed_0", "lzd_rare", 1},

        -------NAKAI'S OWN-------
        --SPECIAL
        {"wh2_main_lzd_mon_kroxigors_nakai", "lzd_core"},
        {"wh2_dlc13_lzd_mon_sacred_kroxigors_0_nakai", "lzd_special", 1},
        {"wh2_dlc12_lzd_mon_bastiladon_3_nakai", "lzd_special", 1},
        {"wh2_main_lzd_inf_temple_guards_nakai", "lzd_special", 1},
        {"wh2_main_lzd_cav_horned_ones_0_nakai", "lzd_special", 2},
        --RARE
        {"wh2_dlc12_lzd_mon_ancient_stegadon_1_nakai", "lzd_rare", 2},

        -------ROR-------
        --SPECIAL
        {"wh2_dlc12_lzd_inf_skink_red_crested_ror_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_inf_saurus_warriors_ror_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_inf_temple_guards_ror_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_mon_salamander_pack_ror_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_cav_cold_one_spearriders_ror_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_cav_ripperdactyl_riders_ror_0", "lzd_special", 1},
        {"wh2_dlc12_lzd_cav_terradon_riders_ror_0", "lzd_special", 1},
        {"wh2_dlc13_lzd_mon_razordon_pack_ror_0", "lzd_special", 1},
        {"wh2_dlc13_lzd_mon_sacred_kroxigors_ror_0", "lzd_special", 1},
        --RARE
        {"wh2_dlc12_lzd_mon_ancient_stegadon_ror_0", "lzd_rare", 2},
        {"wh2_dlc13_lzd_mon_dread_saurian_ror_0", "lzd_rare", 2},


        ---------------------------------------------------------------
        --SKAVEN
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh2_main_skv_inf_clanrat_spearmen_0", "skv_core"},
        {"wh2_main_skv_inf_clanrat_spearmen_1", "skv_core"},
        {"wh2_main_skv_inf_clanrats_0", "skv_core"},
        {"wh2_main_skv_inf_clanrats_1", "skv_core"},
        {"wh2_main_skv_inf_skavenslave_spearmen_0", "skv_core"},
        {"wh2_main_skv_inf_skavenslaves_0", "skv_core"},
        {"wh2_main_skv_inf_night_runners_0", "skv_core"},
        {"wh2_main_skv_inf_night_runners_1", "skv_core"},
        {"wh2_main_skv_inf_skavenslave_slingers_0", "skv_core"},
        {"wh2_dlc14_skv_inf_warp_grinder_0", "skv_core"},
        --SPECIAL
        {"wh2_main_skv_mon_rat_ogres", "skv_special", 1},
        {"wh2_dlc14_skv_inf_eshin_triads_0", "skv_special", 1},
        {"wh2_dlc14_skv_inf_poison_wind_mortar_0", "skv_special", 1},
        {"wh2_main_skv_inf_death_runners_0", "skv_special", 1},
        {"wh2_main_skv_inf_gutter_runner_slingers_0", "skv_special", 1},
        {"wh2_main_skv_inf_gutter_runner_slingers_1", "skv_special", 1},
        {"wh2_main_skv_inf_gutter_runners_0", "skv_special", 1},
        {"wh2_main_skv_inf_gutter_runners_1", "skv_special", 1},
        {"wh2_main_skv_inf_poison_wind_globadiers", "skv_special", 1},
        {"wh2_main_skv_inf_warpfire_thrower", "skv_special", 1},
        {"wh2_main_skv_inf_plague_monk_censer_bearer", "skv_special", 1},
        {"wh2_main_skv_inf_plague_monks", "skv_special", 1},
        {"wh2_main_skv_inf_stormvermin_0", "skv_special", 1},
        {"wh2_main_skv_inf_stormvermin_1", "skv_special", 1},
        {"wh2_dlc12_skv_inf_ratling_gun_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_warplock_jezzails_0", "skv_special", 1},
        {"wh2_dlc12_skv_veh_doom_flayer_0", "skv_special", 1},
        {"wh2_main_skv_inf_death_globe_bombardiers", "skv_special", 1},
        --RARE
        {"wh2_main_skv_art_plagueclaw_catapult", "skv_rare", 1},
        {"wh2_main_skv_art_warp_lightning_cannon", "skv_rare", 1},
        {"wh2_main_skv_veh_doomwheel", "skv_rare", 1},
        {"wh2_main_skv_mon_hell_pit_abomination", "skv_rare", 1},

        -------IKIT CLAW FORBIDDEN WORKSHOP ROR-------
        --SPECIAL
        {"wh2_dlc12_skv_veh_doom_flayer_ror_tech_lab_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_warpfire_thrower_ror_tech_lab_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_ratling_gun_ror_tech_lab_0",  "skv_special", 1},
        {"wh2_dlc12_skv_art_warplock_jezzails_ror_tech_lab_0", "skv_special", 1},
        --RARE
        {"wh2_dlc12_skv_veh_doomwheel_ror_tech_lab_0", "skv_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh2_dlc14_skv_inf_eshin_triads_ror_0", "skv_special", 1},
        {"wh2_dlc14_skv_inf_poison_wind_mortar_ror_0", "skv_special", 1},
        {"wh2_dlc14_skv_inf_death_runners_ror_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_clanrats_ror_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_plague_monk_censer_bearer_ror_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_stormvermin_ror_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_ratling_gun_ror_0", "skv_special", 1},
        {"wh2_dlc12_skv_inf_warplock_jezzails_ror_0", "skv_special", 1},
        {"wh2_dlc12_skv_veh_doom_flayer_ror_0", "skv_special", 1},
        --RARE
        {"wh2_dlc12_skv_art_warp_lightning_cannon_ror_0", "skv_rare", 1},
        {"wh2_dlc12_skv_veh_doomwheel_ror_0", "skv_rare", 1},


        ---------------------------------------------------------------
        --HIGH ELVES
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh2_main_hef_inf_archers_0", "hef_core"},
        {"wh2_main_hef_inf_archers_1", "hef_core"},
        {"wh2_main_hef_inf_lothern_sea_guard_0", "hef_core"},
        {"wh2_main_hef_inf_lothern_sea_guard_1", "hef_core"},
        {"wh2_main_hef_cav_ellyrian_reavers_1", "hef_core"},
        {"wh2_main_hef_inf_spearmen_0", "hef_core"},
        {"wh2_main_hef_cav_ellyrian_reavers_0", "hef_core"},
        {"wh2_main_hef_cav_silver_helms_0", "hef_core"},
        {"wh2_main_hef_cav_silver_helms_1", "hef_core"},
        {"wh2_dlc15_hef_inf_rangers_0", "hef_core"},
        --SPECIAL
        {"wh2_dlc10_hef_inf_shadow_warriors_0", "hef_special", 1},
        {"wh2_main_hef_inf_phoenix_guard", "hef_special", 1},
        {"wh2_main_hef_inf_swordmasters_of_hoeth_0", "hef_special", 1},
        {"wh2_main_hef_inf_white_lions_of_chrace_0", "hef_special", 1},
        {"wh2_main_hef_cav_dragon_princes", "hef_special", 2},
        {"wh2_main_hef_cav_ithilmar_chariot", "hef_special", 1},
        {"wh2_main_hef_cav_tiranoc_chariot", "hef_special", 1},
        {"wh2_main_hef_inf_gate_guard", "hef_special", 1},
        {"wh2_main_hef_art_eagle_claw_bolt_thrower", "hef_special", 1},
        {"wh2_dlc15_hef_inf_silverin_guard_0", "hef_special", 1},
        {"wh2_dlc15_hef_mon_war_lions_of_chrace_0", "hef_special", 1},
        {"wh2_dlc15_hef_veh_lion_chariot_of_chrace_0", "hef_special", 1},
        --RARE
        {"wh2_main_hef_mon_great_eagle", "hef_rare", 1},
        {"wh2_main_hef_mon_moon_dragon", "hef_rare", 1},
        {"wh2_main_hef_mon_phoenix_flamespyre", "hef_rare", 1},
        {"wh2_main_hef_mon_phoenix_frostheart", "hef_rare", 1},
        {"wh2_main_hef_mon_star_dragon", "hef_rare", 2},
        {"wh2_main_hef_mon_sun_dragon", "hef_rare", 1},
        {"wh2_dlc10_hef_inf_sisters_of_avelorn_0", "hef_rare", 1},
        {"wh2_dlc15_hef_mon_arcane_phoenix_0", "hef_rare", 1},

        -------FACTION UNIQUES-------
        --CORE
        {"wh2_dlc10_hef_inf_dryads_0", "hef_core"}, --ALARIELLE
        --SPECIAL
        {"wh2_dlc10_hef_mon_treekin_0", "hef_special", 1}, --ALARIELLE
        {"wh2_dlc10_hef_inf_shadow_walkers_0", "hef_special", 1}, --ALITH ANAR
        --RARE
        {"wh2_dlc10_hef_mon_treeman_0", "hef_rare", 2}, --ALARIELLE
        {"wh2_dlc15_hef_mon_black_dragon_imrik", "hef_rare", 1}, --Imrik
        {"wh2_dlc15_hef_mon_forest_dragon_imrik", "hef_rare", 1}, --Imrik
        {"wh2_dlc15_hef_mon_moon_dragon_imrik", "hef_rare", 1}, --Imrik
        {"wh2_dlc15_hef_mon_star_dragon_imrik", "hef_rare", 1}, --Imrik
        {"wh2_dlc15_hef_mon_sun_dragon_imrik", "hef_rare", 1}, --Imrik

        -------ROR-------
        --SPECIAL
        {"wh2_dlc10_hef_inf_the_scions_of_mathlann_ror_0", "hef_special", 1},
        {"wh2_dlc10_hef_inf_the_silverpelts_ror_0", "hef_special", 1},
        {"wh2_dlc10_hef_inf_keepers_of_the_flame_ror_0", "hef_special", 1},
        {"wh2_dlc10_hef_inf_the_storm_riders_ror_0", "hef_special", 1},
        {"wh2_dlc10_hef_inf_the_grey_ror_0", "hef_special", 1},
        {"wh2_dlc10_hef_cav_the_fireborn_ror_0", "hef_special", 2},
        {"wh2_dlc10_hef_cav_the_heralds_of_the_wind_ror_0", "hef_special", 1},
        {"wh2_dlc15_hef_inf_archers_ror_0", "hef_special", 1},
        {"wh2_dlc15_hef_mon_war_lions_of_chrace_ror_0", "hef_special", 1},
        --RARE
        {"wh2_dlc10_hef_inf_everqueens_court_guards_ror_0", "hef_rare", 1},
        {"wh2_dlc15_hef_mon_arcane_phoenix_ror_0", "hef_rare", 1},

        -------MISTWALKERS-------
        --SPECIAL
        {"wh2_dlc15_hef_inf_mistwalkers_faithbearers_0", "hef_special", 1},
        {"wh2_dlc15_hef_inf_mistwalkers_sentinels_0", "hef_special", 1},
        {"wh2_dlc15_hef_inf_mistwalkers_skyhawks_0", "hef_special", 1},
        {"wh2_dlc15_hef_inf_mistwalkers_spireguard_0", "hef_special", 1},
        --RARE
        {"wh2_dlc15_hef_inf_mistwalkers_griffon_knights_0", "hef_rare", 1},

        ---------------------------------------------------------------
        --DARK ELVES
        ---------------------------------------------------------------

        -------NORMAL UNITS-------
        --CORE
        {"wh2_main_def_inf_black_ark_corsairs_0", "def_core"},
        {"wh2_main_def_inf_black_ark_corsairs_1", "def_core"},
        {"wh2_main_def_inf_darkshards_0", "def_core"},
        {"wh2_main_def_inf_darkshards_1", "def_core"},
        {"wh2_main_def_cav_dark_riders_2", "def_core"},
        {"wh2_main_def_inf_bleakswords_0", "def_core"},
        {"wh2_main_def_inf_dreadspears_0", "def_core"},
        {"wh2_main_def_cav_dark_riders_0", "def_core"},
        {"wh2_main_def_cav_dark_riders_1", "def_core"},
        {"wh2_main_def_inf_harpies", "def_core"},
        --SPECIAL
        {"wh2_dlc10_def_mon_feral_manticore_0", "def_special", 1},
        {"wh2_main_def_inf_shades_0", "def_special", 1},
        {"wh2_main_def_inf_shades_1", "def_special", 1},
        {"wh2_main_def_inf_shades_2", "def_special", 1},
        {"wh2_main_def_inf_black_guard_0", "def_special", 1},
        {"wh2_dlc10_def_cav_doomfire_warlocks_0", "def_special", 1},
        {"wh2_main_def_cav_cold_one_knights_0", "def_special", 1},
        {"wh2_main_def_cav_cold_one_knights_1", "def_special", 2},
        {"wh2_main_def_inf_har_ganeth_executioners_0", "def_special", 1},
        {"wh2_main_def_cav_cold_one_chariot", "def_special", 1},
        {"wh2_dlc14_def_cav_scourgerunner_chariot_0", "def_special", 1},
        {"wh2_main_def_art_reaper_bolt_thrower", "def_special", 1},
        {"wh2_main_def_inf_witch_elves_0", "def_special", 1},
        {"wh2_dlc10_def_inf_sisters_of_slaughter", "def_special", 1},
        --RARE
        {"wh2_dlc10_def_mon_kharibdyss_0", "def_rare", 1},
        {"wh2_main_def_mon_black_dragon", "def_rare", 2},
        {"wh2_main_def_mon_war_hydra", "def_rare", 1},
        {"wh2_dlc14_def_mon_bloodwrack_medusa_0", "def_rare", 1},
        {"wh2_dlc14_def_veh_bloodwrack_shrine_0", "def_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh2_dlc10_def_inf_the_hellebronai_ror_0", "def_special", 1},
        {"wh2_dlc10_def_inf_sisters_of_the_singing_doom_ror_0", "def_special", 1},
        {"wh2_dlc10_def_inf_blades_of_the_blood_queen_ror_0", "def_special", 1},
        {"wh2_dlc10_def_cav_slaanesh_harvesters_ror_0", "def_special", 1},
        {"wh2_dlc10_def_cav_knights_of_the_ebon_claw_ror_0", "def_special", 1},
        {"wh2_dlc10_def_cav_raven_heralds_ror_0", "def_special", 1},
        {"wh2_dlc14_def_cav_scourgerunner_chariot_ror_0", "def_special", 1},
        {"wh2_dlc14_def_inf_harpies_ror_0", "def_special", 1},
        --RARE
        {"wh2_dlc10_def_inf_the_bolt_fiends_ror_0", "def_rare", 1},
        {"wh2_dlc10_def_mon_chill_of_sontar_ror_0", "def_rare", 1},
        {"wh2_dlc14_def_mon_bloodwrack_medusa_ror_0", "def_rare", 1},


        ---------------------------------------------------------------
        --TOMB KINGS
        ---------------------------------------------------------------

        -------NORMAL UNITS------
        --CORE
        {"wh2_dlc09_tmb_inf_nehekhara_warriors_0", "tmb_core"},
        {"wh2_dlc09_tmb_inf_skeleton_archers_0", "tmb_core"},
        {"wh2_dlc09_tmb_inf_skeleton_spearmen_0", "tmb_core"},
        {"wh2_dlc09_tmb_inf_skeleton_warriors_0", "tmb_core"},
        {"wh2_dlc09_tmb_veh_skeleton_archer_chariot_0", "tmb_core"},
        {"wh2_dlc09_tmb_veh_skeleton_chariot_0", "tmb_core"},
        {"wh2_dlc09_tmb_cav_skeleton_horsemen_0", "tmb_core"},
        {"wh2_dlc09_tmb_cav_skeleton_horsemen_archers_0", "tmb_core"},
        --SPECIAL
        {"wh2_dlc09_tmb_inf_tomb_guard_0", "tmb_special", 1},
        {"wh2_dlc09_tmb_inf_tomb_guard_1", "tmb_special", 1},
        {"wh2_dlc09_tmb_mon_carrion_0", "tmb_special", 1},
        {"wh2_dlc09_tmb_mon_sepulchral_stalkers_0", "tmb_special", 1},
        {"wh2_dlc09_tmb_mon_ushabti_0", "tmb_special", 1},
        {"wh2_dlc09_tmb_mon_ushabti_1", "tmb_special", 1},
        {"wh2_dlc09_tmb_cav_necropolis_knights_0", "tmb_special", 1},
        {"wh2_dlc09_tmb_cav_necropolis_knights_1", "tmb_special", 1},
        {"wh2_dlc09_tmb_cav_nehekhara_horsemen_0", "tmb_special", 1},
        --RARE
        {"wh2_dlc09_tmb_veh_khemrian_warsphinx_0", "tmb_rare", 2},
        {"wh2_dlc09_tmb_mon_tomb_scorpion_0", "tmb_rare", 1},
        {"wh2_dlc09_tmb_mon_heirotitan_0", "tmb_rare", 2},
        {"wh2_dlc09_tmb_mon_necrosphinx_0", "tmb_rare", 2},
        {"wh2_dlc09_tmb_art_casket_of_souls_0", "tmb_rare", 1},
        {"wh2_dlc09_tmb_art_screaming_skull_catapult_0", "tmb_rare", 1},
        {"wh2_pro06_tmb_mon_bone_giant_0", "tmb_rare", 1},

        -------ARKHAN UNDEAD-------
        --CORE
        {"wh2_dlc09_tmb_mon_dire_wolves", "tmb_core"},
        {"wh2_dlc09_tmb_mon_fell_bats", "tmb_core"},
        {"wh2_dlc09_tmb_inf_crypt_ghouls", "tmb_core"},
        --SPECIAL
        {"wh2_dlc09_tmb_cav_hexwraiths", "tmb_special", 1},


        -------LEGIONS OF LEGEND-------
        --SPECIAL
        {"wh2_dlc09_tmb_mon_carrion_ror", "tmb_special", 1},
        {"wh2_dlc09_tmb_cav_necropolis_knights_ror", "tmb_special", 1},
        {"wh2_dlc09_tmb_cav_nehekhara_horsemen_ror", "tmb_special", 1},
        {"wh2_dlc09_tmb_inf_nehekhara_warriors_ror", "tmb_special", 1},

        -------ROR-------
        --SPECIAL
        {"wh2_dlc09_tmb_inf_skeleton_spearmen_ror", "tmb_special", 1},
        {"wh2_dlc09_tmb_inf_tomb_guard_ror", "tmb_special", 1},
        {"wh2_dlc09_tmb_inf_skeleton_archers_ror", "tmb_special", 1},
        {"wh2_dlc09_tmb_mon_ushabti_ror", "tmb_special",1},
        {"wh2_dlc09_tmb_mon_sepulchral_stalkers_ror", "tmb_special", 1},
        --RARE
        {"wh2_dlc09_tmb_mon_necrosphinx_ror", "tmb_rare", 2},



        ---------------------------------------------------------------
        --VAMPIRE COAST
        ---------------------------------------------------------------

        -------NORMAL UNITS------
        --CORE
        {"wh2_dlc11_cst_inf_sartosa_free_company_0", "cst_core"}, --ARANESSA UNIQUE
        {"wh2_dlc11_cst_inf_sartosa_militia_0", "cst_core"}, --ARANESSA UNIQUE
        {"wh2_dlc11_cst_inf_zombie_deckhands_mob_0", "cst_core"},
        {"wh2_dlc11_cst_inf_zombie_deckhands_mob_1", "cst_core"},
        {"wh2_dlc11_cst_inf_zombie_gunnery_mob_0", "cst_core"},
        {"wh2_dlc11_cst_inf_zombie_gunnery_mob_1", "cst_core"},
        {"wh2_dlc11_cst_inf_zombie_gunnery_mob_2", "cst_core"},
        {"wh2_dlc11_cst_inf_zombie_gunnery_mob_3", "cst_core"},
        {"wh2_dlc11_cst_mon_bloated_corpse_0", "cst_core"},
        {"wh2_dlc11_cst_mon_fell_bats", "cst_core"},
        {"wh2_dlc11_cst_mon_scurvy_dogs", "cst_core"},
        {"wh2_dlc11_cst_art_carronade", "cst_core"},
        {"wh2_dlc11_cst_art_mortar", "cst_core"},
        --SPECIAL
        {"wh2_dlc11_cst_cav_deck_droppers_0", "cst_special", 1},
        {"wh2_dlc11_cst_cav_deck_droppers_1", "cst_special", 1},
        {"wh2_dlc11_cst_cav_deck_droppers_2", "cst_special", 1},
        {"wh2_dlc11_cst_inf_deck_gunners_0", "cst_special", 1},
        {"wh2_dlc11_cst_inf_depth_guard_0", "cst_special", 1},
        {"wh2_dlc11_cst_inf_depth_guard_1", "cst_special", 1},
        {"wh2_dlc11_cst_inf_syreens", "cst_special", 1},
        {"wh2_dlc11_cst_mon_animated_hulks_0", "cst_special", 1},
        {"wh2_dlc11_cst_mon_rotting_prometheans_0", "cst_special", 1},
        {"wh2_dlc11_cst_mon_rotting_prometheans_gunnery_mob_0", "cst_special", 1},
        --RARE
        {"wh2_dlc11_cst_mon_mournguls_0", "cst_rare", 1},
        {"wh2_dlc11_cst_mon_necrofex_colossus_0", "cst_rare", 2},
        {"wh2_dlc11_cst_mon_rotting_leviathan_0", "cst_rare", 2},
        {"wh2_dlc11_cst_mon_terrorgheist", "cst_rare", 1},

        -------ROR-------
        --SPECIAL
        {"wh2_dlc11_cst_inf_zombie_deckhands_mob_ror_0", "cst_special", 1},
        {"wh2_dlc11_cst_inf_depth_guard_ror_0", "cst_special", 2},
        {"wh2_dlc11_cst_inf_zombie_gunnery_mob_ror_0", "cst_special", 1},
        {"wh2_dlc11_cst_inf_deck_gunners_ror_0", "cst_special", 1},
        {"wh2_dlc11_cst_cav_deck_droppers_ror_0", "cst_special", 1},
        {"wh2_dlc11_cst_mon_rotting_prometheans_gunnery_mob_ror", "cst_special", 2},
        --RARE
        {"wh2_dlc11_cst_mon_mournguls_ror_0", "cst_rare", 1},
        {"wh2_dlc11_cst_mon_necrofex_colossus_ror_0", "cst_rare", 3}


} --:vector<{string, string, number?}>

local unit_text_overrides = {
}--:map<string, RM_UIPROFILE>

local groups = {} --:map<string, boolean>
local prefix_to_subculture = {
    bst = "wh_dlc03_sc_bst_beastmen",
    wef = "wh_dlc05_sc_wef_wood_elves",
    brt = "wh_main_sc_brt_bretonnia",
    chs = "wh_main_sc_chs_chaos",
    dwf = "wh_main_sc_dwf_dwarfs",
    emp = "wh_main_sc_emp_empire",
    grn = "wh_main_sc_grn_greenskins",
    ksl = "wh_main_sc_ksl_kislev",
    nor = "wh_main_sc_nor_norsca",
    teb = "wh_main_sc_teb_teb",
    vmp = "wh_main_sc_vmp_vampire_counts",
    tmb = "wh2_dlc09_sc_tmb_tomb_kings",
    def = "wh2_main_sc_def_dark_elves",
    hef = "wh2_main_sc_hef_high_elves",
    lzd = "wh2_main_sc_lzd_lizardmen",
    skv = "wh2_main_sc_skv_skaven",
    cst = "wh2_dlc11_sc_cst_vampire_coast"
}--:map<string, string>


--changed block
local wardecs_next_divider = math.random(3, 10)
local wardecs_cur_divider
local wardecs_at_war_cache = {}
local wardecs_target_of_war_this_turn = {}

local vize_ai_faction_balance_manager_turn;
local vize_ai_faction_balance_manager_comeback_chance;
local vize_ai_faction_balance_manager_nerf_1_regions;
local vize_ai_faction_balance_manager_nerf_2_regions;


local major_factions = {
    --empire
    ["wh_main_emp_empire"] = true,
    ["wh2_dlc13_emp_golden_order"] = true,
    ["wh2_dlc13_emp_the_huntmarshals_expedition"] = true,

    --vampire
    ["wh_main_vmp_vampire_counts"] = true,
    ["wh_main_vmp_schwartzhafen"] = true,
    ["wh2_dlc11_vmp_the_barrow_legion"] = true,

    --dwarfs
    ["wh_main_dwf_dwarfs"] = true,
    ["wh_main_dwf_karak_izor"] = true,
    ["wh_main_dwf_karak_kadrin"] = true,

    --greenskins
    ["wh_main_grn_greenskins"] = true,
    ["wh_main_grn_crooked_moon"] = true,
    ["wh_main_grn_orcs_of_the_bloody_hand"] = true,
    ["wh2_dlc15_grn_broken_axe"] = true,

    --bretonnia
    ["wh_main_brt_bretonnia"] = true,
    ["wh_main_brt_bordeleaux"] = true,
    ["wh_main_brt_carcassonne"] = true,
    ["wh2_dlc14_brt_chevaliers_de_lyonesse"] = true,

    --tomb_kings
    ["wh2_dlc09_tmb_khemri"] = true,
    ["wh2_dlc09_tmb_exiles_of_nehek"] = true,
    ["wh2_dlc09_tmb_lybaras"] = true,
    ["wh2_dlc09_tmb_followers_of_nagash"] = true,

    --high_elves
    ["wh2_main_hef_avelorn"] = true,
    ["wh2_main_hef_eataine"] = true,
    ["wh2_main_hef_order_of_loremasters"] = true,
    ["wh2_main_hef_nagarythe"] = true,
    ["wh2_main_hef_yvresse"] = true,
    ["wh2_main_hef_caledor"] = true,

    --dark_elves
    ["wh2_main_def_naggarond"] = true,
    ["wh2_main_def_har_ganeth"] = true,
    ["wh2_main_def_cult_of_pleasure"] = true,
    ["wh2_dlc11_def_the_blessed_dread"] = true,
    ["wh2_main_def_hag_graef"] = true,

    --vampire_coast
    ["wh2_dlc11_cst_noctilus"] = true,
    ["wh2_dlc11_cst_pirates_of_sartosa"] = true,
    ["wh2_dlc11_cst_the_drowned"] = true,
    ["wh2_dlc11_cst_vampire_coast"] = true,

    --lizardmen
    ["wh2_main_lzd_hexoatl"] = true,
    ["wh2_main_lzd_last_defenders"] = true,
    ["wh2_main_lzd_tlaqua"] = true,
    ["wh2_dlc12_lzd_cult_of_sotek"] = true,

    --skaven
    ["wh2_main_skv_clan_mors"] = true,
    ["wh2_main_skv_clan_skyre"] = true,
    ["wh2_main_skv_clan_pestilens"] = true,
    ["wh2_dlc09_skv_clan_rictus"] = true,
    ["wh2_main_skv_clan_eshin"] = true

}

local tier_1_factions = {
    "wh2_main_def_naggarond",
    "wh_main_grn_greenskins",
    "wh_main_vmp_vampire_counts"
}

local tier_2_factions = {
    "wh2_main_def_cult_of_pleasure",
    "wh_main_vmp_schwartzhafen",
    "wh_main_sc_grn_savage_orcs",
    "wh_main_dwf_dwarfs",
    "wh_main_vmp_mousillon"
}

local tier_C_factions = {
    "wh2_main_skv_clan_skyre",
    "wh2_main_skv_clan_pestilens",
    "wh2_dlc09_skv_clan_rictus",
    "wh2_main_skv_clan_eshin",
    "wh2_dlc14_brt_chevaliers_de_lyonesse",
    "wh_main_dwf_karak_izor",
    "wh_main_dwf_karak_kadrin",
    "wh2_main_hef_eataine",
    "wh2_main_hef_nagarythe",
    "wh2_main_hef_yvresse",
    "wh2_main_hef_caledor",
    "wh2_main_lzd_last_defenders",
    "wh2_main_lzd_tlaqua",
    "wh2_dlc11_def_the_blessed_dread",
    "wh2_main_def_hag_graef",
    "wh2_dlc13_emp_golden_order",
    "wh2_dlc13_emp_the_huntmarshals_expedition",
    "_tmb_",
    "_cst_"
}

local tier_D_factions = {
    "_bst_",
    "_chs_",
    "wh2_dlc09_tmb_exiles_of_nehek",
    "wh2_dlc15_grn_broken_axe"
}
--@changed block

--v function()
local function sfo_add_unit_caps()
	for i = 1, #units do
		if units[i][3] then
			rm:set_weight_for_unit(units[i][1], units[i][3])
		end
		groups[units[i][2]] = true;
		rm:add_unit_to_group(units[i][1], units[i][2])
		local override = unit_text_overrides[units[i][1]]
        --changed block
        local points_name = "очков"
        local weight = units[i][3] --# assume weight: number
        if weight == 1 then
            points_name = "очко"
        elseif weight == 2 then
            points_name = "очка"
        end
        --@changed block
		if override then
			rm:set_ui_profile_for_unit(units[i][1], override)
		elseif string.find(units[i][2], "_core") then
			local prefix = string.gsub(units[i][2], "_core", "")
			rm:set_ui_profile_for_unit(units[i][1], {
				_text = "Это базовый отряд. \n Армии могут содержать неограниченное количество базовых отрядов.", --changed line
				_image = "ui/custom/recruitment_controls/common_units.png"
			})
		elseif string.find(units[i][2], "_special") then
			local prefix = string.gsub(units[i][2], "_special", "")
            --changed block
			rm:set_ui_profile_for_unit(units[i][1], {
				_text = "Это особый отряд стоимостью[[col:green]] "..weight.." [[/col]]" .. points_name .. " особых отрядов.", --changed line
				_image = "ui/custom/recruitment_controls/special_units_"..weight..".png"
			})
            --@changed block
		elseif string.find(units[i][2], "_rare") then
			local prefix = string.gsub(units[i][2], "_rare", "")
            --changed block
			rm:set_ui_profile_for_unit(units[i][1], {
				_text = "Это элитный отряд стоимостью[[col:green]] "..weight.." [[/col]]" .. points_name .. " элитных отрядов.",
				_image = "ui/custom/recruitment_controls/rare_units_"..weight..".png"
			})
            --@changed block
		end
	end

    --this sets up the AI
    local subculture_defaults = {
        ["wh_main_sc_emp_empire"] = {"wh_dlc04_emp_inf_free_company_militia_0", "wh_main_emp_cav_empire_knights", "wh_main_emp_inf_halberdiers", "wh_main_emp_inf_handgunners", "wh_main_emp_inf_spearmen_1", "wh_main_emp_inf_swordsmen", "wh2_dlc13_emp_inf_archers_0", "wh_main_emp_inf_crossbowmen"},
        ["wh_main_sc_dwf_dwarfs"] = {"wh_dlc06_dwf_art_bolt_thrower_0", "wh_main_dwf_inf_thunderers_0", "wh_main_dwf_inf_dwarf_warrior_0", "wh_main_dwf_inf_dwarf_warrior_1", "wh_main_dwf_inf_quarrellers_0", "wh_main_dwf_inf_miners_1"},
        ["wh_dlc03_sc_bst_beastmen"] = {"wh_dlc03_bst_inf_gor_herd_0", "wh_dlc03_bst_inf_ungor_raiders_0",  "wh_dlc03_bst_inf_ungor_spearmen_1", "wh_dlc03_bst_inf_gor_herd_0", "wh_dlc03_bst_inf_gor_herd_0"},
        ["wh_dlc05_sc_wef_wood_elves"] = {"wh_dlc05_wef_inf_eternal_guard_1", "wh_dlc05_wef_inf_glade_guard_0", "wh_dlc05_wef_inf_dryads_0"},
        ["wh_main_sc_brt_bretonnia"] = {"wh_dlc07_brt_cav_knights_errant_0", "wh_dlc07_brt_inf_men_at_arms_2", "wh_main_brt_inf_peasant_bowmen", "wh_dlc07_brt_cav_knights_errant_0"},
        ["wh_main_sc_chs_chaos"] = {"wh_dlc01_chs_inf_forsaken_0", "wh_main_chs_cav_chaos_chariot", "wh_main_chs_mon_chaos_warhounds_1", "wh_main_chs_inf_chaos_marauders_1", "wh_dlc01_chs_inf_forsaken_0"},
        ["wh_main_sc_grn_greenskins"] = {"wh_main_grn_cav_goblin_wolf_riders_0", "wh_main_grn_inf_night_goblin_archers", "wh_main_grn_inf_orc_arrer_boyz", "wh_main_grn_inf_orc_boyz"},
        ["wh_main_sc_grn_savage_orcs"] = {"wh_main_grn_inf_savage_orcs","wh_main_grn_inf_savage_orc_arrer_boyz", "wh_main_grn_inf_savage_orcs"},
        ["wh_main_sc_nor_norsca"] = {"wh_main_nor_inf_chaos_marauders_0", "wh_dlc08_nor_inf_marauder_hunters_1", "wh_main_nor_inf_chaos_marauders_0", "wh_dlc08_nor_inf_marauder_spearman_0", "wh_main_nor_cav_marauder_horsemen_0"},
        ["wh_main_sc_vmp_vampire_counts"] = {"wh_main_vmp_inf_crypt_ghouls", "wh_main_vmp_inf_skeleton_warriors_0", "wh_main_vmp_inf_skeleton_warriors_1", "wh_main_vmp_inf_zombie", "wh_main_vmp_mon_fell_bats", "wh_main_vmp_mon_dire_wolves"},
        ["wh2_dlc09_sc_tmb_tomb_kings"] = {"wh2_dlc09_tmb_inf_nehekhara_warriors_0", "wh2_dlc09_tmb_inf_skeleton_archers_0", "wh2_dlc09_tmb_veh_skeleton_archer_chariot_0", "wh2_dlc09_tmb_inf_nehekhara_warriors_0"},
        ["wh2_main_sc_def_dark_elves"] = {"wh2_main_def_inf_black_ark_corsairs_0","wh2_main_def_inf_darkshards_0", "wh2_main_def_inf_dreadspears_0"},
        ["wh2_main_sc_hef_high_elves"] = {"wh2_main_hef_inf_spearmen_0", "wh2_main_hef_inf_spearmen_0", "wh2_main_hef_inf_archers_1", "wh2_main_hef_cav_silver_helms_0", "wh2_main_hef_inf_lothern_sea_guard_1"},
        ["wh2_main_sc_lzd_lizardmen"] = {"wh2_dlc12_lzd_inf_skink_red_crested_0", "wh2_main_lzd_cav_cold_ones_feral_0", "wh2_main_lzd_inf_chameleon_skinks_0", "wh2_main_lzd_inf_skink_cohort_1"},
        ["wh2_main_sc_skv_skaven"]  = {"wh2_main_skv_inf_clanrats_1", "wh2_main_skv_inf_clanrat_spearmen_1", "wh2_main_skv_inf_night_runners_1", "wh2_main_skv_inf_skavenslave_slingers_0"},
        ["wh2_dlc11_sc_cst_vampire_coast"] = {"wh2_dlc11_cst_inf_zombie_gunnery_mob_0", "wh2_dlc11_cst_inf_zombie_gunnery_mob_0", "wh2_dlc11_cst_inf_zombie_gunnery_mob_1", "wh2_dlc11_cst_mon_bloated_corpse_0", "wh2_dlc11_cst_inf_zombie_deckhands_mob_1"}
    } --:map<string, vector<string>>

    for subculture, unit_vector in pairs(subculture_defaults) do
        rm:add_ai_units_for_subculture_with_table(subculture, unit_vector)
    end
	rm:enforce_ai_restrictions(true)

end
--v function()
function sfo_apply_cap_bundle()
    local SFO_UNIT_CAPS_EFFECT_BUNDLE = "cap_factionwide"


    local faction_list = cm:model():world():faction_list()
    for i = 0, faction_list:num_items() - 1 do
        if not faction_list:item_at(i):is_dead() then
            cm:apply_effect_bundle(SFO_UNIT_CAPS_EFFECT_BUNDLE, faction_list:item_at(i):name(), 0)
        end
    end


end

--v function()
local function caps_first_tick()
    for name, _ in pairs(groups) do
        if string.find(name, "core") then
            rm:set_ui_name_for_group(name, "базовых отрядов")
            --rm:add_character_quantity_limit_for_group(name, 21)
        end
        if string.find(name, "special") then
            rm:set_ui_name_for_group(name, "особый отряд")
            rm:add_character_quantity_limit_for_group(name, 10)
        end
        if string.find(name, "rare") then
            rm:set_ui_name_for_group(name, "элитный отряд")
            rm:add_character_quantity_limit_for_group(name, 7)
        end
    end
    --this gives skrolk core plague monks
    rm:create_unit_override("wh2_main_skv_inf_plague_monks", "core_plague_monks")
    rm:add_subtype_filter_for_unit_override("wh2_main_skv_lord_skrolk", "core_plague_monks")
    rm:set_ui_profile_for_unit_override("core_plague_monks", "[[col:yellow]]Специальное правило: [[/col]] в армии Лорда Скролка Чумные Монахи считаются базовыми отрядами. \n Армии могут иметь неограниченное количество базовых отрядов.", "ui/custom/recruitment_controls/common_units.png") --changed line

end;


--changed block
local function buffs_first_tick()
    if cm:is_new_game() then
        local faction_list = cm:model():world():faction_list();
        local tier_1_min_modifier = cm:random_number(40, 20)
        local tier_1_max_modifier = cm:random_number(80, 40)
        local tier_2_min_modifier = cm:random_number(20, 10)
        local tier_2_max_modifier = cm:random_number(70, 35)
        local tier_C_min_modifier = cm:random_number(35, 15)
        local tier_C_max_modifier = cm:random_number(55, 45)
        local tier_D_min_modifier = cm:random_number(60, 40)
        local tier_D_max_modifier = cm:random_number(90, 70)
        local main_min_modifier = cm:random_number(25, 1)
        local main_max_modifier = cm:random_number(100, 75)
        local gold_min_modifier = cm:random_number(8000, 500)
        local gold_max_modifier = cm:random_number(10000, gold_min_modifier + 2)
        local use_skip_roll = cm:random_number(100)
        local use_default_roll = cm:random_number(100)
        for i = 0, faction_list:num_items() - 1 do
            local current_faction = faction_list:item_at(i);
            local current_faction_name = current_faction:name();
            if current_faction:is_human() == false then
                if current_faction:is_rebel() == false
                        and current_faction:is_quest_battle_faction() == false
                        and current_faction:is_vassal() == false
                        and not string.find(current_faction_name, "_qb")
                        and not string.find(current_faction_name, "_separatists") then
                    local skip_roll
                    if use_skip_roll > 50 then
                        skip_roll = cm:random_number(1000);
                    else
                        skip_roll = 1
                    end
                    if skip_roll < 950 then
                        local roll;
                        if use_default_roll > 40 then
                            roll = cm:random_number(100)
                        else
                            roll = cm:random_number(main_max_modifier, main_min_modifier)
                        end
                        local buff_prefix = "vize_buff_"
                        if string.find(current_faction_name, "_tmb_") then
                            buff_prefix = "vize_buff_tmb_"
                        end
                        local is_tier_1 = false
                        local is_tier_2 = false
                        local is_tier_D = false
                        local is_tier_C = false
                        local is_chaos_related = string.find(current_faction_name, '_bst_') or string.find(current_faction_name, '_chs_');
                        local is_player_chaos = cm:get_faction("wh_dlc03_bst_beastmen"):is_human() or cm:get_faction("wh_main_chs_chaos"):is_human()
                        for key, tier_1_faction in ipairs(tier_1_factions) do
                            if string.find(current_faction_name, tier_1_faction) then
                                local skip_tier_1_roll = cm:random_number(100)
                                if skip_tier_1_roll > 5 then
                                    if roll > 30 then
                                        roll = roll - cm:random_number(tier_1_max_modifier, tier_1_min_modifier)
                                    end
                                    is_tier_1 = true
                                end
                                break
                            end
                        end
                        if not is_tier_1 then
                            for key, tier_2_faction in ipairs(tier_2_factions) do
                                if string.find(current_faction_name, tier_2_faction) then
                                    local skip_tier_2_roll = cm:random_number(100)
                                    if skip_tier_2_roll > 5 then
                                        if roll > 30 then
                                            roll = roll - cm:random_number(tier_2_max_modifier, tier_2_min_modifier)
                                        end
                                        is_tier_2 = true
                                    end
                                    break
                                end
                            end
                            if not is_tier_2 then
                                for key, tier_D_faction in ipairs(tier_D_factions) do
                                    if string.find(current_faction_name, tier_D_faction) then
                                        local skip_tier_D_roll = cm:random_number(100)
                                        if skip_tier_D_roll > 10 then
                                            if roll < 80 then
                                                roll = roll + cm:random_number(tier_D_max_modifier, tier_D_min_modifier)
                                            end
                                            is_tier_D = true
                                        end
                                        break
                                    end
                                end
                                if not is_tier_D then
                                    for key, tier_C_faction in ipairs(tier_C_factions) do
                                        if string.find(current_faction_name, tier_C_faction) then
                                            local skip_tier_C_roll = cm:random_number(100)
                                            if skip_tier_C_roll > 10 then
                                                if roll < 70 then
                                                    roll = roll + cm:random_number(tier_C_max_modifier, tier_C_min_modifier)
                                                end
                                                is_tier_C = true
                                            end
                                            break
                                        end
                                    end
                                end
                            end
                        end
                        local buff_name
                        if roll <= 10 then
                            buff_name = buff_prefix .. '1';
                        elseif roll > 10 and roll <= 20 then
                            buff_name = buff_prefix .. '2';
                        elseif roll > 20 and roll <= 30 then
                            buff_name = buff_prefix .. '3';
                        elseif roll > 30 and roll <= 40 then
                            buff_name = buff_prefix .. '4';
                        elseif roll > 40 and roll <= 50 then
                            buff_name = buff_prefix .. '5';
                        elseif roll > 50 and roll <= 60 then
                            buff_name = buff_prefix .. '6';
                        elseif roll > 60 and roll <= 70 then
                            buff_name = buff_prefix .. '7';
                        elseif roll > 70 and roll <= 80 then
                            buff_name = buff_prefix .. '8';
                        elseif roll > 80 and roll <= 90 then
                            buff_name = buff_prefix .. '9';
                        elseif roll > 90 then
                            if is_tier_D and roll > 100 then
                                if is_chaos_related then
                                    if is_player_chaos then
                                        buff_name = buff_prefix .. '10';
                                    else
                                        buff_name = buff_prefix .. '11';
                                    end
                                else
                                    buff_name = buff_prefix .. '11';
                                end
                            else
                                buff_name = buff_prefix .. '10';
                            end
                        end
                        --_G.sfo:log('current_faction_name: ' .. current_faction_name .. ' buff_name: ' .. buff_name)
                        cm:apply_effect_bundle(buff_name, current_faction_name, 0);
                        if current_faction:is_dead() == false then
                            local negative_gold_roll = cm:random_number(100);
                            local negative_gold = false
                            if is_tier_D == false and is_tier_C == false then
                                if negative_gold_roll > 50 then
                                    negative_gold = true
                                end
                            end
                            local gold_modifier = cm:random_number(gold_max_modifier, gold_min_modifier)
                            if negative_gold == true then
                                cm:treasury_mod(current_faction_name, 0 - gold_modifier)
                            else
                                cm:treasury_mod(current_faction_name, gold_modifier)
                            end
                        end
                    end
                end
            end
        end
    end
end
--@changed


core:add_listener(
    "SFOcapsDilemma",
    "DilemmaChoiceMadeEvent",
    function(context)
        return context:dilemma() == "cap_army_choice"
    end,
    function(context)
        if context:choice() == 1 or context:choice() == 2 then
            sfo_add_unit_caps()
            cm:set_saved_value("SFO_APPLY_CAPS", true)
            caps_first_tick()
        end
        if context:choice() == 2 or context:choice() == 3 then
            sfo_apply_cap_bundle()
        end
    end,
    false)

--changed block
core:add_listener(
        "ai_faction_balance_listener",
        "FactionTurnStart",
        function(context)
            if vize_ai_faction_balance_manager_turn == nil then
                vize_ai_faction_balance_manager_turn = cm:get_cached_value('vize_ai_faction_balance_manager_turn', function()
                    return cm:random_number(70, 40);
                end)
            end
            return context:faction():is_human() == false and cm:model():turn_number() > vize_ai_faction_balance_manager_turn
        end,
        function(context)
            local faction = context:faction()
            local faction_key = faction:name()
            local region_count = faction:region_list():num_items();

            if vize_ai_faction_balance_manager_nerf_1_regions == nil then
                vize_ai_faction_balance_manager_nerf_1_regions = cm:get_cached_value('vize_ai_faction_balance_manager_nerf_1_regions', function()
                    return cm:random_number(25, 15);
                end)
            end

            if vize_ai_faction_balance_manager_nerf_2_regions == nil then
                vize_ai_faction_balance_manager_nerf_2_regions = cm:get_cached_value('vize_ai_faction_balance_manager_nerf_2_regions', function()
                    return cm:random_number(35, 30);
                end)
            end

            local vize_ai_cb_b_reg_count = cm:get_cached_value('vize_ai_cb_b_r_count_' .. faction_key, function()
                return cm:random_number(5, 2);
            end)
            if region_count > 0 and region_count < vize_ai_cb_b_reg_count and not faction:has_effect_bundle("vize_buff_11") then
                if major_factions[faction_key] == true then
                    if faction:is_dead() == false then
                        local at_war_with_human = false
                        local human_factions = cm:get_human_factions();
                        for i = 1, #human_factions do
                            local human_faction = human_factions[i];
                            if faction:at_war_with(human_faction) == true then
                                at_war_with_human = true
                                break
                            end
                        end
                        local buff_turns = cm:random_number(30, 15);
                        if vize_ai_faction_balance_manager_comeback_chance == nil then
                            vize_ai_faction_balance_manager_comeback_chance = cm:get_cached_value('vize_ai_faction_balance_manager_comeback_chance', function()
                                return cm:random_number(30, 10);
                            end)
                        end
                        local vize_ai_faction_comeback_buff_roll = cm:get_cached_value('vize_ai_cb_b_roll_' .. faction_key, function()
                            return cm:random_number(100);
                        end)
                        local local_ai_faction_balance_manager_comeback_chance;
                        if at_war_with_human == true then
                            local_ai_faction_balance_manager_comeback_chance = vize_ai_faction_balance_manager_comeback_chance + cm:random_number(50, 10);
                        else
                            local_ai_faction_balance_manager_comeback_chance = vize_ai_faction_balance_manager_comeback_chance
                        end
                        if vize_ai_faction_comeback_buff_roll > local_ai_faction_balance_manager_comeback_chance then
                            cm:set_saved_value('vize_ai_cb_b_roll_' .. faction_key, vize_ai_faction_comeback_buff_roll - 10)
                            cm:apply_effect_bundle("vize_buff_11", faction_key, buff_turns);
                            local gold_modifier = cm:random_number(50000, 5000)
                            cm:treasury_mod(faction_key, gold_modifier)
                        end
                    end
                end
            else
                if region_count > vize_ai_faction_balance_manager_nerf_1_regions and not faction:has_effect_bundle("vize_buff_0") then
                    local vize_ai_nerf_debuff_1_applied = cm:get_cached_value('vize_ai_nerf_debuff_1_' .. faction_key, function()
                        return 0;
                    end)
                    if vize_ai_nerf_debuff_1_applied == 0 then
                        cm:set_saved_value('vize_ai_nerf_debuff_1_' .. faction_key, 1)
                        local debuff_turns = cm:random_number(120, 50);
                        cm:apply_effect_bundle("vize_buff_0", faction_key, debuff_turns);
                        local gold_modifier = cm:random_number(90000, 20000)
                        cm:treasury_mod(faction_key, 0 - gold_modifier)
                    end
                end
                if region_count > vize_ai_faction_balance_manager_nerf_2_regions and not faction:has_effect_bundle("vize_buff_n_1") then
                    local vize_ai_nerf_debuff_2_applied = cm:get_cached_value('vize_ai_nerf_debuff_2_' .. faction_key, function()
                        return 0;
                    end)
                    if vize_ai_nerf_debuff_2_applied == 0 then
                        cm:set_saved_value('vize_ai_nerf_debuff_2_' .. faction_key, 1)
                        local debuff_turns = cm:random_number(160, 60);
                        cm:apply_effect_bundle("vize_buff_n_1", faction_key, debuff_turns);
                        local gold_modifier = cm:random_number(160000, 60000)
                        cm:treasury_mod(faction_key, 0 - gold_modifier)
                    end
                end
            end
        end,
        true)

core:add_listener(
        "faction_turn_start_AI_wardecs",
        "FactionTurnStart",
        function(context)
            if context:faction():is_human() == true then
                wardecs_target_of_war_this_turn = {}
                if wardecs_next_divider == nil then
                    return true
                else
                    return false
                end
            elseif wardecs_next_divider ~= nil then
                return cm:model():turn_number() % wardecs_next_divider == 0
            elseif wardecs_cur_divider ~= nil then
                return cm:model():turn_number() % wardecs_cur_divider == 0
            else
                return false
            end
        end,
        function(context)
            local faction = context:faction()
            local faction_key = faction:name()
            if faction:is_human() == false then
                if faction:is_rebel() == false
                        and faction:is_quest_battle_faction() == false
                        and faction:is_dead() == false
                        and faction:is_vassal() == false then
                    if not string.find(faction_key, "_cst_rogue_")
                            and not string.find(faction_key, "defenders")
                            and not string.find(faction_key, "_chs_")
                            and not string.find(faction_key, "waaagh") then
                        if wardecs_at_war_cache[faction_key] == nil then
                            if wardecs_next_divider ~= nil then
                                wardecs_cur_divider = wardecs_next_divider
                                wardecs_next_divider = nil
                            end
                            if wardecs_target_of_war_this_turn[faction_key] == true then
                                return
                            end
                            local faction_list = faction:factions_met();
                            local war_count = 0;
                            local faction_names_to_declare_war_150 = {}
                            local faction_names_to_declare_war_50 = {}
                            local attitude_randomizer = math.random(1, 250) - 50;
                            local war_count_limit = math.random(1, 7)
                            for i = 0, faction_list:num_items() - 1 do
                                local current_faction = faction_list:item_at(i);
                                if current_faction:is_human() == false
                                        and current_faction:is_dead() == false
                                        and current_faction:is_rebel() == false
                                        and current_faction:is_quest_battle_faction() == false
                                        and current_faction:is_vassal() == false
                                        and current_faction:is_allowed_to_capture_territory() == true then
                                    local current_faction_name = current_faction:name();
                                    if faction:at_war_with(current_faction) == false then
                                        local diplomatic_attitude_towards = faction:diplomatic_attitude_towards(current_faction_name)
                                        if diplomatic_attitude_towards < (-150 - attitude_randomizer) then
                                            local random_chance_dow = -(math.random(1, 900))
                                            if diplomatic_attitude_towards < random_chance_dow then
                                                table.insert(faction_names_to_declare_war_150, current_faction_name)
                                            end
                                        elseif diplomatic_attitude_towards < (-50 - attitude_randomizer) then
                                            local random_chance_dow = -(math.random(1, 900))
                                            if diplomatic_attitude_towards < random_chance_dow then
                                                table.insert(faction_names_to_declare_war_50, current_faction_name)
                                            end
                                        end
                                    else
                                        local cur_region_count = current_faction:region_list():num_items();
                                        if cur_region_count > 2 then
                                            war_count = war_count + 1;
                                            if war_count >= war_count_limit then
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                            local declared_war_this_turn = false
                            if war_count < war_count_limit then
                                local length = #faction_names_to_declare_war_150
                                if length > 0 then
                                    local faction_name_to_declare_war = faction_names_to_declare_war_150[math.random(length)]
                                    if faction_name_to_declare_war ~= nil then
                                        cm:force_declare_war(faction_key, faction_name_to_declare_war, true, true)
                                        wardecs_target_of_war_this_turn[faction_name_to_declare_war] = true
                                        declared_war_this_turn = true
                                        war_count = war_count + 1;
                                    end
                                end
                            else
                                wardecs_at_war_cache[faction_key] = 1;
                            end
                            local small_war_count_limit = war_count_limit - 2;
                            if war_count < small_war_count_limit then
                                local length = #faction_names_to_declare_war_50
                                if length > 0 then
                                    local faction_name_to_declare_war = faction_names_to_declare_war_50[math.random(length)]
                                    if faction_name_to_declare_war ~= nil then
                                        if declared_war_this_turn == true then
                                            cm:force_declare_war(faction_key, faction_name_to_declare_war, false, false)
                                        else
                                            cm:force_declare_war(faction_key, faction_name_to_declare_war, true, true)
                                        end
                                        wardecs_target_of_war_this_turn[faction_name_to_declare_war] = true
                                    end
                                end
                            end
                        else
                            local turns_skipped_as_at_war = wardecs_at_war_cache[faction_key] + 1
                            if turns_skipped_as_at_war > 3 then
                                wardecs_at_war_cache[faction_key] = nil
                            else
                                wardecs_at_war_cache[faction_key] = turns_skipped_as_at_war
                            end
                        end
                    end
                end
            else
                if wardecs_next_divider == nil then
                    wardecs_next_divider = math.random(3, 10)
                end
            end
        end,
        true)
--@changed block


--changed block
sfo_add_unit_caps()
cm.first_tick_callbacks[#cm.first_tick_callbacks + 1] = function(context)
    caps_first_tick()
    buffs_first_tick()
end
--@changed block
