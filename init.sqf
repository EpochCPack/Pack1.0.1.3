/*	
	INITILIZATION
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;

// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxHeliCrashes= 15; // Default = 5
MaxVehicleLimit = 400; // Default = 50
MaxDynamicDebris = 200; // Default = 100
dayz_MapArea = 12000; // Default = 10000
dayz_maxLocalZombies = 40; // Default = 40 

// Default Loadout config
DefaultMagazines = ["8Rnd_9x18_Makarov","ItemBandage","ItemBandage","ItemMorphine","ItemPainkiller","ItemWaterbottleUnfilled"];
DefaultWeapons = ["ItemFlashlight","ItemWatch","ItemCompass","Makarov"];
DefaultBackpack = "DZ_TerminalPack_EP1";
DefaultBackpackWeapon = "";

//Load in compiled functions
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "dayz_code\variables.sqf";							    //Initilize the Custom Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
call compile preprocessFileLineNumbers "dayz_code\publicEH.sqf";								//Initilize the Custom publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile Regular Functions
call compile preprocessFileLineNumbers "dayz_code\compiles.sqf";								//Compile Custom Functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";									//Compile Trader Configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if ((!isServer) && (isNull player) ) then
{
waitUntil {!isNull player};
waitUntil {time > 3};
};

if ((!isServer) && (player != player)) then
{
  waitUntil {player == player}; 
  waitUntil {time > 3};
};

if (isServer) then {
	call compile preprocessFileLineNumbers "dynamic_vehicle.sqf";								//Compile Vehicle Configs
	
	// Add trader citys
	_nil = [] execVM "mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	_void = [] execVM "R3F_Realism\R3F_Realism_Init.sqf";
};

///////////////////////////////////////////////////////////////////////////////////////////
// Added Extras are below however some are also enabled/disabled via custom fn_selfactions.
// Add or Remove Comment at the START of each SCRIPT line below to enable or disable.
// Custom Loadscreen is found in load_screen - To replace make sure image is 2048x1024.
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////
// Sarge AI Area 

call compile preprocessFileLineNumbers "addons\UPSMON\scripts\Init_UPSMON.sqf";				// UPSMON (Needed for Sarge)
call compile preprocessfile "addons\SHK_pos\shk_pos_init.sqf";								// SHK (Needed for Sarge)
[] ExecVM "addons\SARGE\SAR_AI_init.sqf";													// SARGE AI - Roaming AI Survivor, Military and Bandit Groups

// For Custom Configuration see addons/SARGE/SAR_config.sqf
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////
// Custom Actions Area
// Self Blood Transfuions, Strip Clothing from Bodies, and Fireplace Dancing are in dayz_code\fn_selfActions.sqf
// Search for Self Bloodbag, Clothes and Dance and add * at the end and start of the //// above and below respectfully to disable.
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////
// POI Chernarus - By Bungle

[] ExecVM "custom\villages.sqf";															// Epoch Trader Villages 
[] ExecVM "custom\buildings.sqf";															// Extra Charnarus Buildings
//[] ExecVM "custom\raceday.sqf";															// Coastal Racetrack 1.0
//[] ExecVM "custom\fightyard.sqf";															// Cherno Fightyard 1.0
[] ExecVM "custom\bases2.sqf";																// Bases 1.2

// Race Day and the Fightyard are for events, unless you want them as default.
// Updates and additons on these will be posted seperate and included in future updates.
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////
// POI Chernarus - By Team BBC

[] ExecVM "custom\Barrage_Dan_BBC.sqf";														// Topolka Dam Military Base
[] ExecVM "custom\BlackLac_Dan_BBC.sqf";													// Black Lake Miltary Base
[] ExecVM "custom\bois1_Dan_BBC.sqf";														// Hidden Killers Ranch
[] ExecVM "custom\LieuxditPenduAto.sqf";													// Wreck Sites
[] ExecVM "custom\castle.sqf";																// The Dead Castle

// Upadtes and additons on these will be posted sepearte and included in furture updates.
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////
// Extra Map Upgrades

[] ExecVM "custom\devilscastle.sqf";														// Devils Castle Base by AVendettaForYou.

// Special Thanks to each for their awesome packs and hard work.
// Skalisty by Excelisor Bridge is on by default and disbaled by changing the missiondefault.sqm to mission.sqm
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////
// Logistics Area

[] ExecVM "custom\kh_actions.sqf";															// Refuel Script  
[] ExecVM "BTK\Cargo Drop\Start.sqf"; 														// BTK Cargo Drop 
[] ExecVM "R3F_ARTY_AND_LOG\init.sqf";														// R3F Logistics

// For more Refuel Locations add object classes to Line 14 of custom\kh_actions.sqf
// Limited Towing/Lifting/Cargo - See R3F_ARTY_AND_LOG\R3F_LOG\config.sqf
///////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////
// I hope you enjoy the pack thanks to everyone for their contributions.
// If you have any issues please let me know via the post on www.dayzepoch.com
// Special Thanks to the Epoch Development Team for their mod and hard work on the mod.
/////////////////////////////////////////////////////////////////////////////////////////