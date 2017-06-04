//This file allows you to add mod content to the mission without conflict issues after each update.

//*** SUPPORT STUFF ***

//Setting a value here will overwrite the original value found from the mission. Do this if you're doing a total mod conversion.
//Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil;									// BLUFORdefault: "Land_Cargo_HQ_V4_F"						//This is the FOB once deployed.
FOB_box_typename = nil;								// BLUFORdefault: "B_Slingload_01_Cargo_F"					//A cargo container for the FOB Box option.
FOB_truck_typename = nil;							// BLUFORdefault: "B_T_Truck_01_box_F"						//A box truck for the FOB Truck option.
Arsenal_typename = nil;								// BLUFORdefault: "B_supplyCrate_F"							//Arsenal Supply Box.
Respawn_truck_typename = nil;						// BLUFORdefault: "B_T_Truck_01_medical_F"					//Medical Truck & Mobile Respawn.
huron_typename = nil;								// BLUFORdefault: "B_Heli_Transport_03_F"					//The Mobile Respawn (Spartan-01). Should be able to lift containers/pods.
ammobox_b_typename = nil;							// BLUFORdefault: "Box_NATO_AmmoVeh_F"						//Friendly ammo crate that factories and bases will spawn.
ammobox_o_typename = nil;							// BLUFORdefault: "Box_East_AmmoVeh_F"						//Enemy ammo crates you find when capturing sectors.
opfor_ammobox_transport = nil;						// BLUFORdefault: "O_T_Truck_03_transport_ghex_F"			//Enemy ammo box transport - Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break!
commander_classname = nil;							// BLUFORdefault: "B_T_Officer_F"							//An Officer, not sure what for. xD
crewman_classname = nil;							// BLUFORdefault: "B_T_Crew_F"								//Crew for tanks with crew spawns I imagine.
pilot_classname = nil;								// BLUFORdefault: "B_T_Helipilot_F"							//Helipilot for helicopters with crew spawns, again, maybe.

//*** FRIENDLIES ***

//Each array below represents one page of the build menu. Format: ["classname", manpower, ammo, fuel]. Example: ["B_T_APC_Tracked_01_AA_F", 0, 40, 15].
//If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
//Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = false;
infantry_units_extension = [

];

light_vehicles_overwrite = false;
light_vehicles_extension = [

];

heavy_vehicles_overwrite = false;
heavy_vehicles_extension = [

];

air_vehicles_overwrite = false;
air_vehicles_extension = [
	["FIR_F16C",0,200,40],
	["JS_JC_FA18E",0,350,50],
	["JS_JC_FA18F",0,350,50]
];

static_vehicles_overwrite = false;
static_vehicles_extension = [

];

buildings_overwrite = false;
buildings_extension = [

];

//If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there.
support_vehicles_overwrite = false;
support_vehicles_extension = [

];

//All mod content UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
      
];

//Pre-made squads for the commander build menu. These shouldn't exceed 10 members and are already declared near the bottom of classnames.sqf!
	//Light infantry squad.
blufor_squad_inf_light = [

];

	//Heavy infantry squad.
blufor_squad_inf = [

];

	//AA specialists squad.
blufor_squad_aa = [

];

	//AT specialists squad.
blufor_squad_at = [

];

	//Force recon squad.
blufor_squad_recon = [

];

	//Paratroopers squad.
blufor_squad_para = [

];

//*** BADDIES ***
//All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_officer = nil;
opfor_team_leader = nil;
opfor_squad_leader = nil;
opfor_rifleman = nil;
opfor_grenadier = nil;
opfor_rpg = nil;
opfor_marksman = nil;
opfor_machinegunner = nil;
opfor_heavygunner = nil;
opfor_aa = nil;
opfor_at = nil;
opfor_medic = nil;
opfor_engineer = nil;
opfor_sentry = nil;
opfor_sharpshooter = nil;
opfor_sniper = nil;
opfor_paratrooper = nil;
//OPFOR Vehicles to be used in Secondary Objectives.
opfor_mrap = nil;
opfor_mrap_armed = nil;
opfor_transport_helo = nil;
opfor_transport_truck = nil;
opfor_fuel_truck = nil;
opfor_ammo_truck = nil;
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = nil;
//OPFOR Viper Squad to be used at high alert! 
//If you want to use a different high_intensity squad like say, Spetznaz, then don't change the 'opfor_vipertl =' part to something stupid like rus_spetznaz, otherwise you'll break things. Just change the nil variable and use "" around the classname still.
opfor_vipertl = nil;
opfor_viperop = nil;
opfor_viperri = nil;
opfor_viperma = nil;
opfor_viperde = nil;
opfor_viperpa = nil;

