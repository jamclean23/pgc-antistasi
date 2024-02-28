///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "NAPA"] call _fnc_saveToTemplate; 

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "cup\baseconfigs\cup_baseconfigs\data\flags\flag_napa_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "Faction_CUP_NAPA"] call _fnc_saveToTemplate;

["vehiclesBasic", ["I_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_I_Hilux_armored_unarmed_NAPA"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_I_Hilux_DSHKM_NAPA", "CUP_I_Datsun_PK"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["CUP_V3S_Open_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_I_Hilux_SPG9_NAPA", "CUP_I_MTLB_pk_NAPA", "CUP_I_BRDM2_NAPA", "CUP_I_BMP2_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_I_Ural_ZU23_NAPA", "CUP_I_Hilux_zu23_NAPA"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["CUP_B_LCU1600_USMC", "CUP_I_Frigate_AAF", "I_SDV_01_F", "I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;


["vehiclesPlane", ["CUP_I_CESSNA_T41_ARMED_HIL"]] call _fnc_saveToTemplate;       // replace from civ varient s
["vehiclesCivPlane", ["CUP_C_C47_CIV", "CUP_B_CESSNA_T41_UNARMED_AIRFORCE_USA", "CUP_C_AN2_AEROSCHROT_TK_CIV"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["CUP_I_LR_Ambulance_RACS"]] call _fnc_saveToTemplate;


["vehiclesCivCar", ["CUP_B_M1030_USA", "C_Van_02_transport_F", "C_Van_02_vehicle_F", "CUP_O_Hilux_unarmed_CR_CIV", "CUP_C_Golf4_reptile_Civ", "C_Hatchback_01_sport_F", "C_Kart_01_Vrana_F", "CUP_B_S1203_Ambulance_CR", "CUP_C_Ikarus_Chernarus", "CUP_C_Lada_GreenTK_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["CUP_C_Ural_Civ_03", "C_Tractor_01_F", "CUP_C_TowingTractor_CIV", "C_Van_01_transport_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412", "CUP_C_SA330_Puma_HC1_ChernAvia", "CUP_I_Merlin_HC3_PMC_Lux_3C", "C_Heli_Light_01_civil_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat", "CUP_C_Fishing_Boat_Chernarus", "C_Scooter_Transport_01_F", "C_Boat_Civil_01_F"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_I_DSHKM_NAPA", "CUP_B_DSHkM_MiniTriPod_NAPA"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_I_SPG9_NAPA"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_I_ZU23_NAPA"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_I_2b14_82mm_NAPA"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["mineAT", "CUP_MineE_M"] call _fnc_saveToTemplate;
["mineAPERS", "APERSMine_Range_Mag"] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

#include "CUP_Reb_Vehicle_Attributes.sqf"

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [
    
    // == STATICS

    ["CUP_B_TOW_TriPod_USMC", 1000, "STATICAT", {tierWar > 3}],
    ["CUP_B_AGS_CDF", 1000, "STATICMG", {tierWar > 3}],
    ["B_HMG_01_high_F", 1000, "STATICMG", {tierWar > 3}],
    ["B_HMG_01_F", 1000, "STATICMG", {tierWar > 3}],
    ["B_GMG_01_high_F", 1500, "STATICMG", {tierWar > 3}],
    ["B_GMG_01_F", 1500, "STATICMG", {tierWar > 3}],
    ["B_static_AA_F", 1500, "STATICAA", {tierWar > 3}],
    ["B_static_AT_F", 1500, "STATICAT", {tierWar > 3}],
    ["CUP_B_Igla_AA_pod_CDF", 1500, "STATICAA", {tierWar > 3}],
    ["CUP_B_D30_AT_CDF", 1500, "STATICAT", {tierWar > 3}],


    

    // Sam sites not working?
    // ["B_Radar_System_01_F", 25000, "STATICMG", {tierWar > 3}],
    // ["B_SAM_System_03_F", 25000, "STATICMG", {tierWar > 3}],


    // == LAND VEHICLES

    // Logistics Trucks
    ["CUP_O_Ural_Repair_RU", 4000, "TRUCK", {true}],
    ["CUP_O_Ural_Refuel_RU", 4000, "TRUCK", {true}],
    ["CUP_O_Ural_Reammo_RU", 4000, "TRUCK", {true}],

    // Armored Cars
    ["CUP_I_Hilux_armored_BMP1_IND_G_F", 10000, "CAR", {true}],
    ["CUP_B_BRDM2_HQ_CZ", 2000, "CAR", {true}],
    ["CUP_B_BRDM2_CDF", 2000, "CAR", {true}],

    // Huron containers can't be garaged, will disappear on restart
    // ["B_Slingload_01_Repair_F", 4000, "TRUCK", {true}],
    // ["B_Slingload_01_Fuel_F", 4000, "TRUCK", {true}],
    // ["B_Slingload_01_Ammo_F", 4000, "TRUCK", {true}],


    // Nyala
    ["CUP_B_RG31E_M2_OD_USMC", 2000, "TRUCK", {true}],
    ["CUP_B_RG31_Mk19_USA", 2500, "TRUCK", {true}],

    // Humvees
    ["CUP_B_nM1038_4s_USMC_WDL", 1250, "TRUCK", {true}],
    ["CUP_B_nM1038_DF_USMC_WDL", 1250, "TRUCK", {true}],
    ["CUP_B_nM1025_M240_DF_USMC_WDL", 1750, "TRUCK", {true}],
    ["CUP_B_M1151_M2_USMC", 1750, "TRUCK", {true}],
    
    // M-ATV
    ["B_MRAP_01_F", 1500, "TRUCK", {true}],
    ["B_MRAP_01_hmg_F", 2000, "TRUCK", {true}],
    ["B_MRAP_01_gmg_F", 2500, "TRUCK", {true}],

    // Vodniks
    ["CUP_O_GAZ_Vodnik_Unarmed_RU", 1500, "TRUCK", {true}],
    ["CUP_O_GAZ_Vodnik_PK_RU", 1750, "TRUCK", {true}],
    ["CUP_O_GAZ_Vodnik_KPVT_RU", 2000, "TRUCK", {true}],
    ["CUP_O_GAZ_Vodnik_BPPU_RU", 2000, "TRUCK", {true}],

    // British stuff
    ["CUP_B_Jackal2_L2A1_GB_W", 1750, "TRUCK", {true}],
    ["CUP_B_Jackal2_GMG_GB_W", 2000, "TRUCK", {true}],
    ["CUP_B_Mastiff_HMG_GB_W", 2500, "TRUCK", {true}],
    ["CUP_B_Mastiff_GMG_GB_W", 3000, "TRUCK", {true}],

    // German stuff
    // Amphibious unarmed fenneck
    ["CUP_B_FENNEK_GER_Wdl", 2000, "TRUCK", {true}],

    // LAV 
    ["CUP_B_LAV25M240_desert_USMC", 8000, "APC", {true}],
    // BMP
    ["CUP_B_BMP2_CDF", 6000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    // BTR80
    ["CUP_B_BTR80_FIA", 5000, "APC", {true}],

    
    // Anti Air
    ["CUP_B_ZSU23_CDF", 8000, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],

    // Tanks
    // Abrams
    ["CUP_B_M1A2C_TUSK_II_NATO", 18000, "TANK", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    // Slammer
    ["B_T_MBT_01_cannon_F", 18000, "TANK", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    // Slammer UP
    ["B_T_MBT_01_TUSK_F", 18000, "TANK", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    // T34
    ["CUP_O_T34_TKA", 10000, "TANK", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],



    // == BOATS

    // Lander
    ["CUP_B_LCU1600_USMC", 8000, "BOAT", {true}],
    ["B_T_Boat_Armed_01_minigun_F", 4000, "BOAT", {true}],


    // == PLANES

    // Shikra
    ["O_Plane_Fighter_02_F", 20000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Blackfish
    ["B_T_VTOL_01_armed_F", 20000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Spooky
    ["CUP_B_AC47_Spooky_USA", 20000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // F-35
    ["CUP_B_F35B_USMC", 20000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // SU34
    ["CUP_B_SU34_CDF", 20000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Gryphon
    ["CUP_I_JAS39_RACS", 20000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // A-10
    ["B_Plane_CAS_01_dynamicLoadout_F", 20000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // SU25
    ["CUP_O_Su25_Dyn_RU", 15000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_B_USMC_DYN_MQ9", 6000, "PLANE", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Armed Cessna
    ["CUP_I_CESSNA_T41_ARMED_HIL", 4000, "PLANE", {tierWar > 1 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // L39
    ["CUP_O_L39_TK", 10000, "PLANE", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_C_A300_CIV", 4000, "PLANE", {tierWar > 1 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_C_B737_CIV", 4000, "PLANE", {tierWar > 1 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["I_C_Plane_Civil_01_F", 1000, "PLANE", {tierWar > 1 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],


    // == HELICOPTERS

    // Apache
    ["CUP_B_AH64D_DL_USA", 20000, "HELI", {tierWar > 7 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Ka-50
    ["CUP_O_Ka50_DL_RU", 20000, "HELI", {tierWar > 7 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Mi-24
    ["CUP_O_Mi24_P_Dynamic_RU", 20000, "HELI", {tierWar > 7 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Armed Blackhawk
    ["CUP_B_MH60L_DAP_4x_USN", 15000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Mi-8
    ["CUP_O_Mi8_RU", 15000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Huey Gunship
    ["CUP_B_UH1Y_Gunship_Dynamic_USMC", 10000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Armed Little Bird
    ["B_Heli_Light_01_dynamicLoadout_F", 8000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Chinook with gunners
    ["CUP_B_MH47E_GB", 7000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Mi-17
    ["CUP_B_Mi17_CDF", 3000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Mi-6 Hook
    ["CUP_C_MI6T_RU", 3000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Transport Heli
    ["B_Heli_Transport_03_F", 3000, "HELI", {tierWar > 2 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Transport Heli
    ["B_Heli_Transport_03_unarmed_F", 3000, "HELI", {tierWar > 2 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Unarmed Blackhawk
    ["CUP_B_UH60M_Unarmed_US", 2000, "HELI", {tierWar > 2 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    // Unarmed Little Bird
    ["CUP_B_MH6J_USA", 1500, "HELI", {tierWar > 2 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]

    
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "CUP_arifle_AKS74U", "CUP_30Rnd_545x39_AK74_plum_M", "CUP_sgun_slamfire", "CUP_srifle_LeeEnfield", "CUP_srifle_LeeEnfield_rail",
    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", "CUP_1Rnd_12Gauge_Pellets_No3_Buck", "CUP_10x_303_M",
    "CUP_hgun_TaurusTracker455", "CUP_6Rnd_45ACP_M",
    "CUP_launch_RPG18",
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "CUP_HandGrenade_RGD5", "SmokeShell",
    "CUP_V_I_Carrier_Belt", "CUP_V_I_Guerilla_Jacket", "CUP_V_I_RACS_Carrier_Rig_2", "CUP_V_I_RACS_Carrier_Rig_wdl_2",
    "CUP_V_RUS_Smersh_New_Light", "CUP_V_OI_TKI_Jacket1_06", "CUP_V_OI_TKI_Jacket5_05", "CUP_V_OI_TKI_Jacket5_06", "CUP_V_OI_TKI_Jacket3_04",
    "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk",
    "Binocular"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr", "tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "tf_anprc155";
    _initialRebelEquipment pushBack "tf_anprc155_coyote";
};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr", "TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "TFAR_anprc155";
    _initialRebelEquipment pushBack "TFAR_anprc155_coyote";
};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "CUP_I_B_PARA_Unit_2",
    "CUP_I_B_PARA_Unit_6",
    "CUP_I_B_PARA_Unit_9",
    "CUP_U_I_GUE_Anorak_01",
    "CUP_U_I_GUE_Anorak_03",
    "CUP_U_I_GUE_Anorak_02",
    "CUP_U_I_GUE_WorkU_01",
    "CUP_U_I_GUE_WorkU_02",
    "CUP_U_I_GUE_Flecktarn2",
    "CUP_U_I_GUE_Flecktarn3",
    "CUP_U_I_GUE_Flecktarn",
    "CUP_U_I_GUE_Flecktarn4",
    "CUP_U_I_GUE_Woodland1",
    "U_IG_Guerilla1_1",
    "U_IG_Guerilla2_1",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla2_3",
    "U_IG_Guerilla3_1",
    "U_IG_leader",
    "U_IG_Guerrilla_6_1",
    "U_I_G_resistanceLeader_F"
];          //Uniforms given to Player Rebels

private _rebUniformsAI = [
    "CUP_U_I_GUE_Anorak_01",
    "CUP_U_I_GUE_Anorak_03",
    "CUP_U_I_GUE_Anorak_02",
    "CUP_U_I_GUE_WorkU_01",
    "CUP_U_I_GUE_WorkU_02",
    "CUP_U_I_GUE_Flecktarn2",
    "CUP_U_I_GUE_Flecktarn3",
    "CUP_U_I_GUE_Flecktarn",
    "CUP_U_I_GUE_Flecktarn4",
    "CUP_U_I_GUE_Woodland1"
];          //Uniforms given to AI Rebels

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [
    "CUP_H_C_Beanie_02",
    "CUP_H_C_Beret_03",
    "CUP_H_C_Beret_04",
    "CUP_H_C_Ushanka_01",
    "CUP_H_C_Ushanka_02",
    "CUP_H_C_Ushanka_03",
    "CUP_H_Ger_Boonie2_Flecktarn",
    "CUP_H_NAPA_Fedora",
    "H_Bandanna_camo"
    ]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem","GreekHead_A3_05",
"GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09",
"Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04",
"WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09",
"WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_19","WhiteHead_20",
"WhiteHead_21"]] call _fnc_saveToTemplate;
["voices", ["CUP_D_Male01_CZ_ACR","CUP_D_Male02_CZ_ACR","CUP_D_Male03_CZ_ACR","CUP_D_Male04_CZ_ACR","CUP_D_Male05_CZ_ACR"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniformsAI];
_loadoutData set ["facewear", ["None","CUP_G_Balaclava_blk","CUP_G_Balaclava_oli","CUP_G_Bandanna_aviator","CUP_G_Bandanna_beast",
"CUP_G_Bandanna_blk","CUP_G_Bandanna_khk","CUP_G_Bandanna_oli","CUP_G_Bandanna_shades","CUP_G_Shades_Black"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;