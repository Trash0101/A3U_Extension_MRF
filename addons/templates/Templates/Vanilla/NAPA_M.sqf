private _hasLawsOfWar = "orange" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Nogova Modern"] call _fnc_saveToTemplate; 						

["flag", "Flag_EAF_F"] call _fnc_saveToTemplate;
["flagTexture", "\a3\Data_F_Enoch\Flags\flag_EAF_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_EAF"] call _fnc_saveToTemplate;

["vehiclesBasic", ["I_G_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["rhsgref_nat_uaz_open"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_B_nM1025_M240_USA_DES"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["CUP_B_T810_Unarmed_CZ_WDL","rhs_gaz66_vmf","MY_TAG_kamaz5350"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_B_nM1036_TOW_USA_DES"]] call _fnc_saveToTemplate;
["vehiclesAA", ["rhs_gaz66_zu23_vmf"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["I_C_Boat_Transport_02_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_C_DC3_CIV"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["CUP_C_Lada_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Van_01_transport_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_B_MI6T_CDF"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_DSHKM_ACR"]] call _fnc_saveToTemplate;
["staticAT", ["rhsgref_nat_SPG9"]] call _fnc_saveToTemplate;
["staticAA", ["rhsgref_nat_ZU23"]] call _fnc_saveToTemplate;
["staticMortars", ["rhsgref_nat_2b14","CUP_B_D30_CDF"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate;

["minesAT", [
	"ATMine_Range_Mag",
	"rhs_mine_tm62m_mag",
	"rhs_mine_M19_mag",
	"rhs_mag_mine_ptm1",
	"SLAMDirectionalMine_Wire_Mag",
	"rhssaf_mine_tma4_mag",
	"rhs_mine_TM43_mag"
]] call _fnc_saveToTemplate;
["minesAPERS", [
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag"
]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["rhs_ec75_mag", 2], ["rhs_ec75_sand_mag", 2], ["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1], ["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["rhs_ec75_mag", 4], ["rhs_ec75_sand_mag", 4], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1],["DemoCharge_Remote_Mag", 2], ["rhsusf_m112_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1], ["SatchelCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [
    ["RHS_TOW_TriPod_WD", 3000, "STATICAT", {tierWar > 3}],
    ["rhsgref_nat_AGS30_TriPod", 3000, "STATICMG", {tierWar > 3}],


    ["rhs_tigr_sts_msv", 2000, "CAR", {true}],
    ["min_rf_gaz_2330_HMG", 3500, "CAR", {true}],
    ["rhsgref_BRDM2_msv", 2500, "CAR", {true}],

    ["rhsgref_nat_btr70", 6000, "APC", {true}],
    ["rhs_bmd1k", 9000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["RHS_M2A3_BUSKIII", 15000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_bmd2", 12500, "APC", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],

    ["rhs_t72ba_tv", 20000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_T34_NAPA", 13000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t80", 21000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["MY_TAG_bm21", 30000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["pook_TOS1A_OPFOR", 50000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],


    ["rhs_zsu234_aa", 10000, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],

    ["rhs_l159_CDF", 40000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],

    ["RHS_Mi8mt_vvsc", 15000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["RHS_Mi8MTV3_vvsc", 25000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "CUP_hgun_TT", "CUP_8Rnd_762x25_TT",
    "rhs_weap_M590_8RD", "rhs_weap_M590_5RD", "rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug", "rhsusf_8Rnd_Slug", "rhsusf_8Rnd_00Buck", "CUP_1Rnd_12Gauge_Pellets_No00_Buck", "CUP_1Rnd_12Gauge_Slug",
    "CUP_srifle_Mosin_Nagant", "CUP_5Rnd_762x54_Mosin_M",
    "CUP_launch_RPG18",
    "CUP_HandGrenade_RGD5", "CUP_HandGrenade_RGO",
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "B_FieldPack_oli", "CUP_B_HikingPack_Civ",
    "Binocular",
    "rhs_weap_rsp30_white","rhs_mag_rsp30_white",
    "rhs_weap_rsp30_green","rhs_mag_rsp30_green",
    "rhs_weap_rsp30_red", "rhs_mag_rsp30_red",
    "rhs_mag_nspd", "rhs_mag_nspn_yellow", "rhs_mag_nspn_green", "rhs_mag_nspn_red",
    "CUP_V_B_GER_Carrier_Rig_3_Brown","CUP_V_B_GER_Carrier_Rig_2","CUP_V_B_GER_Carrier_Rig","CUP_V_O_SLA_M23_1_BRN","CUP_V_O_SLA_M23_1_OD","CUP_V_O_TK_Vest_2","CUP_V_O_TK_Vest_1","CUP_V_I_RACS_Carrier_Rig_wdl_3","CUP_V_RUS_Smersh_New_Light","CUP_V_RUS_Smersh_New_Radio_Spectre","CUP_V_OI_TKI_Jacket1_02","CUP_V_OI_TKI_Jacket1_03","CUP_V_B_ALICE"
];


private _backpacks = [];
if (_hasLawsOfWar) then {
    _backpacks append [
        "B_Messenger_Black_F", 
        "B_Messenger_Coyote_F", 
        "B_Messenger_Gray_F",
        "B_Messenger_Olive_F", 
        "B_LegStrapBag_black_F", 
        "B_LegStrapBag_coyote_F", 
        "B_LegStrapBag_olive_F"
    ];
} else {
    _backpacks pushBack "B_AssaultPack_blk";
};

_initialRebelEquipment append _backpacks;

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "CUP_U_O_Partisan_TTsKO",
    "CUP_U_O_Partisan_TTsKO_Mixed",
    "CUP_U_O_Partisan_VSR_Mixed1",
    "CUP_U_O_Partisan_VSR_Mixed2",
    "CUP_U_O_RUS_M88_MSV",
    "CUP_U_O_RUS_M88_MSV_rolled_up",
    "CUP_U_B_BDUv2_Alpenflage",
    "CUP_U_B_BDUv2_roll2_gloves_Alpenflage",
    "CUP_U_B_BDUv2_roll_gloves_Alpenflage",
    "CUP_U_B_BDUv2_roll_gloves_dirty_Alpenflage",
    "CUP_U_B_BDUv2_gloves_Alpenflage",
    "CUP_U_B_BDUv2_CEU",
    "CUP_U_B_BDUv2_roll2_CEU",
    "CUP_U_B_BDUv2_roll2_gloves_CEU",
    "CUP_U_B_BDUv2_gloves_CEU",
    "CUP_U_B_BDUv2_roll_CEU",
    "CUP_U_B_BDUv2_roll_gloves_CEU",
    "CUP_U_B_BDUv2_DCU",
    "CUP_U_B_BDUv2_gloves_DCU",
    "CUP_U_B_BDUv2_roll2_DCU",
    "CUP_U_B_BDUv2_roll2_gloves_DCU",
    "CUP_U_B_BDUv2_roll_DCU",
    "CUP_U_B_BDUv2_roll_gloves_DCU",
    "CUP_U_B_BDUv2_DDPM",
    "CUP_U_B_BDUv2_gloves_DDPM",
    "CUP_U_B_BDUv2_roll2_DDPM",
    "CUP_U_B_BDUv2_roll2_gloves_DDPM",
    "CUP_U_B_BDUv2_roll_DDPM",
    "CUP_U_B_BDUv2_roll_gloves_DDPM",
    "CUP_U_B_BDUv2_desert",
    "CUP_U_B_BDUv2_gloves_desert",
    "CUP_U_B_BDUv2_roll2_desert",
    "CUP_U_B_BDUv2_roll2_gloves_desert",
    "CUP_U_B_BDUv2_roll_desert",
    "CUP_U_B_BDUv2_roll_gloves_desert",
    "CUP_U_B_BDUv2_DPM",
    "CUP_U_B_BDUv2_gloves_DPM",
    "CUP_U_B_BDUv2_roll2_DPM",
    "CUP_U_B_BDUv2_roll2_gloves_DPM",
    "CUP_U_B_BDUv2_roll_DPM",
    "CUP_U_B_BDUv2_roll_gloves_DPM",
    "CUP_U_B_BDUv2_DPM_OD",
    "CUP_U_B_BDUv2_gloves_DPM_OD",
    "CUP_U_B_BDUv2_roll_DPM_OD",
    "CUP_U_B_BDUv2_roll_gloves_DPM_OD",
    "CUP_U_B_BDUv2_M81",
    "CUP_U_B_BDUv2_gloves_M81",
    "CUP_U_B_BDUv2_roll2_M81",
    "CUP_U_B_BDUv2_roll2_gloves_M81",
    "CUP_U_B_BDUv2_roll_M81",
    "CUP_U_B_BDUv2_roll_gloves_M81",
    "CUP_U_B_BDUv2_M81_Winter",
    "CUP_U_B_BDUv2_gloves_M81_Winter",
    "CUP_U_B_BDUv2_OD",
    "CUP_U_B_BDUv2_gloves_OD",
    "CUP_U_B_BDUv2_roll2_OD",
    "CUP_U_B_BDUv2_roll2_gloves_OD",
    "CUP_U_B_BDUv2_roll_OD",
    "CUP_U_B_BDUv2_roll_gloves_OD",
    "CUP_U_B_BDUv2_Tigerstripe",
    "CUP_U_B_BDUv2_gloves_Tigerstripe",
    "CUP_U_B_BDUv2_roll2_Tigerstripe",
    "CUP_U_B_BDUv2_roll2_gloves_Tigerstripe",
    "CUP_U_B_BDUv2_roll_Tigerstripe",
    "CUP_U_B_BDUv2_roll_gloves_Tigerstripe",
    "CUP_U_B_BDUv2_Urban",
    "CUP_U_B_BDUv2_gloves_Urban",
    "CUP_U_B_BDUv2_roll2_Urban",
    "CUP_U_B_BDUv2_roll2_gloves_Urban",
    "CUP_U_B_BDUv2_roll_Urban",
    "CUP_U_B_BDUv2_roll_gloves_Urban",
    "CUP_U_B_BDUv2_Winter",
    "CUP_U_B_BDUv2_gloves_Winter",
    "CUP_U_B_BDUv2_Winter_M81",
    "CUP_U_B_BDUv2_gloves_Winter_M81",
    "CUP_U_B_GER_Fleck_Overalls_Tank",
    "CUP_U_B_GER_Overalls_Tank",
    "CUP_U_B_GER_Flecktarn_1",
    "CUP_U_B_GER_Flecktarn_2",
    "CUP_U_B_GER_Flecktarn_3",
    "CUP_U_B_GER_Flecktarn_5",
    "CUP_U_B_GER_Flecktarn_6",
    "CUP_U_B_GER_Flecktarn_8",
    "CUP_U_B_GER_Tropentarn_1",
    "CUP_U_B_GER_Tropentarn_2",
    "CUP_U_B_GER_Tropentarn_3",
    "CUP_U_B_GER_Tropentarn_7",
    "CUP_U_O_RUS_Gorka_Green_gloves2",
    "CUP_U_O_RUS_Gorka_Green_gloves_kneepads",
    "CUP_U_O_RUS_Gorka_Green",
    "CUP_U_O_RUS_Gorka_Partizan_A",
    "CUP_U_O_RUS_Gorka_Partizan_A_gloves2",
    "CUP_U_O_RUS_Gorka_Partizan_A_gloves_kneepads",
    "CUP_U_O_RUS_Gorka_Partizan",
    "CUP_U_O_RUS_Gorka_Partizan_gloves2",
    "CUP_U_O_RUS_Gorka_Partizan_gloves_kneepads",
    "CUP_U_USNavy_LHD_crew_Green",
    "CUP_U_USNavy_LHD_crew_Brown",
    "CUP_U_C_Woodlander_03",
    "CUP_U_C_Woodlander_04",
    "CUP_I_B_PMC_Unit_24"
];


["uniforms", _rebUniforms] call _fnc_saveToTemplate;

["headgear", [
    "rhs_beanie_green",
    "H_Bandanna_khk",
    "H_Cap_blk",
    "H_Cap_oli",
    "H_Cap_headphones",
    "rhs_headband"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
 "RussianHead_1", "RussianHead_2", "RussianHead_3", "RussianHead_4", "RussianHead_5",
    "WhiteHead_29", "WhiteHead_30",
	"LivonianHead_1", "LivonianHead_2","LivonianHead_3","LivonianHead_4","LivonianHead_5","LivonianHead_6","LivonianHead_7","LivonianHead_8","LivonianHead_9","LivonianHead_10",
    "AsianHead_A3_03", "AsianHead_A3_06", "Mavros", "Smith_v2", "Mason_v2", "Oakes_v2",
    "RHS_GreekHead_A3_08", "RHS_GreekHead_A3_09", "RHS_LivonianHead_1", "RHS_LivonianHead_10", "RHS_LivonianHead_2", "RHS_LivonianHead_3", "RHS_LivonianHead_4", "RHS_LivonianHead_5", "RHS_LivonianHead_6", "RHS_LivonianHead_7", "RHS_RussianHead_1", "RHS_WhiteHead_01", "RHS_WhiteHead_04", "RHS_WhiteHead_05", "RHS_WhiteHead_06", "RHS_WhiteHead_07", "RHS_WhiteHead_08", "RHS_WhiteHead_09", "RHS_WhiteHead_10", "RHS_WhiteHead_11", "RHS_WhiteHead_14", "RHS_WhiteHead_15", "RHS_WhiteHead_16", "RHS_WhiteHead_25", "RHS_WhiteHead_27", "RHS_WhiteHead_28", "RHS_WhiteHead_32"
]] call _fnc_saveToTemplate;
["voices", ["Male01RUS","Male02RUS","Male03RUS","RHS_Male01RUS", "RHS_Male02RUS", "RHS_Male03RUS", "RHS_Male04RUS", "RHS_Male05RUS"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["glasses", ["G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["rhssaf_veil_Green", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;
    
    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

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