//Militia infantry. Soldier classnames the game will pick from randomly.
militia_squad_overwrite = false;
militia_squad_extension = [

];

//Militia vehicles to choose from randomly.
militia_vehicles_overwrite = false;
militia_vehicles_extension = [

];

//All the vehicles that can spawn as sector defenders and patrols.
opfor_vehicles_overwrite = false;
opfor_vehicles_extension = [

];

//Same with lighter choices to be used when the alert level is low.
opfor_vehicles_low_intensity_overwrite = false;
opfor_vehicles_low_intensity_extension = [

];

//All the vehicles that can spawn as battlegroup members.
opfor_battlegroup_vehicles_overwrite = false;
opfor_battlegroup_vehicles_extension = [

];

//Same with lighter choices to be used  when the alert level is low.
opfor_battlegroup_vehicles_low_intensity_overwrite = false;
opfor_battlegroup_vehicles_low_intensity_extension = [

];

//All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
//If something in here can't hold all 8 soldiers then buggy behaviours may occur.
opfor_troup_transports_overwrite = false;
opfor_troup_transports_extension = [

];

//Battlegroup members that will need to spawn in flight. Should be only helicopters but, who knows.
opfor_choppers_overwrite = false;
opfor_choppers_extension = [
	"O_Heli_Light_02_unarmed_F",					//Orca_Unarmed(Black)
	"O_Heli_Light_02_v2_F",							//PO-30_Orca_Armed(Black)	//Copying the vanilla classnames to here for helicopters and airplanes has fixed some of my personal problems with the mission.
	"O_Heli_Light_02_v2_F",							//PO-30_Orca_Armed(Black)	//I could be wrong but it can't hurt to be here anyway, can it?
	"O_Heli_Attack_02_black_F",						//Mi-48_Kajman(Black)		//Just in case: this issue included battlegroup helicopters still spawning on ground, planes too.
	"O_T_VTOL_02_infantry_F",						//Y-32_Xi'an_Infantry		//Planes as sector defenders need to be clarified also, or they will definitely spawn on the ground and struggle to lift off.
	"O_Plane_CAS_02_F"								//To-199_Neophron_CAS
];

//Opfor military aircrafts.
opfor_air_overwrite = false;
opfor_air_extension = [
	"O_T_VTOL_02_infantry_F",						//Y-32_Xi'an_Infantry
	"O_Plane_CAS_02_F"								//To-199_Neophron_CAS
];

//*** OTHER ***
civilians_overwrite = false;
civilians_extension = [

];

civilian_vehicles_overwrite = false;
civilian_vehicles_extension = [

];

//Everything the AI troups should be able to resupply from.
ai_resupply_sources_extension = [

];

//Everything that can resupply other vehicles.
vehicle_repair_sources_extension = [

];

vehicle_rearm_sources_extension = [

];

vehicle_refuel_sources_extension = [

];

//Elite vehicles that should be unlocked through military base capture, use this for vanilla vehicles as well. This list is the only reference in this version.
elite_vehicles_extension = [
	"B_T_MBT_01_cannon_F",					//M2A1_Slammer
	"B_T_MBT_01_TUSK_F",					//M2A1_Slammer_UP			
	"B_T_MBT_01_arty_F",					//M4_Scorcher
	"B_T_MBT_01_mlrs_F",					//M5_Sandstorm_MLRS
	"B_Heli_Attack_01_dynamicLoadout_F",	//AH-99_Blackfoot
	"B_Plane_CAS_01_F",						//A-164_Wipeout
	"JS_JC_FA18E",							//FA-18_SuperHornet_E
	"JS_JC_FA18F", 							//FA-18_SuperHornet_F
	"B_T_VTOL_01_armed_F"					//V-44_X_Blackfish_Armed
];

//Blacklisted arsenal items such as deployable weapons that should be bought instead. 
//Note: If you're looking to blacklist many classnames then instead, use arsenal.sqf to build a whitelist of allowed classnames.
blacklisted_from_arsenal_extension = [

];
//Configuration for ammo boxes to load into transport vehicles.
//[ "Classname", how far behind the vehicle the boxes should be unloaded, [attachTo position for each box] ].
//Example: [ "O_T_Truck_03_transport_ghex_F", -6.5, [0,	-0.8,	0.4], [0,	-2.4,	0.4], [0,	-4.0,	0.4] ] = TEMPEST_Transport with option to carry 3 ammo boxes.
box_transport_config_extension = [

];