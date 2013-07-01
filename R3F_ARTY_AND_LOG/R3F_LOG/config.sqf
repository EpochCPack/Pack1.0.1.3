/**
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du syst�me de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes d�rivant de celles utilis�es dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour g�rer de nouveaux objets avec le syst�me logistique. Le premier consiste � ajouter
 * ces objets dans les listes appropri�es ci-dessous. Le deuxi�me est de cr�er un fichier externe dans le r�pertoire
 * /addons_config/ selon le m�me sch�ma que ceux qui existent d�j�, et d'ajouter un #include � la fin de ce pr�sent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs =
[
	"V3S_Civ",
	"V3S_Open_TK_CIV_EP1",
	"V3S_Open_TK_EP1",
	"UralCivil",
	"UralCivil2",
	"Ural_UN_EP1",
	"Ural_TK_CIV_EP1",
	"Ural_CDF",
	"Kamaz",
	"MTVR_DES_EP1"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables =
[
	"VWGolf",
	"Lada1",
	"Lada2",
	"LadaLM",
	"Lada2_TK_CIV_EP1",
	"Skoda",
	"SkodaGreen",
	"SkodaRed",
	"SkodaBlue",
	"car_sedan",
	"car_hatchback",
	"policecar",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Volha_1_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
	"S1203_ambulance_EP1",
	"S1203_TK_CIV_EP1",
	"Ikarus",
	"Ikarus_TK_CIV_EP1",
	"tractor",
	"SUV_TK_CIV_EP1",
	"SUV_Green",
	"SUV_Yellow",
	"SUV_White",
	"SUV_Silver",
	"SUV_Red",
	"SUV_Pink",
	"SUV_Orange",
	"SUV_Charcoal",
	"SUV_Blue",
	"ArmoredSUV_PMC_DZ",
	"SUV_Camo",
	"HMMWV_Ambulance",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_DES_EP1",
	"HMMWV_DZ",
	"HMMWV_M1035_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1",
	"HMMWV_M998A2_SOV_DES_EP1",
	"LandRover_CZ_EP1",
	"LandRover_MG_TK_EP1",
	"LandRover_Special_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"M1030_US_DES_EP1",
	"UAZ_Unarmed_TK_EP1",
	"UAZ_Unarmed_TK_CIV_EP1",
	"UAZ_Unarmed_UN_EP1",
	"UAZ_MG_TK_EP1",
	"UAZ_INS",
	"UAZ_RU",
	"UAZ_CDF",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",
	"Pickup_PK_TK_GUE_EP1",
	"Pickup_PK_GUE",
	"Pickup_PK_INS",
	"Offroad_DSHKM_Gue"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs =
[
	"Mi17_DZ",
	"Mi17_Civilian_DZ",
	"CH_47F_EP1_DZ"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables =
[
	"VWGolf",
	"Lada1",
	"Lada2",
	"LadaLM",
	"Lada2_TK_CIV_EP1",
	"Skoda",
	"SkodaGreen",
	"SkodaRed",
	"SkodaBlue",
	"car_sedan",
	"car_hatchback",
	"policecar",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Volha_1_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
	"S1203_ambulance_EP1",
	"S1203_TK_CIV_EP1",
	"Ikarus",
	"Ikarus_TK_CIV_EP1",
	"tractor",
	"SUV_TK_CIV_EP1",
	"SUV_Green",
	"SUV_Yellow",
	"SUV_White",
	"SUV_Silver",
	"SUV_Red",
	"SUV_Pink",
	"SUV_Orange",
	"SUV_Charcoal",
	"SUV_Blue",
	"ArmoredSUV_PMC_DZ",
	"SUV_Camo",
	"HMMWV_Ambulance",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_DES_EP1",
	"HMMWV_DZ",
	"HMMWV_M1035_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1",
	"HMMWV_M998A2_SOV_DES_EP1",
	"LandRover_CZ_EP1",
	"LandRover_MG_TK_EP1",
	"LandRover_Special_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"M1030_US_DES_EP1",
	"UAZ_Unarmed_TK_EP1",
	"UAZ_Unarmed_TK_CIV_EP1",
	"UAZ_Unarmed_UN_EP1",
	"UAZ_MG_TK_EP1",
	"UAZ_INS",
	"UAZ_RU",
	"UAZ_CDF",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",
	"Pickup_PK_TK_GUE_EP1",
	"Pickup_PK_GUE",
	"Pickup_PK_INS",
	"Offroad_DSHKM_Gue",
	"V3S_Open_TK_CIV_EP1",
	"V3S_Open_TK_EP1",
	"Ural_UN_EP1",
	"Ural_TK_CIV_EP1",
	"Ural_CDF",
	"Kamaz",
	"MTVR_DES_EP1",
	"GAZ_Vodnik",
	"GAZ_Vodnik_MedEvac"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le r�f�rentiel arbitraire utilis� est : une caisse de munition de type USVehicleBox "p�se" 12 unit�s.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorit� d'une d�claration de capacit� sur une autre correspond � leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient � la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est d�clar� avec une capacit� de 140 avant "Car". Et que "Car" est d�clar� apr�s "Truck" avec une capacit� de 40,
 *   Alors toutes les sous-classes appartenant � "Truck" auront une capacit� de 140. Et toutes les sous-classes appartenant
 *   � "Car", except�es celles de "Truck", auront une capacit� de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules (terrestres ou a�riens) pouvant transporter des objets transportables.
 * Le deuxi�me �l�ment des tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_transporteurs =
[
	["CH_47F_EP1_DZ", 100],
	["Mi17_DZ", 50],
	["Mi24_D_TK_EP1_DZ", 50],
	["Mi17_Civilian_DZ", 50],
	["MTVR_DES_EP1", 50],
	["V3S_Open_TK_CIV_EP1", 50],
	["V3S_Open_TK_EP1", 50],
	["Ural_UN_EP1", 50],
	["Ural_TK_CIV_EP1", 50],
	["Ural_CDF", 50],
	["hilux1_civil_1_open", 25],
	["hilux1_civil_2_covered", 25],
	["hilux1_civil_3_open_EP1", 25],
	["datsun1_civil_1_open", 25],
	["datsun1_civil_2_covered", 25],
	["datsun1_civil_3_open", 25],
	["Pickup_PK_TK_GUE_EP1", 25],
	["Pickup_PK_GUE", 25],
	["Pickup_PK_INS", 25],
	["Offroad_DSHKM_Gue", 25],
	["Pickup_PK_GUE", 25],
	["LandRover_CZ_EP1", 10],
	["LandRover_MG_TK_EP1", 10],
	["LandRover_Special_CZ_EP1", 10],
	["LandRover_TK_CIV_EP1", 10],
	["SUV_Green", 10],
	["SUV_Yellow", 10],
	["SUV_White", 10],
	["SUV_Silver", 10],
	["SUV_Red", 10],
	["SUV_Pink", 10],
	["SUV_Orange", 10],
	["SUV_Charcoal", 10],
	["SUV_Blue", 10],
	["ArmoredSUV_PMC_DZ", 10],
	["SUV_Camo", 10]	
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
R3F_LOG_CFG_objets_transportables =
[
	["VWGolf", 100],
	["Lada1", 100],
	["Lada2", 100],
	["LadaLM", 100],
	["Lada2_TK_CIV_EP1", 100],
	["Skoda", 100],
	["SkodaGreen", 100],
	["SkodaRed", 100],
	["SkodaBlue", 100],
	["car_sedan", 100],
	["car_hatchback", 100],
	["policecar", 100],
	["ATV_CZ_EP1", 50],
	["ATV_US_EP1", 50],
	["Old_moto_TK_Civ_EP1", 25],
	["M1030_US_DES_EP1", 25],
	["TT650_Civ", 25],
	["TT650_Ins", 25],
	["TT650_TK_CIV_EP1", 25],
	["MMT_Civ", 25],
	["Old_bike_TK_INS_EP1", 25],
	["Barrels", 15],
	["USVehicleBox_EP1", 10],
	["USSpecialWeaponsBox", 5],
	["TKSpecialWeapons_EP1", 5],
	["BAF_BasicAmmunitionBox", 5]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */
R3F_LOG_CFG_objets_deplacables =
[
	"MMT_Civ",
	"Old_bike_TK_INS_EP1",
	"Barrels",
	"USSpecialWeaponsBox",
	"USVehicleBox_EP1",
	"TKSpecialWeapons_EP1",
	"BAF_BasicAmmunitionBox"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalit�s logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
//#include "addons_config\ACE_OA_objects.sqf"
//#include "addons_config\BAF_objects.sqf"
//#include "addons_config\arma2_CO_objects.sqf"