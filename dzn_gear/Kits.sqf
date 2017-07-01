// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


// enemy kits

kit_ins_random = [
	"kit_ins_r"
	,"kit_ins_ar"
];

kit_INS_r = [
	["<EQUIPEMENT >>  ","usm_bdu_w","CUP_V_RUS_Smersh_1","","H_Bandanna_camo",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_INS_ar = [
	["<EQUIPEMENT >>  ","usm_bdu_w","CUP_V_RUS_Smersh_1","","H_Bandanna_camo",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m240B","rhsusf_50Rnd_762x51",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];

// frendly forces

kit_blue_r = [
	["<EQUIPEMENT >>  ","U_I_CombatUniform","usm_vest_rba_lbe_rm","","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3ka4","hlc_20rnd_762x51_b_G3",["","","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",11],["hlc_20rnd_762x51_T_G3",1],["rhs_mag_m67",4],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_blue_gr = [
	["<EQUIPEMENT >>  ","U_I_CombatUniform","usm_vest_rba_lbe_rm","","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","HLC_Rifle_g3ka4_GL","hlc_20rnd_762x51_b_G3",["","","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["1Rnd_HE_Grenade_shell",10],["rhs_mag_m67",2],["SmokeShell",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_blue_ftl = [
	["<EQUIPEMENT >>  ","U_I_CombatUniform","usm_vest_rba_lbe_rm","rhsusf_falconii","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","HLC_Rifle_g3ka4_GL","hlc_20rnd_762x51_T_G3",["","","rhsusf_acc_ACOG",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["hlc_20rnd_762x51_b_G3",6],["PRIMARY MAG",5],["1Rnd_HE_Grenade_shell",4],["UGL_FlareRed_F",3],["1Rnd_SmokeBlue_Grenade_shell",3],["1Rnd_SmokeYellow_Grenade_shell",3]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_m67",4],["SmokeShellYellow",2],["SmokeShellRed",2],["SmokeShellBlue",2],["SmokeShell",4]]]
];

kit_blue_ar = [
	["<EQUIPEMENT >>  ","U_I_CombatUniform","usm_vest_rba_lbv_mg","rhsusf_falconii","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","hlc_lmg_MG3KWS_b","hlc_100Rnd_762x51_B_MG3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3],["hlc_50Rnd_762x51_T_MG3",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_m67",2],["SmokeShell",4],["hlc_50Rnd_762x51_B_MG3",2]]]
];

kit_blue_pl = [
	["<EQUIPEMENT >>  ","U_I_CombatUniform","usm_vest_rba_lbe_rmp","tf_rt1523g_rhs","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3v","hlc_20rnd_762x51_T_G3",["","","HLC_Optic_ZFSG1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["hlc_20rnd_762x51_b_G3",5],["PRIMARY MAG",6],["SmokeShellBlue",2],["SmokeShellRed",2],["SmokeShellYellow",2],["SmokeShell",2],["rhs_mag_m67",2],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_blue_sl = [
	["<EQUIPEMENT >>  ","U_I_CombatUniform","usm_vest_rba_lbe_rmp","tf_rt1523g_rhs","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3v","hlc_20rnd_762x51_T_G3",["","","HLC_Optic_ZFSG1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["hlc_20rnd_762x51_b_G3",5],["PRIMARY MAG",6],["SmokeShellBlue",2],["SmokeShellRed",2],["SmokeShellYellow",2],["SmokeShell",2],["rhs_mag_m67",2],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_NewCargoKitName = [
	[],
	[["hlc_20rnd_762x51_T_G3",10],["hlc_20rnd_762x51_b_G3",30],["hlc_50Rnd_762x51_B_MG3",10],["rhs_mag_M441_HE",10]],
	[["ACE_quikclot",10],["ACE_elasticBandage",10],["ACE_fieldDressing",10]],
	[]
];



