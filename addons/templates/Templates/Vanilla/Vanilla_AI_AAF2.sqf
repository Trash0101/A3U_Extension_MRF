//these variables determine whether specified dlcs are loaded
private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "AFRF Z"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "AFRFM"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_min_rf_russia"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "rhsafrf\addons\rhs_main\data\flag_rus_co.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "flag_Russia"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["I_Quadbike_01_F"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["Z_TAG_ASN_233115", "MY_TAG_uaz3151", "min_rf_gaz_2330"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["rhs_gas66_zu23_vv", "Z_TAG_ASN_233115_STS", "min_rf_gaz_2330_HMG"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["V_TAG_gaz6605", "MY_TAG_bmk225", "MY_TAG_pmpm05", "Z_TAG_ural4320", "Z_TAG_typhoon_K", "Z_TAG_kamaz5350", "Z_TAG_r142n"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["Z_TAG_ural4320", "Z_TAG_kamaz5350"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["min_rf_truck_ammo","rhs_gaz66_ammo_vv","Z_TAG_ural432031","Z_TAG_kamaz5351"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["Z_TAG_mtoat","min_rf_truck_box","RHS_Ural_Repair_VV_01","rhs_gaz66_repair_vv"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["min_rf_truck_fuel","RHS_Ural_Fuel_VV_01"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["rhs_gaz66_ap2_vv","min_rf_truck_medical"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["Z_TAG_btr80", "Z_TAG_btr80a", "min_rf_t_15", "Z_TAG_bmp2k", "Z_TAG_bmp3", "Z_TAG_bmp3m", "V_TAG_brm1k"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["Z_TAG_t72b3","Z_TAG_t72b3m","Z_TAG_t90a","Z_TAG_t90m","min_rf_t_14","MY_TAG_tric_t80ue","MY_TAG_tric_t80uk","MY_TAG_tric_t80um"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["rhs_zsu234_aa","min_rf_sa_22","CUP_O_2S6_RU","CUP_O_2S6M_RU"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["Z_TAG_bmd2","Z_TAG_bmd2k","MY_TAG_bmd4m","rhs_btr60_vv","rhs_btr70_vv"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["rhs_bmp2e_vv","rhs_bmp2_vv","rhs_bmp1k_vv","rhs_bmp1p_vv","rhs_Ob_681_2","rhs_bmp3_late_msv","rhs_bmp1d_vv"]] call _fnc_saveToTemplate;				//this line determines IFVs



["vehiclesTransportBoats", ["MY_TAG_tug","min_rf_boat_transport"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["O_Boat_Armed_01_hmg_F"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["Z_TAG_btr80", "Z_TAG_btr80a", "Z_TAG_bmp2k", "Z_TAG_bmp3", "Z_TAG_bmp3m", "V_TAG_brm1k","Z_TAG_bmd2","Z_TAG_bmd2k","MY_TAG_bmd4m","rhs_btr60_vv","rhs_btr70_vv"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["RHS_T50_vvs_051","RHS_T50_vvs_generic","rhs_mig29sm_vvsc","RHS_TU95MS_vvs_tambov"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["MY_TAG_su25","min_rf_su_34","rhs_mig29s_vmf"]] call _fnc_saveToTemplate; 			//this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["RHS_T50_vvs_051","RHS_AN2"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["Z_TAG_Mi_8T","min_rf_heli_light_unarmed_black"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["MY_TAG_Mi_8T", "Z_TAG_Mi_8T", "MY_TAG_Mi_17AMT", "min_rf_heli_light_unarmed_black", "RHS_Mi8MTV3_heavy_vvs", "min_rf_heli_light_black", "RHS_Mi8mtv3_Cargo_vvs", "CUP_O_MI6T_RU", "OWP_MI26ps"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["RHS_Mi8MTV3_heavy_vvs","min_rf_heli_light_black"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["min_rf_ka_52","Z_TAG_Mi_28UB","Z_TAG_Mi_35","Z_TAG_Mi_24P"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["pook_TOS1A_OPFOR", "pook_9K720K_OPFOR", "pook_A222_OPFOR", "pook_9K58_OPFOR", "pook_9K57M_OPFOR", "pook_9K57_OPFOR", "pook_9K52_OPFOR", "pook_4K51_OPFOR", "pook_3K60_OPFOR", "pook_2S7_OPFOR", "pook_2S5_OPFOR", "pook_2S34_OPFOR", "pook_2S3_OPFOR", "pook_1B75_OPFOR", "min_rf_2b26", "Z_TAG_acacia", "Z_TAG_bm21", "MY_TAGa_gvozdika"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["rhs_2s1_tv", ["rhs_mag_3of56_10"]],
["rhs_2s3_tv",["rhs_mag_HE_2a33", "rhs_mag_WP_2a33"]],
["RHS_BM21_VV_01", ["rhs_mag_m21of_1"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["min_rf_pchela_1t","O_UAV_02_dynamicLoadout_F","mavik_3T_OPF","mavik_3_OPF"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["I_UAV_01_F"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["T_omon_fsvng_btr80","T_fsvng_tigr"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["T_MVD_Kamaz_box", "T_MVD_Van", "T_MVD_Van_cargo", "T_MVD_Kamaz_covered", "T_fsvng_Kamaz_covered", "T_fsvng_Kamaz_box", "T_fsvng_Van", "T_fsvng_Van_cargo"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["T_FSVNG_Offroad_covered_01", "T_MVD_uaz", "T_MVD_Offroad_covered_01", "rhs_uaz_open_vv"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

private _militiaAPCs = if (_hasTanks) then {["I_LT_01_cannon_F"]} else {[]};		//this line adds dlc APC to an array if dlc is loaded
["vehiclesMilitiaAPCs", ["T_omon_fsvng_btr80"]] call _fnc_saveToTemplate;						//this line determines militia APCs

["vehiclesPolice", ["T_FSVNG_Offroad_covered_01", "T_MVD_uaz", "T_MVD_Offroad_covered_01", "rhs_uaz_open_vv","T_MVD_Kamaz_box", "T_MVD_Van", "T_MVD_Van_cargo", "T_MVD_Kamaz_covered", "T_fsvng_Kamaz_covered", "T_fsvng_Kamaz_box", "T_fsvng_Van", "T_fsvng_Van_cargo"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["rhs_KORD_high_MSV"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["rhs_Kornet_9M133_2_msv","min_rf_Metis", "min_rf_AGS_30"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["rhs_Igla_AA_pod_vdv","RHS_ZU23_VMF"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["min_rf_Mortar","CUP_O_D30_RU_M_MSV","MY_TAG_d30a","MY_TAG_podnos"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["MY_TAG_d30a"]] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["vehicleRadar", "E22_O_RAF_Radar_System_02_F"] call _fnc_saveToTemplate;
["vehicleSam", "E22_O_RAF_SAM_System_02_F","E22_O_RAF_SAM_System_04_F"] call _fnc_saveToTemplate;

["mortarMagazineHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "rhs_mag_3vs25m_10"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "rhs_mag_3of56_10"] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["rhs_mag_mine_pfm1","rhs_mine_tm62m"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["rhs_mine_pmn2","rhs_mag_mine_pfm1"]] call _fnc_saveToTemplate;

["animations", [
    ["I_APC_Wheeled_03_cannon_F", ["showCamonetHull", 0.25, "showSLATHull", 0.3]],
    ["I_MBT_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.25, "HideTurret", 0.3, "HideHull", 0.3]],
    ["I_APC_tracked_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.3, "showTools", 0.3, "showSLATHull", 0.3, "showSLATTurret", 0.3]],
    ["I_LT_01_AA_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]],
    ["I_LT_01_AT_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]],
    ["I_LT_01_cannon_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]]
]] call _fnc_saveToTemplate;		//this makes specified vehicles randomly spawn with specified cosmetics applied

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

["insignia", ["T_FSVNG_clr", "T_FSVNG_grn", "T_FSVNG"]] call _fnc_saveToTemplate;
["milInsignia", ["T_PPS_01_CLR", "T_PPS_01_DGT", "T_PPS_01_DGT2"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", ["rhs_weap_rpg26"]];
_loadoutData set ["ATLaunchers", ["launch_min_rf_titan_short"]];
_loadoutData set ["missileATLaunchers", ["launch_min_rf_RPG32","rhs_weap_rpg7_pgo"]];
_loadoutData set ["AALaunchers", ["launch_min_rf_verba_1pn_97","rhs_weap_igla","rhs_weap_igla"]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["rhs_mag_mine_ptm1", "rhs_mine_tm62m_mag"]];
_loadoutData set ["APMines", ["rhs_mine_ozm72_a_mag", "rhs_mine_ozm72_b_mag", "rhs_mine_ozm72_c_mag", "rhs_mag_mine_pfm1", "rhs_mine_pmn2_mag"]];
_loadoutData set ["lightExplosives", ["rhs_ec200_mag"]];
_loadoutData set ["heavyExplosives", ["rhs_ec400_mag"]];

_loadoutData set ["antiInfantryGrenades", ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rgo", "rhs_mag_rgn"]];
_loadoutData set ["antiTankGrenades", []]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData set ["smokeGrenades", ["rhs_mag_rdg2_white"]];
_loadoutData set ["signalsmokeGrenades", ["rhs_mag_nspd"]];
//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];				//this line determines map
_loadoutData set ["watches", ["ItemWatch"]];		//this line determines watch
_loadoutData set ["compasses", ["ItemCompass"]];	//this line determines compass
_loadoutData set ["radios", ["ItemRadio"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["NVGoggles_OPFOR"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["rhs_pdu4"]];

_loadoutData set ["traitorUniforms", ["g3fleece5","g3fleece4"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["mord_avsCPC4WAG", "mord_avsCPC5WAG", "mord_WAG1LBT6094KIT2"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["WAGNERlshz1","WAGNERlshz2"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["T_general_FSVNG_uniform","T_general_MVD_uniform","min_rf_flora_officer"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["V_Rangemaster_belt"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["min_rf_beret_green", "min_rf_beret_red","T_general_MVD_cap","T_beret_sobr3"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["CUP_V_JPC_Fastbelt_mc"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["rhs_r148"]];
_loadoutData set ["atBackpacks", ["B_Carryall_oli"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["rhs_6b47_6m2_1", "E22_H_HelmetSparrow_headset_green_F"]];
_loadoutData set ["sniHats", ["WAGmich2", "WAGmich4"]];

_loadoutData set ["glasses", ["G_Bandanna_beast", "G_Bandanna_Skull1", "min_rf_scarf_desert", "CUP_G_Grn_Scarf_GPS", "E22_G_Balaclava_RAF_black_F", "E22_G_Cigarette_F", "rhs_facewear_6m2_1", "WAGbac1"]];	//cosmetics
_loadoutData set ["goggles", ["YuEEssGB", "YuEEssB","YuEEssCB","rhs_facewear_6m2"]];		//cosmetics

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["uniforms", ["T_grom_mvd_multicam_uniform"]];
_sfLoadoutData set ["vests", ["BG_Defender2SAKdOo", "BG_Defender2SOoPK", "BG_Defender2SOoPKt","BG_Defender2SSVDOa"]];
_sfLoadoutData set ["Hvests", ["mord_WAGtactec1"]];
_sfLoadoutData set ["backpacks", ["WAGwarbelt3", "WAGwarbelt2", "WAGwarbelt1"]];
_sfLoadoutData set ["helmets", ["ZSH1_2M_F_CH_ZV_M", "ZSH1_2M_F_CH_OV_M", "ZSH1_2M_F_CH_M", "ZSH1_2M_F_CH_AF"]];
_sfLoadoutData set ["binoculars", ["rhs_pdu4"]];

_sfLoadoutData set ["slRifles", [
["rhs_weap_asval_grip_npz_rakursPM_klesch","","rhs_acc_2dpZenit_ris","rhs_acc_rakursPM",["rhs_20rnd_9x39mm_SP6"],[],""],
["arifle_min_rf_ak_12_gp_camo_1p_87_sd","muzzle_min_rf_tgp_a","acc_min_rf_perst_1ik","optic_min_rf_1p_87",["30Rnd_min_rf_545x39_Mag_camo"],["1Rnd_HE_Grenade_shell"],""],
["arifle_min_rf_aek_a545_camo_1p_87_sd","muzzle_min_rf_tgp_a","acc_min_rf_perst_1ik","optic_min_rf_1p_87",["30Rnd_min_rf_545x39_Mag_camo"],[],""],
["arifle_min_rf_ak_12_grip_eotech_553_ir","","acc_min_rf_perst_1ik","optic_min_rf_eotech_553",["30Rnd_min_rf_545x39_Mag"],[],""]
]];
_sfLoadoutData set ["rifles", [
["arifle_min_rf_ak_12","","acc_min_rf_perst_1ik","optic_min_rf_eotech_553",["30Rnd_min_rf_545x39_Mag"],[],""],
["arifle_min_rf_ak_12_camo","","acc_min_rf_perst_1ik","optic_min_rf_eotech_553",["30Rnd_min_rf_545x39_Mag"],[],""]
]];
_sfLoadoutData set ["carbines", [
["rhs_weap_aks74un_1p63_dtk2","rhs_acc_dtk2","","rhs_acc_1p63",["rhs_30Rnd_545x39_7N10_AK"],[],""],
["rhs_weap_aks74un_1p63_tgpa","rhs_acc_tgpa","","rhs_acc_1p63",["rhs_30Rnd_545x39_7N10_AK"],[],""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["arifle_min_rf_ak_12_gp_camo_1p_87_sd","muzzle_min_rf_tgp_a","acc_min_rf_perst_1ik","optic_min_rf_1p_87",["30Rnd_min_rf_545x39_Mag_camo"],["1Rnd_HE_Grenade_shell"],""]
]];

if (_hasWs) then {
    _sfLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["glaunch_GLX_camo_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], [], ""]
    ]];
};

_sfLoadoutData set ["SMGs", [
["CUP_smg_bizon","","","",["CUP_64Rnd_9x19_Bizon_M"],[],""],
["CUP_smg_Bizon_pbs","rhs_acc_pbs1","","",["CUP_64Rnd_9x19_Bizon_M"],[],""],
["rhs_weap_pp2000_eotech_xps3","","","rhsusf_acc_eotech_xps3",["rhs_mag_9x19mm_7n21_44"],[],""],
["CUP_arifle_SR3M_Vikhr_VFG_top_rail_eotech_xps3_wmx","","rhsusf_acc_wmx_bk","rhsusf_acc_eotech_xps3",["CUP_30Rnd_9x39_SP5_VIKHR_M"],[],""],
["CUP_arifle_SR3M_Vikhr_VFG_top_rail_eotech_xps3_wmx_pbs","CUP_muzzle_snds_SR3M","rhsusf_acc_wmx_bk","rhsusf_acc_eotech_xps3",["CUP_30Rnd_9x39_SP5_VIKHR_M"],[],""],
["CUP_smg_vityaz_top_rail_eotech_552","","","rhsusf_acc_eotech_552",["CUP_30Rnd_9x19_Vityaz"],[],""]
]];

private _mgs = [
    ["LMG_min_rf_6p69_eotech_553","","","",["100Rnd_min_rf_762x54_Box"],[],""],
    ["LMG_min_rf_6p69_eotech_553","","","rhs_acc_rakursPM",["100Rnd_min_rf_762x54_Box"],[],""]
];

if (_hasWs) then {
    _mgs append [
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};
_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
    ["srifle_min_rf_vs_121_camo_po_4x24_p_sd","muzzle_min_rf_pbs_1","","optic_min_rf_po_4x24_p",["10Rnd_762x54_Mag"],[],""],
    ["srifle_min_rf_vs_121","","","optic_min_rf_po_4x24_p",["10Rnd_762x54_Mag"],[],""],
    ["rhs_weap_svds_pso1m21_tgpv2","rhs_acc_tgpv2","","rhs_acc_pso1m21",["rhs_10Rnd_762x54mmR_7N1"],[],""],
    ["rhs_weap_svds_pso1m21","","","rhs_acc_pso1m21",["rhs_10Rnd_762x54mmR_7N1"],[],""],
    ["rhs_weap_vss_grip_pso1m21_klesch","","rhs_acc_2dpZenit_ris","rhs_acc_pso1m21",["rhs_20rnd_9x39mm_SP6"],[],""]
]];
_sfLoadoutData set ["sniperRifles", [
["srifle_min_rf_orsis_t5000_LRPS","","","optic_LRPS",["5Rnd_min_rf_338_Mag"],[],""],
["srifle_min_rf_orsis_t5000_camo","","","optic_LRPS",["5Rnd_min_rf_338_Mag"],[],""]
]];
_sfLoadoutData set ["sidearms", [
["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP"],[],""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["WAGPuffyUni2", "WAGPuffyUni1", "BASEUNIFORM1"]];
_eliteLoadoutData set ["slUniforms", ["CUP_Vest_RUS_6B45_Sh117_Full_Green"]];
_eliteLoadoutData set ["vests", ["CUP_Vest_RUS_6B45_Sh117_VOG_Full_Green", "CUP_Vest_RUS_6B45_Sh117_PKP_Full_Green", "CUP_Vest_RUS_6B45_Sh117_PKP_Del_Nut_Green"]];
_eliteLoadoutData set ["Hvests", ["mord_WAG1LBT6094KIT2","min_rf_armor_vest_M_multicam"]];
_eliteLoadoutData set ["backpacks", ["min_rf_backpack_green", "min_rf_torna_green", "E22_B_HighCap_Lesnoy", "E22_B_AssaultPack_Lesnoy"]];
_eliteLoadoutData set ["helmets", ["Altyn_F_ZN_ch_m_Z_b0f", "kot_lshz_highcut_green_cover_au_rail_peltor_ru_ir"]];
_eliteLoadoutData set ["binoculars", ["rhs_pdu4"]];

_eliteLoadoutData set ["slRifles", [
["CUP_arifle_AK19_VG_lush","CUP_muzzle_snds_XM8","rhs_acc_perst3","CUP_optic_1P87_1P90_BLK",["CUP_30Rnd_556x45_AK19_Grey_M"],[],""],
["rhs_weap_mk18_KAC","rhsusf_acc_nt4_black","CUP_acc_ANPEQ_15_Flashlight_Tan_L","rhsusf_acc_ACOG_MDO",["rhs_mag_30Rnd_556x45_M855_PMAG_Tan"],[],"rhsusf_acc_grip2_tan"]
]];
_eliteLoadoutData set ["rifles", [
["CUP_arifle_AK19_tan","muzzle_snds_M","rhs_acc_perst3","rhs_acc_1p87",["CUP_30Rnd_556x45_AK19_Grey_M"],[],""],
["CUP_arifle_AK19_tan","muzzle_snds_M","rhs_acc_perst1ik_ris","rhs_acc_okp7_picatinny",["CUP_30Rnd_556x45_AK19_Grey_M"],[],""],
["rhs_weap_asval_grip_npz","","rhs_acc_perst1ik_ris","rhs_acc_rakursPM",["rhs_20rnd_9x39mm_SP6"],[],"rhs_acc_grip_rk6"]
]];
_eliteLoadoutData set ["carbines", [
["CUP_arifle_AKS74U_railed","CUP_muzzle_PBS4","CUP_acc_ANPEQ_15_Flashlight_OD_L","rhs_acc_okp7_picatinny",["30Rnd_545x39_Mag_black_Green_F"],[],""],
["rhs_weap_aks74un","CUP_muzzle_PBS4","","CUP_optic_ekp_8_02",["rhs_30Rnd_545x39_7N10_AK"],[],""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["CUP_arifle_AK19_GP34_lush","CUP_muzzle_snds_XM8","rhs_acc_perst1ik_ris","CUP_optic_1P87_1P90_BLK",["CUP_30Rnd_556x45_AK19_Grey_M"],[],""],
["CUP_arifle_OTS14_GROZA_GL","","","",["CUP_20Rnd_9x39_SP5_GROZA_M"],["CUP_1Rnd_HE_GP25_M"],""]
]];
_eliteLoadoutData set ["SMGs", [
["CUP_arifle_SR3M_Vikhr_VFG","CUP_muzzle_snds_SR3M","CUP_acc_ANPEQ_15_Top_Flashlight_OD_L","CUP_optic_ekp_8_02",["CUP_30Rnd_9x39_SP5_VIKHR_M"],[],""]
]];

if (_hasWs) then {
    _eliteLoadoutData set ["machineGuns", [
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_Mk200_F", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
        ["LMG_Mk200_F", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
        ["LMG_Mk200_F", "", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
    ]];
} else {
    _eliteLoadoutData set ["machineGuns", [
        ["CUP_lmg_Pecheneg_top_rail_B50_vfg","CUP_muzzle_snds_KZRZP_PK","rhs_acc_perst1ik_ris","rhs_acc_rakursPM",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"],[],""],
        ["CUP_lmg_PKM_top_rail_B50_vfg","CUP_muzzle_mfsup_Flashhider_PK_Black","rhs_acc_perst3","rhs_acc_1p87",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"],[],""]
    ]];
};

private _marksmanRifles = [
    ["CUP_srifle_SVD_wdl_top_rail","rhs_acc_tgpv","CUP_SVD_camo_g","CUP_optic_LeupoldMk4_10x40_LRT_Woodland",["rhs_10Rnd_762x54mmR_7N14"],[],""],
    ["rhs_weap_svdp_npz","rhs_acc_tgpv2","","rhs_acc_dh520x56",["rhs_10Rnd_762x54mmR_7N14"],[],""]
];

if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F", "", "", "optic_SOS", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_camo_F", "", "", "optic_Hamr", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_camo_F", "", "", "optic_NVS", [], [], "bipod_03_F_oli"]
    ];
};
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["rhs_weap_t5000","","","CUP_optic_CWS_NV_RDS",["rhs_5Rnd_338lapua_t5000"],[],"rhs_acc_harris_swivel"],
["srifle_min_rf_orsis_t5000_camo","","","rhsusf_acc_M8541_low",["5Rnd_min_rf_338_Mag"],[],""]
]];
_eliteLoadoutData set ["sidearms", [
["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP"],[],""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["E22_U_RAF_Uniform_01_lesnoy_sweater_shortsleeve_F", "E22_U_RAF_Uniform_01_lesnoy_sweater_F", "CUP_U_O_RUS_Ratnik_Summer","min_rf_flora","min_rf_flora_lite","CUP_U_CRYE_MCAM_RUS_Roll","CUP_U_CRYE_MCAM_RUS2_Full"]];
_militaryLoadoutData set ["slUniforms", ["min_rf_flora","CUP_I_B_PARA_Unit_1"]];
_militaryLoadoutData set ["vests", ["min_rf_armor_vest_green", "min_rf_lite_vest_GL_green","E22_V_CarrierRigKBT_01_light_lesnoy_F"]];
_militaryLoadoutData set ["Hvests", ["min_rf_armor_vest_GL_green","min_rf_armor_vest_AR_flora","min_rf_armor_vest_AR_green"]];
_militaryLoadoutData set ["backpacks", ["min_rf_torna_flora", "min_rf_torna_green", "min_rf_backpack_flora", "min_rf_backpack_green"]];
_militaryLoadoutData set ["helmets", ["min_rf_helmet_soldier_flora","min_rf_helmet_soldier_desert","E22_H_HelmetSparrow_headset_green_F","E22_H_HelmetSparrow_enhanced_green_F"]];
_militaryLoadoutData set ["binoculars", ["E22_DigitalBinoculars_01_khaki_F"]];

_militaryLoadoutData set ["slRifles", [
["arifle_min_rf_ak_12_grip_1p_87","","","optic_min_rf_1p_87",["30Rnd_min_rf_545x39_Mag"],[],""],
["arifle_min_rf_ak_12_camo","","","optic_min_rf_1p_87",["30Rnd_min_rf_545x39_Mag_camo"],[],""],
["E22_arifle_AK12_black_F","","rhs_acc_perst1ik_ris","optic_min_rf_po_4x24_p",["30Rnd_545x39_Mag_black_F"],[],""]
]];
_militaryLoadoutData set ["rifles", [
["rhs_weap_akm","rhs_acc_dtkakm","","",["rhs_30Rnd_762x39mm_bakelite"],[],""],
["rhs_weap_akm_zenitco01_b33","rhs_acc_dtkakm","","rhs_acc_1p87",["rhs_30Rnd_762x39mm_bakelite"],[],""],
["rhs_weap_ak74m","rhs_acc_dtk1983","","CUP_optic_Kobra",["rhs_30Rnd_545x39_7N6M_plum_AK"],[],""],
["CUP_arifle_AK15_black","","","",["CUP_30Rnd_762x39_AK15_M"],[],""],
["CUP_arifle_AK74M","rhs_acc_dtk","","",["CUP_30Rnd_545x39_AK74M_M"],[],""],
["CUP_arifle_AK74M_railed_afg","","","rhs_acc_1p87",["CUP_30Rnd_545x39_AK74M_M"],[],""],
["CUP_arifle_AK74M_camo","","","",["CUP_30Rnd_545x39_AK74M_M"],[],""]
]];
_militaryLoadoutData set ["carbines", [
["E22_arifle_AK12U_black_F","","","",["CUP_30Rnd_545x39_AK_M"],[],""],
["E22_arifle_AK12U_black_F","","","rhs_acc_okp7_picatinny",["CUP_30Rnd_545x39_AK_M"],[],""],
["E22_arifle_AKS_black_F","","","",["CUP_30Rnd_545x39_AK_M"],[],""],
["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M"],[],""],
["CUP_arifle_AKS74U","","","rhs_acc_ekp8_02",["CUP_30Rnd_545x39_AK_M"],[],""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["CUP_arifle_AK74M_GL_camo","","","",["CUP_30Rnd_545x39_AK_M"],["CUP_1Rnd_HE_GP25_M"],""],
["CUP_arifle_AK74M_GL","","","",["CUP_30Rnd_545x39_AK_M"],["CUP_1Rnd_HE_GP25_M"],""],
["E22_arifle_AK12_GL_black_F","","","",["CUP_30Rnd_545x39_AK_M"],[],""],
["CUP_arifle_AK15_GP34_lush","","","",["CUP_30Rnd_762x39_AK15_Desert_M"],["CUP_1Rnd_HE_GP25_M"],""],
["CUP_arifle_AK15_GP34_black","","","rhs_acc_okp7_picatinny",["CUP_30Rnd_762x39_AK15_M"],["CUP_1Rnd_HE_GP25_M"],""],
["CUP_arifle_AK15_GP34_black","","","",["CUP_30Rnd_762x39_AK15_M"],["CUP_1Rnd_HE_GP25_M"],""]
]];
_militaryLoadoutData set ["SMGs", [
["E22_arifle_AK12U_black_F","","","",["CUP_30Rnd_545x39_AK_M"],[],""]
]];

private _mgs = [
    ["E22_arifle_RPK12_black_F","","","optic_min_rf_pkm_a",["75Rnd_545x39_Mag_black_Tracer_Green_F"],[],""],
    ["CUP_arifle_RPK74","","","CUP_optic_PSO_1_1",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],
    ["CUP_arifle_RPK74_45","","","CUP_optic_PSO_1_1",["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"],[],""],
    ["CUP_arifle_RPK74","","","",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],
    ["CUP_arifle_RPK74_45","","","",["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"],[],""],
    ["CUP_lmg_PKMN","","","",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"],[],""],
    ["CUP_lmg_Pecheneg","","","",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"],[],""]
];
if (_hasWs) then {
    _mgs append [
        ["LMG_S77_lxWS", "", "", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};
_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["CUP_srifle_SVD","","","CUP_optic_PSO_3",["CUP_10Rnd_762x54_SVD_M"],[],""],
    ["CUP_srifle_SVD","","","CUP_optic_PSO_1",["CUP_10Rnd_762x54_SVD_M"],[],""],
    ["rhs_weap_svdp","","","rhs_acc_pso1m2",["CUP_10Rnd_762x54_SVD_M"],[],""]
];
if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F", "", "", "optic_NVS", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_camo_F", "", "", "optic_SOS", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_olive_F", "", "", "optic_Hamr", [], [], "bipod_03_F_oli"]
    ];
};
_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
    ["srifle_DMR_06_olive_F", "", "", "optic_Hamr", [], [], "bipod_03_F_oli"]
]];
_militaryLoadoutData set ["sidearms", [
["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M"],[],""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["T_pps_black_uniform", "T_fsvng_digi_uniform"]];
_policeLoadoutData set ["vests", ["rhs_6sh46","T_6b23_police_black","T_6b23_fsvng_black","T_6b23_6sh46_police_black"]];
private _helmets = ["T_fieldcap_ovo_fsvng_digi","T_cap_pps","ZSH1_F_cam"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["rhs_weap_pp2000","","","",["rhs_mag_9x19mm_7n21_20"],[],""],
["rhs_weap_aks74u","rhs_acc_pgs64_74u","","",["rhs_30Rnd_545x39_7N6M_plum_AK"],[],""],
["CUP_smg_vityaz","","","",["CUP_30Rnd_9x19_Vityaz"],[],""]
]];
_policeLoadoutData set ["sidearms", ["hgun_Rook40_F","rhs_weap_makarov_pm"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["T_omon_fsvng_blue4_uniform", "T_grom_mvd_black_uniform"]];
_militiaLoadoutData set ["vests", ["BG_Defender2SAKBb", "T_6b23_black_vydra_3m", "T_6b23_black_6sh92_Spetsnaz"]];
_militiaLoadoutData set ["Hvests", ["BG_Defender2SAKOo"]];
_militiaLoadoutData set ["backpacks", []];
_militiaLoadoutData set ["helmets", ["ZSH1_2M_F_CH_ON_C","ZSH1_2M_F_CH_ON_M","ZSH1_2_F_CH_OV_C","ZSH1_2_F_CH_C","ZSH1_2_F_CH_ZV_C","ZSH1_2_F_CH_ZN_C"]];


_militiaLoadoutData set ["slRifles", [
["rhs_weap_ak74m","rhs_acc_dtk","","",["rhs_30Rnd_545x39_7N10_AK"],[],""],
["rhs_weap_akms","rhs_acc_dtkakm","","",["rhs_30Rnd_762x39mm_bakelite"],[],""]
]];
_militiaLoadoutData set ["rifles", [
["rhs_weap_ak74m","rhs_acc_dtk","","",["rhs_30Rnd_545x39_7N10_AK"],[],""],
["rhs_weap_akms","rhs_acc_dtkakm","","",["rhs_30Rnd_762x39mm_bakelite"],[],""]
]];
_militiaLoadoutData set ["carbines", [
["rhs_weap_aks74u","rhs_acc_pgs64_74u","","",["rhs_30Rnd_545x39_7N10_AK"],[],""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["rhs_weap_ak74m_gp25","rhs_acc_dtk","","",["rhs_30Rnd_545x39_7N10_AK"],["rhs_VOG25"],""]
]];
_militiaLoadoutData set ["SMGs", [
    ["CUP_smg_vityaz","","","",["CUP_30Rnd_9x19_Vityaz"],[],""],
    ["rhs_weap_pp2000","","","",["rhs_mag_9x19mm_7n21_20"],[],""]
]];
_militiaLoadoutData set ["machineGuns", [
["rhs_weap_pkp","","","",["rhs_100Rnd_762x54mmR"],[],""],
["rhs_weap_rpk74m","rhs_acc_dtkrpk","","",["rhs_45Rnd_545X39_7N6M_AK"],[],""]
]];

private _marksmanRifles = [
    ["rhs_weap_svdp_pso1","","","rhs_acc_pso1m2",["rhs_10Rnd_762x54mmR_7N1"],[],""],
    ["rhs_weap_45th_vss","","","rhs_acc_pso1m21",["rhs_10rnd_9x39mm_SP6"],[],""]
    ];
private _sniperRifles = [["rhs_weap_svdp_pso1","","","rhs_acc_pso1m2",["rhs_10Rnd_762x54mmR_7N1"],[],""]];
if (_hasMarksman) then {
    _marksmanRifles = [["srifle_DMR_06_olive_F", "", "", "optic_MRCO", [], [], ""]];
    _sniperRifles = [["srifle_DMR_06_olive_F", "", "", "optic_SOS", [], [], ""]];
};
_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", [
    ["rhs_weap_makarov_pm","","","",["rhs_mag_9x18_8_57N181S"],[],""],
    ["CUP_hgun_PMM","","","",["CUP_12Rnd_9x18_PMM_M"],[],""]
    ]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["min_rf_flora_officer"]];
_crewLoadoutData set ["vests", ["min_rf_highcapacity_vest_flora"]];
_crewLoadoutData set ["helmets", ["min_rf_cap_flora","rhs_tsh4"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["min_rf_pilot_overall","min_rf_helipilot_overall","E22_U_RAF_coveralls_blue_F"]];
_pilotLoadoutData set ["vests", []];
_pilotLoadoutData set ["helmets", ["min_rf_helmet_ace", "H_CrewHelmetHeli_I","E22_H_PilotHelmetFighter_RAF","CUP_H_RUS_ZSH_Shield_Down"]];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;