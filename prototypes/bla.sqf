(["sqf/rarma/object"] call require);
CLASS_EXTEND("SQF", "Rarma_Object")
    ([AISFinishHeal] call native);
    PUBLIC FUNCTION("array", "AISFinishHeal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "AISFinishHeal _args;";
    };
    ([ASLtoATL] call native);
    PUBLIC FUNCTION("array", "ASLtoATL") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ASLtoATL _args;";
    };
    ([ATLtoASL] call native);
    PUBLIC FUNCTION("array", "ATLtoASL") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ATLtoASL _args;";
    };
    ([HUDMovementLevels] call native);
    PUBLIC FUNCTION("", "HUDMovementLevels") {
        "HUDMovementLevels";
    };
    ([WFSideText] call native);
    PUBLIC FUNCTION("array", "WFSideText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "WFSideText _args;";
    };
    ([abs] call native);
    PUBLIC FUNCTION("array", "abs") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "abs _args;";
    };
    ([accTime] call native);
    PUBLIC FUNCTION("", "accTime") {
        "accTime";
    };
    ([acos] call native);
    PUBLIC FUNCTION("array", "acos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "acos _args;";
    };
    ([action] call native);
    PUBLIC FUNCTION("array", "action") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj action _args;";
    };
    ([actionKeys] call native);
    PUBLIC FUNCTION("array", "actionKeys") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "actionKeys _args;";
    };
    ([actionKeysImages] call native);
    PUBLIC FUNCTION("array", "actionKeysImages") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "actionKeysImages _args;";
    };
    ([actionKeysNames] call native);
    PUBLIC FUNCTION("array", "actionKeysNames") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "actionKeysNames _args;";
    };
    ([actionKeysNamesArray] call native);
    PUBLIC FUNCTION("array", "actionKeysNamesArray") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "actionKeysNamesArray _args;";
    };
    ([actionName] call native);
    PUBLIC FUNCTION("array", "actionName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "actionName _args;";
    };
    ([activateAddons] call native);
    PUBLIC FUNCTION("array", "activateAddons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "activateAddons _args;";
    };
    ([activateKey] call native);
    PUBLIC FUNCTION("array", "activateKey") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "activateKey _args;";
    };
    ([activatedAddons] call native);
    PUBLIC FUNCTION("", "activatedAddons") {
        "activatedAddons";
    };
    ([addBackpack] call native);
    PUBLIC FUNCTION("array", "addBackpack") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addBackpack _args;";
    };
    ([addBackpackCargo] call native);
    PUBLIC FUNCTION("array", "addBackpackCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addBackpackCargo _args;";
    };
    ([addBackpackCargoGlobal] call native);
    PUBLIC FUNCTION("array", "addBackpackCargoGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addBackpackCargoGlobal _args;";
    };
    ([addCamShake] call native);
    PUBLIC FUNCTION("array", "addCamShake") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "addCamShake _args;";
    };
    ([addCuratorAddons] call native);
    PUBLIC FUNCTION("array", "addCuratorAddons") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addCuratorAddons _args;";
    };
    ([addCuratorCameraArea] call native);
    PUBLIC FUNCTION("array", "addCuratorCameraArea") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addCuratorCameraArea _args;";
    };
    ([addCuratorEditableObjects] call native);
    PUBLIC FUNCTION("array", "addCuratorEditableObjects") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addCuratorEditableObjects _args;";
    };
    ([addCuratorEditingArea] call native);
    PUBLIC FUNCTION("array", "addCuratorEditingArea") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addCuratorEditingArea _args;";
    };
    ([addCuratorPoints] call native);
    PUBLIC FUNCTION("array", "addCuratorPoints") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addCuratorPoints _args;";
    };
    ([addEditorObject] call native);
    PUBLIC FUNCTION("array", "addEditorObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addEditorObject _args;";
    };
    ([addEventHandler] call native);
    PUBLIC FUNCTION("array", "addEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addEventHandler _args;";
    };
    ([addGoggles] call native);
    PUBLIC FUNCTION("array", "addGoggles") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addGoggles _args;";
    };
    ([addGroupIcon] call native);
    PUBLIC FUNCTION("array", "addGroupIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addGroupIcon _args;";
    };
    ([addHandgunItem] call native);
    PUBLIC FUNCTION("array", "addHandgunItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addHandgunItem _args;";
    };
    ([addHeadgear] call native);
    PUBLIC FUNCTION("array", "addHeadgear") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addHeadgear _args;";
    };
    ([addItem] call native);
    PUBLIC FUNCTION("array", "addItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addItem _args;";
    };
    ([addItemCargo] call native);
    PUBLIC FUNCTION("array", "addItemCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addItemCargo _args;";
    };
    ([addItemCargoGlobal] call native);
    PUBLIC FUNCTION("array", "addItemCargoGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addItemCargoGlobal _args;";
    };
    ([addItemPool] call native);
    PUBLIC FUNCTION("array", "addItemPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "addItemPool _args;";
    };
    ([addItemToBackpack] call native);
    PUBLIC FUNCTION("array", "addItemToBackpack") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addItemToBackpack _args;";
    };
    ([addItemToUniform] call native);
    PUBLIC FUNCTION("array", "addItemToUniform") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addItemToUniform _args;";
    };
    ([addItemToVest] call native);
    PUBLIC FUNCTION("array", "addItemToVest") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addItemToVest _args;";
    };
    ([addLiveStats] call native);
    PUBLIC FUNCTION("array", "addLiveStats") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addLiveStats _args;";
    };
    ([addMPEventHandler] call native);
    PUBLIC FUNCTION("array", "addMPEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMPEventHandler _args;";
    };
    ([addMagazine] call native);
    PUBLIC FUNCTION("array", "addMagazine") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazine _args;";
    };
    ([addMagazineCargo] call native);
    PUBLIC FUNCTION("array", "addMagazineCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazineCargo _args;";
    };
    ([addMagazineCargoGlobal] call native);
    PUBLIC FUNCTION("array", "addMagazineCargoGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazineCargoGlobal _args;";
    };
    ([addMagazineGlobal] call native);
    PUBLIC FUNCTION("array", "addMagazineGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazineGlobal _args;";
    };
    ([addMagazinePool] call native);
    PUBLIC FUNCTION("array", "addMagazinePool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "addMagazinePool _args;";
    };
    ([addMagazineTurret] call native);
    PUBLIC FUNCTION("array", "addMagazineTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazineTurret _args;";
    };
    ([addMagazine] call native);
    PUBLIC FUNCTION("array", "addMagazine") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazine _args;";
    };
    ([addMagazines] call native);
    PUBLIC FUNCTION("array", "addMagazines") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazines _args;";
    };
    ([addMenu] call native);
    PUBLIC FUNCTION("array", "addMenu") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMenu _args;";
    };
    ([addMenuItem] call native);
    PUBLIC FUNCTION("array", "addMenuItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMenuItem _args;";
    };
    ([addMissionEventHandler] call native);
    PUBLIC FUNCTION("array", "addMissionEventHandler") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "addMissionEventHandler _args;";
    };
    ([addMusicEventHandler] call native);
    PUBLIC FUNCTION("array", "addMusicEventHandler") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "addMusicEventHandler _args;";
    };
    ([addPrimaryWeaponItem] call native);
    PUBLIC FUNCTION("array", "addPrimaryWeaponItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addPrimaryWeaponItem _args;";
    };
    ([addPublicVariableEventHandler] call native);
    PUBLIC FUNCTION("array", "addPublicVariableEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addPublicVariableEventHandler _args;";
    };
    ([addRating] call native);
    PUBLIC FUNCTION("array", "addRating") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addRating _args;";
    };
    ([addResources] call native);
    PUBLIC FUNCTION("array", "addResources") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addResources _args;";
    };
    ([addScore] call native);
    PUBLIC FUNCTION("array", "addScore") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addScore _args;";
    };
    ([addScoreSide] call native);
    PUBLIC FUNCTION("array", "addScoreSide") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addScoreSide _args;";
    };
    ([addSecondaryWeaponItem] call native);
    PUBLIC FUNCTION("array", "addSecondaryWeaponItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addSecondaryWeaponItem _args;";
    };
    ([addSwitchableUnit] call native);
    PUBLIC FUNCTION("array", "addSwitchableUnit") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "addSwitchableUnit _args;";
    };
    ([addTeamMember] call native);
    PUBLIC FUNCTION("array", "addTeamMember") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addTeamMember _args;";
    };
    ([addUniform] call native);
    PUBLIC FUNCTION("array", "addUniform") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addUniform _args;";
    };
    ([addVehicle] call native);
    PUBLIC FUNCTION("array", "addVehicle") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addVehicle _args;";
    };
    ([addVest] call native);
    PUBLIC FUNCTION("array", "addVest") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addVest _args;";
    };
    ([addWaypoint] call native);
    PUBLIC FUNCTION("array", "addWaypoint") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addWaypoint _args;";
    };
    ([addWeapon] call native);
    PUBLIC FUNCTION("array", "addWeapon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addWeapon _args;";
    };
    ([addWeaponCargo] call native);
    PUBLIC FUNCTION("array", "addWeaponCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addWeaponCargo _args;";
    };
    ([addWeaponCargoGlobal] call native);
    PUBLIC FUNCTION("array", "addWeaponCargoGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addWeaponCargoGlobal _args;";
    };
    ([addWeaponGlobal] call native);
    PUBLIC FUNCTION("array", "addWeaponGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addWeaponGlobal _args;";
    };
    ([addWeaponPool] call native);
    PUBLIC FUNCTION("array", "addWeaponPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "addWeaponPool _args;";
    };
    ([agent] call native);
    PUBLIC FUNCTION("array", "agent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "agent _args;";
    };
    ([agents] call native);
    PUBLIC FUNCTION("", "agents") {
        "agents";
    };
    ([aimPos] call native);
    PUBLIC FUNCTION("array", "aimPos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "aimPos _args;";
    };
    ([aimedAtTarget] call native);
    PUBLIC FUNCTION("array", "aimedAtTarget") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj aimedAtTarget _args;";
    };
    ([airportSide] call native);
    PUBLIC FUNCTION("array", "airportSide") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "airportSide _args;";
    };
    ([alive] call native);
    PUBLIC FUNCTION("array", "alive") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "alive _args;";
    };
    ([allCurators] call native);
    PUBLIC FUNCTION("", "allCurators") {
        "allCurators";
    };
    ([allDead] call native);
    PUBLIC FUNCTION("", "allDead") {
        "allDead";
    };
    ([allDeadMen] call native);
    PUBLIC FUNCTION("", "allDeadMen") {
        "allDeadMen";
    };
    ([allGroups] call native);
    PUBLIC FUNCTION("", "allGroups") {
        "allGroups";
    };
    ([allMapMarkers] call native);
    PUBLIC FUNCTION("", "allMapMarkers") {
        "allMapMarkers";
    };
    ([allMissionObjects] call native);
    PUBLIC FUNCTION("array", "allMissionObjects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "allMissionObjects _args;";
    };
    ([allSites] call native);
    PUBLIC FUNCTION("", "allSites") {
        "allSites";
    };
    ([allUnits] call native);
    PUBLIC FUNCTION("", "allUnits") {
        "allUnits";
    };
    ([allUnitsUav] call native);
    PUBLIC FUNCTION("", "allUnitsUav") {
        "allUnitsUav";
    };
    ([allow3DMode] call native);
    PUBLIC FUNCTION("array", "allow3DMode") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj allow3DMode _args;";
    };
    ([allowCrewInImmobile] call native);
    PUBLIC FUNCTION("array", "allowCrewInImmobile") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj allowCrewInImmobile _args;";
    };
    ([allowCuratorLogicIgnoreAreas] call native);
    PUBLIC FUNCTION("array", "allowCuratorLogicIgnoreAreas") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj allowCuratorLogicIgnoreAreas _args;";
    };
    ([allowDamage] call native);
    PUBLIC FUNCTION("array", "allowDamage") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj allowDamage _args;";
    };
    ([allowFileOperations] call native);
    PUBLIC FUNCTION("array", "allowFileOperations") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj allowFileOperations _args;";
    };
    ([allowFleeing] call native);
    PUBLIC FUNCTION("array", "allowFleeing") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj allowFleeing _args;";
    };
    ([allowGetIn] call native);
    PUBLIC FUNCTION("array", "allowGetIn") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj allowGetIn _args;";
    };
    ([ammo] call native);
    PUBLIC FUNCTION("array", "ammo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ammo _args;";
    };
    ([animate] call native);
    PUBLIC FUNCTION("array", "animate") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj animate _args;";
    };
    ([animateDoor] call native);
    PUBLIC FUNCTION("array", "animateDoor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj animateDoor _args;";
    };
    ([animationPhase] call native);
    PUBLIC FUNCTION("array", "animationPhase") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj animationPhase _args;";
    };
    ([animationState] call native);
    PUBLIC FUNCTION("array", "animationState") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "animationState _args;";
    };
    ([armoryPoints] call native);
    PUBLIC FUNCTION("", "armoryPoints") {
        "armoryPoints";
    };
    ([asin] call native);
    PUBLIC FUNCTION("array", "asin") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "asin _args;";
    };
    ([assert] call native);
    PUBLIC FUNCTION("array", "assert") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assert _args;";
    };
    ([assignAsCargo] call native);
    PUBLIC FUNCTION("array", "assignAsCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignAsCargo _args;";
    };
    ([assignAsCargoIndex] call native);
    PUBLIC FUNCTION("array", "assignAsCargoIndex") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignAsCargoIndex _args;";
    };
    ([assignAsCommander] call native);
    PUBLIC FUNCTION("array", "assignAsCommander") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignAsCommander _args;";
    };
    ([assignAsDriver] call native);
    PUBLIC FUNCTION("array", "assignAsDriver") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignAsDriver _args;";
    };
    ([assignAsGunner] call native);
    PUBLIC FUNCTION("array", "assignAsGunner") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignAsGunner _args;";
    };
    ([assignAsTurret] call native);
    PUBLIC FUNCTION("array", "assignAsTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignAsTurret _args;";
    };
    ([assignCurator] call native);
    PUBLIC FUNCTION("array", "assignCurator") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignCurator _args;";
    };
    ([assignItem] call native);
    PUBLIC FUNCTION("array", "assignItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignItem _args;";
    };
    ([assignTeam] call native);
    PUBLIC FUNCTION("array", "assignTeam") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj assignTeam _args;";
    };
    ([assignToAirport] call native);
    PUBLIC FUNCTION("", "assignToAirport") {
        "assignToAirport";
    };
    ([assignedCargo] call native);
    PUBLIC FUNCTION("array", "assignedCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedCargo _args;";
    };
    ([assignedCommander] call native);
    PUBLIC FUNCTION("array", "assignedCommander") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedCommander _args;";
    };
    ([assignedDriver] call native);
    PUBLIC FUNCTION("array", "assignedDriver") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedDriver _args;";
    };
    ([assignedGunner] call native);
    PUBLIC FUNCTION("array", "assignedGunner") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedGunner _args;";
    };
    ([assignedItems] call native);
    PUBLIC FUNCTION("array", "assignedItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedItems _args;";
    };
    ([assignedTarget] call native);
    PUBLIC FUNCTION("array", "assignedTarget") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedTarget _args;";
    };
    ([assignedTeam] call native);
    PUBLIC FUNCTION("array", "assignedTeam") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedTeam _args;";
    };
    ([assignedVehicle] call native);
    PUBLIC FUNCTION("array", "assignedVehicle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedVehicle _args;";
    };
    ([assignedVehicleRole] call native);
    PUBLIC FUNCTION("array", "assignedVehicleRole") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "assignedVehicleRole _args;";
    };
    ([atan] call native);
    PUBLIC FUNCTION("array", "atan") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "atan _args;";
    };
    ([atan2] call native);
    PUBLIC FUNCTION("array", "atan2") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj atan2 _args;";
    };
    ([attachObject] call native);
    PUBLIC FUNCTION("array", "attachObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj attachObject _args;";
    };
    ([attachTo] call native);
    PUBLIC FUNCTION("array", "attachTo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj attachTo _args;";
    };
    ([attachedObject] call native);
    PUBLIC FUNCTION("array", "attachedObject") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "attachedObject _args;";
    };
    ([attachedObjects] call native);
    PUBLIC FUNCTION("array", "attachedObjects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "attachedObjects _args;";
    };
    ([attachedTo] call native);
    PUBLIC FUNCTION("array", "attachedTo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "attachedTo _args;";
    };
    ([attackEnabled] call native);
    PUBLIC FUNCTION("array", "attackEnabled") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "attackEnabled _args;";
    };
    ([backpack] call native);
    PUBLIC FUNCTION("array", "backpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "backpack _args;";
    };
    ([backpackCargo] call native);
    PUBLIC FUNCTION("array", "backpackCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "backpackCargo _args;";
    };
    ([backpackContainer] call native);
    PUBLIC FUNCTION("array", "backpackContainer") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "backpackContainer _args;";
    };
    ([backpackItems] call native);
    PUBLIC FUNCTION("array", "backpackItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "backpackItems _args;";
    };
    ([backpackMagazines] call native);
    PUBLIC FUNCTION("array", "backpackMagazines") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "backpackMagazines _args;";
    };
    ([behaviour] call native);
    PUBLIC FUNCTION("array", "behaviour") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "behaviour _args;";
    };
    ([benchmark] call native);
    PUBLIC FUNCTION("", "benchmark") {
        "benchmark";
    };
    ([binocular] call native);
    PUBLIC FUNCTION("array", "binocular") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "binocular _args;";
    };
    ([blufor] call native);
    PUBLIC FUNCTION("", "blufor") {
        "blufor";
    };
    ([boundingBox] call native);
    PUBLIC FUNCTION("array", "boundingBox") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "boundingBox _args;";
    };
    ([boundingBoxReal] call native);
    PUBLIC FUNCTION("array", "boundingBoxReal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "boundingBoxReal _args;";
    };
    ([boundingCenter] call native);
    PUBLIC FUNCTION("array", "boundingCenter") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "boundingCenter _args;";
    };
    ([breakOut] call native);
    PUBLIC FUNCTION("array", "breakOut") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "breakOut _args;";
    };
    ([breakTo] call native);
    PUBLIC FUNCTION("array", "breakTo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "breakTo _args;";
    };
    ([briefingName] call native);
    PUBLIC FUNCTION("", "briefingName") {
        "briefingName";
    };
    ([buildingExit] call native);
    PUBLIC FUNCTION("array", "buildingExit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj buildingExit _args;";
    };
    ([buildingPos] call native);
    PUBLIC FUNCTION("array", "buildingPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj buildingPos _args;";
    };
    ([buttonAction] call native);
    PUBLIC FUNCTION("array", "buttonAction") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "buttonAction _args;";
    };
    ([buttonSetAction] call native);
    PUBLIC FUNCTION("array", "buttonSetAction") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj buttonSetAction _args;";
    };
    ([cadetMode] call native);
    PUBLIC FUNCTION("", "cadetMode") {
        "cadetMode";
    };
    ([call] call native);
    PUBLIC FUNCTION("array", "call") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj call _args;";
    };
    ([callExtension] call native);
    PUBLIC FUNCTION("array", "callExtension") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj callExtension _args;";
    };
    ([camCommand] call native);
    PUBLIC FUNCTION("array", "camCommand") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camCommand _args;";
    };
    ([camCommit] call native);
    PUBLIC FUNCTION("array", "camCommit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camCommit _args;";
    };
    ([camCommitPrepared] call native);
    PUBLIC FUNCTION("array", "camCommitPrepared") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camCommitPrepared _args;";
    };
    ([camCommitted] call native);
    PUBLIC FUNCTION("array", "camCommitted") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "camCommitted _args;";
    };
    ([camConstuctionSetParams] call native);
    PUBLIC FUNCTION("array", "camConstuctionSetParams") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camConstuctionSetParams _args;";
    };
    ([camCreate] call native);
    PUBLIC FUNCTION("array", "camCreate") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camCreate _args;";
    };
    ([camDestroy] call native);
    PUBLIC FUNCTION("array", "camDestroy") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "camDestroy _args;";
    };
    ([camPreload] call native);
    PUBLIC FUNCTION("array", "camPreload") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPreload _args;";
    };
    ([camPreloaded] call native);
    PUBLIC FUNCTION("array", "camPreloaded") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "camPreloaded _args;";
    };
    ([camPrepareBank] call native);
    PUBLIC FUNCTION("array", "camPrepareBank") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareBank _args;";
    };
    ([camPrepareDir] call native);
    PUBLIC FUNCTION("array", "camPrepareDir") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareDir _args;";
    };
    ([camPrepareDive] call native);
    PUBLIC FUNCTION("array", "camPrepareDive") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareDive _args;";
    };
    ([camPrepareFocus] call native);
    PUBLIC FUNCTION("array", "camPrepareFocus") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareFocus _args;";
    };
    ([camPrepareFov] call native);
    PUBLIC FUNCTION("array", "camPrepareFov") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareFov _args;";
    };
    ([camPrepareFovRange] call native);
    PUBLIC FUNCTION("array", "camPrepareFovRange") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareFovRange _args;";
    };
    ([camPreparePos] call native);
    PUBLIC FUNCTION("array", "camPreparePos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPreparePos _args;";
    };
    ([camPrepareRelPos] call native);
    PUBLIC FUNCTION("array", "camPrepareRelPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareRelPos _args;";
    };
    ([camPrepareTarget] call native);
    PUBLIC FUNCTION("array", "camPrepareTarget") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camPrepareTarget _args;";
    };
    ([camSetBank] call native);
    PUBLIC FUNCTION("array", "camSetBank") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetBank _args;";
    };
    ([camSetDir] call native);
    PUBLIC FUNCTION("array", "camSetDir") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetDir _args;";
    };
    ([camSetDive] call native);
    PUBLIC FUNCTION("array", "camSetDive") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetDive _args;";
    };
    ([camSetFocus] call native);
    PUBLIC FUNCTION("array", "camSetFocus") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetFocus _args;";
    };
    ([camSetFov] call native);
    PUBLIC FUNCTION("array", "camSetFov") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetFov _args;";
    };
    ([camSetFovRange] call native);
    PUBLIC FUNCTION("array", "camSetFovRange") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetFovRange _args;";
    };
    ([camSetPos] call native);
    PUBLIC FUNCTION("array", "camSetPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetPos _args;";
    };
    ([camSetRelPos] call native);
    PUBLIC FUNCTION("array", "camSetRelPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetRelPos _args;";
    };
    ([camSetTarget] call native);
    PUBLIC FUNCTION("array", "camSetTarget") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj camSetTarget _args;";
    };
    ([camTarget] call native);
    PUBLIC FUNCTION("array", "camTarget") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "camTarget _args;";
    };
    ([camUseNVG] call native);
    PUBLIC FUNCTION("array", "camUseNVG") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "camUseNVG _args;";
    };
    ([cameraEffect] call native);
    PUBLIC FUNCTION("array", "cameraEffect") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj cameraEffect _args;";
    };
    ([cameraEffectEnableHUD] call native);
    PUBLIC FUNCTION("array", "cameraEffectEnableHUD") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "cameraEffectEnableHUD _args;";
    };
    ([cameraInterest] call native);
    PUBLIC FUNCTION("array", "cameraInterest") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "cameraInterest _args;";
    };
    ([cameraOn] call native);
    PUBLIC FUNCTION("", "cameraOn") {
        "cameraOn";
    };
    ([cameraView] call native);
    PUBLIC FUNCTION("", "cameraView") {
        "cameraView";
    };
    ([campaignConfigFile] call native);
    PUBLIC FUNCTION("", "campaignConfigFile") {
        "campaignConfigFile";
    };
    ([canAdd] call native);
    PUBLIC FUNCTION("array", "canAdd") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj canAdd _args;";
    };
    ([canAddItemToBackpack] call native);
    PUBLIC FUNCTION("array", "canAddItemToBackpack") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj canAddItemToBackpack _args;";
    };
    ([canAddItemToUniform] call native);
    PUBLIC FUNCTION("array", "canAddItemToUniform") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj canAddItemToUniform _args;";
    };
    ([canAddItemToVest] call native);
    PUBLIC FUNCTION("array", "canAddItemToVest") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj canAddItemToVest _args;";
    };
    ([canFire] call native);
    PUBLIC FUNCTION("array", "canFire") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "canFire _args;";
    };
    ([canMove] call native);
    PUBLIC FUNCTION("array", "canMove") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "canMove _args;";
    };
    ([canStand] call native);
    PUBLIC FUNCTION("array", "canStand") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "canStand _args;";
    };
    ([canUnloadInCombat] call native);
    PUBLIC FUNCTION("array", "canUnloadInCombat") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "canUnloadInCombat _args;";
    };
    ([cancelSimpleTaskDestination] call native);
    PUBLIC FUNCTION("array", "cancelSimpleTaskDestination") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "cancelSimpleTaskDestination _args;";
    };
    ([captive] call native);
    PUBLIC FUNCTION("array", "captive") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "captive _args;";
    };
    ([captiveNum] call native);
    PUBLIC FUNCTION("array", "captiveNum") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "captiveNum _args;";
    };
    ([case] call native);
    PUBLIC FUNCTION("array", "case") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "case _args;";
    };
    ([catch] call native);
    PUBLIC FUNCTION("array", "catch") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj catch _args;";
    };
    ([cbChecked] call native);
    PUBLIC FUNCTION("array", "cbChecked") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "cbChecked _args;";
    };
    ([cbSetChecked] call native);
    PUBLIC FUNCTION("array", "cbSetChecked") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj cbSetChecked _args;";
    };
    ([ceil] call native);
    PUBLIC FUNCTION("array", "ceil") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ceil _args;";
    };
    ([cheatsEnabled] call native);
    PUBLIC FUNCTION("", "cheatsEnabled") {
        "cheatsEnabled";
    };
    ([checkAIFeature] call native);
    PUBLIC FUNCTION("array", "checkAIFeature") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "checkAIFeature _args;";
    };
    ([civilian] call native);
    PUBLIC FUNCTION("", "civilian") {
        "civilian";
    };
    ([className] call native);
    PUBLIC FUNCTION("array", "className") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "className _args;";
    };
    ([clearAllItemsFromBackpack] call native);
    PUBLIC FUNCTION("array", "clearAllItemsFromBackpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearAllItemsFromBackpack _args;";
    };
    ([clearBackpackCargo] call native);
    PUBLIC FUNCTION("array", "clearBackpackCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearBackpackCargo _args;";
    };
    ([clearBackpackCargoGlobal] call native);
    PUBLIC FUNCTION("array", "clearBackpackCargoGlobal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearBackpackCargoGlobal _args;";
    };
    ([clearGroupIcons] call native);
    PUBLIC FUNCTION("array", "clearGroupIcons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearGroupIcons _args;";
    };
    ([clearItemCargo] call native);
    PUBLIC FUNCTION("array", "clearItemCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearItemCargo _args;";
    };
    ([clearItemCargoGlobal] call native);
    PUBLIC FUNCTION("array", "clearItemCargoGlobal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearItemCargoGlobal _args;";
    };
    ([clearItemPool] call native);
    PUBLIC FUNCTION("array", "clearItemPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearItemPool _args;";
    };
    ([clearMagazineCargo] call native);
    PUBLIC FUNCTION("array", "clearMagazineCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearMagazineCargo _args;";
    };
    ([clearMagazineCargoGlobal] call native);
    PUBLIC FUNCTION("array", "clearMagazineCargoGlobal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearMagazineCargoGlobal _args;";
    };
    ([clearMagazinePool] call native);
    PUBLIC FUNCTION("", "clearMagazinePool") {
        "clearMagazinePool";
    };
    ([clearOverlay] call native);
    PUBLIC FUNCTION("array", "clearOverlay") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearOverlay _args;";
    };
    ([clearRadio] call native);
    PUBLIC FUNCTION("", "clearRadio") {
        "clearRadio";
    };
    ([clearWeaponCargo] call native);
    PUBLIC FUNCTION("array", "clearWeaponCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearWeaponCargo _args;";
    };
    ([clearWeaponCargoGlobal] call native);
    PUBLIC FUNCTION("array", "clearWeaponCargoGlobal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "clearWeaponCargoGlobal _args;";
    };
    ([clearWeaponPool] call native);
    PUBLIC FUNCTION("", "clearWeaponPool") {
        "clearWeaponPool";
    };
    ([closeDialog] call native);
    PUBLIC FUNCTION("array", "closeDialog") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "closeDialog _args;";
    };
    ([closeDisplay] call native);
    PUBLIC FUNCTION("array", "closeDisplay") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj closeDisplay _args;";
    };
    ([closeOverlay] call native);
    PUBLIC FUNCTION("array", "closeOverlay") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "closeOverlay _args;";
    };
    ([collapseObjectTree] call native);
    PUBLIC FUNCTION("array", "collapseObjectTree") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "collapseObjectTree _args;";
    };
    ([combatMode] call native);
    PUBLIC FUNCTION("array", "combatMode") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "combatMode _args;";
    };
    ([commandArtilleryFire] call native);
    PUBLIC FUNCTION("array", "commandArtilleryFire") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandArtilleryFire _args;";
    };
    ([commandChat] call native);
    PUBLIC FUNCTION("array", "commandChat") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandChat _args;";
    };
    ([commandFSM] call native);
    PUBLIC FUNCTION("array", "commandFSM") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandFSM _args;";
    };
    ([commandFire] call native);
    PUBLIC FUNCTION("array", "commandFire") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandFire _args;";
    };
    ([commandFollow] call native);
    PUBLIC FUNCTION("array", "commandFollow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandFollow _args;";
    };
    ([commandGetOut] call native);
    PUBLIC FUNCTION("array", "commandGetOut") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "commandGetOut _args;";
    };
    ([commandMove] call native);
    PUBLIC FUNCTION("array", "commandMove") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandMove _args;";
    };
    ([commandRadio] call native);
    PUBLIC FUNCTION("array", "commandRadio") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandRadio _args;";
    };
    ([commandStop] call native);
    PUBLIC FUNCTION("array", "commandStop") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "commandStop _args;";
    };
    ([commandTarget] call native);
    PUBLIC FUNCTION("array", "commandTarget") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandTarget _args;";
    };
    ([commandWatch] call native);
    PUBLIC FUNCTION("array", "commandWatch") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj commandWatch _args;";
    };
    ([commander] call native);
    PUBLIC FUNCTION("array", "commander") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "commander _args;";
    };
    ([commandingMenu] call native);
    PUBLIC FUNCTION("", "commandingMenu") {
        "commandingMenu";
    };
    ([comment] call native);
    PUBLIC FUNCTION("array", "comment") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "comment _args;";
    };
    ([commitOverlay] call native);
    PUBLIC FUNCTION("array", "commitOverlay") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "commitOverlay _args;";
    };
    ([compile] call native);
    PUBLIC FUNCTION("array", "compile") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "compile _args;";
    };
    ([compileFinal] call native);
    PUBLIC FUNCTION("array", "compileFinal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "compileFinal _args;";
    };
    ([completedFSM] call native);
    PUBLIC FUNCTION("array", "completedFSM") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "completedFSM _args;";
    };
    ([composeText] call native);
    PUBLIC FUNCTION("array", "composeText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "composeText _args;";
    };
    ([configFile] call native);
    PUBLIC FUNCTION("", "configFile") {
        "configFile";
    };
    ([configName] call native);
    PUBLIC FUNCTION("array", "configName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "configName _args;";
    };
    ([connectTerminalToUav] call native);
    PUBLIC FUNCTION("array", "connectTerminalToUav") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj connectTerminalToUav _args;";
    };
    ([controlNull] call native);
    PUBLIC FUNCTION("", "controlNull") {
        "controlNull";
    };
    ([copyFromClipboard] call native);
    PUBLIC FUNCTION("", "copyFromClipboard") {
        "copyFromClipboard";
    };
    ([copyToClipboard] call native);
    PUBLIC FUNCTION("array", "copyToClipboard") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "copyToClipboard _args;";
    };
    ([copyWaypoints] call native);
    PUBLIC FUNCTION("array", "copyWaypoints") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj copyWaypoints _args;";
    };
    ([cos] call native);
    PUBLIC FUNCTION("array", "cos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "cos _args;";
    };
    ([count] call native);
    PUBLIC FUNCTION("array", "count") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "count _args;";
    };
    ([countEnemy] call native);
    PUBLIC FUNCTION("array", "countEnemy") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj countEnemy _args;";
    };
    ([countFriendly] call native);
    PUBLIC FUNCTION("array", "countFriendly") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj countFriendly _args;";
    };
    ([countSide] call native);
    PUBLIC FUNCTION("array", "countSide") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj countSide _args;";
    };
    ([countType] call native);
    PUBLIC FUNCTION("array", "countType") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj countType _args;";
    };
    ([countUnknown] call native);
    PUBLIC FUNCTION("array", "countUnknown") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj countUnknown _args;";
    };
    ([createAgent] call native);
    PUBLIC FUNCTION("array", "createAgent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createAgent _args;";
    };
    ([createCenter] call native);
    PUBLIC FUNCTION("array", "createCenter") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createCenter _args;";
    };
    ([createDialog] call native);
    PUBLIC FUNCTION("array", "createDialog") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createDialog _args;";
    };
    ([createDiaryLink] call native);
    PUBLIC FUNCTION("array", "createDiaryLink") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createDiaryLink _args;";
    };
    ([createDiarySubject] call native);
    PUBLIC FUNCTION("array", "createDiarySubject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createDiarySubject _args;";
    };
    ([createDisplay] call native);
    PUBLIC FUNCTION("array", "createDisplay") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createDisplay _args;";
    };
    ([CreateGearDialog] call native);
    PUBLIC FUNCTION("array", "CreateGearDialog") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "CreateGearDialog _args;";
    };
    ([createGroup] call native);
    PUBLIC FUNCTION("array", "createGroup") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createGroup _args;";
    };
    ([createGuardedPoint] call native);
    PUBLIC FUNCTION("array", "createGuardedPoint") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createGuardedPoint _args;";
    };
    ([createLocation] call native);
    PUBLIC FUNCTION("array", "createLocation") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createLocation _args;";
    };
    ([createMarker] call native);
    PUBLIC FUNCTION("array", "createMarker") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createMarker _args;";
    };
    ([createMarkerLocal] call native);
    PUBLIC FUNCTION("array", "createMarkerLocal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createMarkerLocal _args;";
    };
    ([createMenu] call native);
    PUBLIC FUNCTION("array", "createMenu") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createMenu _args;";
    };
    ([createMine] call native);
    PUBLIC FUNCTION("array", "createMine") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createMine _args;";
    };
    ([createMissionDisplay] call native);
    PUBLIC FUNCTION("array", "createMissionDisplay") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createMissionDisplay _args;";
    };
    ([createSimpleTask] call native);
    PUBLIC FUNCTION("array", "createSimpleTask") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createSimpleTask _args;";
    };
    ([createSite] call native);
    PUBLIC FUNCTION("array", "createSite") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createSite _args;";
    };
    ([createSoundSource] call native);
    PUBLIC FUNCTION("array", "createSoundSource") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createSoundSource _args;";
    };
    ([createTeam] call native);
    PUBLIC FUNCTION("array", "createTeam") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createTeam _args;";
    };
    ([createTrigger] call native);
    PUBLIC FUNCTION("array", "createTrigger") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createTrigger _args;";
    };
    ([createUnit] call native);
    PUBLIC FUNCTION("array", "createUnit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createUnit _args;";
    };
    ([createUnit] call native);
    PUBLIC FUNCTION("array", "createUnit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createUnit _args;";
    };
    ([createVehicle] call native);
    PUBLIC FUNCTION("array", "createVehicle") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createVehicle _args;";
    };
    ([createVehicleCrew] call native);
    PUBLIC FUNCTION("array", "createVehicleCrew") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createVehicleCrew _args;";
    };
    ([createVehicleLocal] call native);
    PUBLIC FUNCTION("array", "createVehicleLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj createVehicleLocal _args;";
    };
    ([createVehicle] call native);
    PUBLIC FUNCTION("array", "createVehicle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "createVehicle _args;";
    };
    ([crew] call native);
    PUBLIC FUNCTION("array", "crew") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "crew _args;";
    };
    ([ctrlActivate] call native);
    PUBLIC FUNCTION("array", "ctrlActivate") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlActivate _args;";
    };
    ([ctrlAddEventHandler] call native);
    PUBLIC FUNCTION("array", "ctrlAddEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlAddEventHandler _args;";
    };
    ([ctrlAutoScrollDelay] call native);
    PUBLIC FUNCTION("array", "ctrlAutoScrollDelay") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlAutoScrollDelay _args;";
    };
    ([ctrlAutoScrollRewind] call native);
    PUBLIC FUNCTION("array", "ctrlAutoScrollRewind") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlAutoScrollRewind _args;";
    };
    ([ctrlAutoScrollSpeed] call native);
    PUBLIC FUNCTION("array", "ctrlAutoScrollSpeed") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlAutoScrollSpeed _args;";
    };
    ([ctrlChecked] call native);
    PUBLIC FUNCTION("array", "ctrlChecked") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlChecked _args;";
    };
    ([ctrlCommit] call native);
    PUBLIC FUNCTION("array", "ctrlCommit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlCommit _args;";
    };
    ([ctrlCommitted] call native);
    PUBLIC FUNCTION("array", "ctrlCommitted") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlCommitted _args;";
    };
    ([ctrlEnable] call native);
    PUBLIC FUNCTION("array", "ctrlEnable") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlEnable _args;";
    };
    ([ctrlEnabled] call native);
    PUBLIC FUNCTION("array", "ctrlEnabled") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlEnabled _args;";
    };
    ([ctrlFade] call native);
    PUBLIC FUNCTION("array", "ctrlFade") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlFade _args;";
    };
    ([ctrlHTMLLoaded] call native);
    PUBLIC FUNCTION("array", "ctrlHTMLLoaded") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlHTMLLoaded _args;";
    };
    ([ctrlIDC] call native);
    PUBLIC FUNCTION("array", "ctrlIDC") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlIDC _args;";
    };
    ([ctrlIDD] call native);
    PUBLIC FUNCTION("array", "ctrlIDD") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlIDD _args;";
    };
    ([ctrlMapAnimAdd] call native);
    PUBLIC FUNCTION("array", "ctrlMapAnimAdd") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlMapAnimAdd _args;";
    };
    ([ctrlMapAnimClear] call native);
    PUBLIC FUNCTION("array", "ctrlMapAnimClear") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlMapAnimClear _args;";
    };
    ([ctrlMapAnimCommit] call native);
    PUBLIC FUNCTION("array", "ctrlMapAnimCommit") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlMapAnimCommit _args;";
    };
    ([ctrlMapAnimDone] call native);
    PUBLIC FUNCTION("array", "ctrlMapAnimDone") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlMapAnimDone _args;";
    };
    ([ctrlMapCursor] call native);
    PUBLIC FUNCTION("array", "ctrlMapCursor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlMapCursor _args;";
    };
    ([ctrlMapMouseOver] call native);
    PUBLIC FUNCTION("array", "ctrlMapMouseOver") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlMapMouseOver _args;";
    };
    ([ctrlMapScale] call native);
    PUBLIC FUNCTION("array", "ctrlMapScale") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlMapScale _args;";
    };
    ([ctrlMapScreenToWorld] call native);
    PUBLIC FUNCTION("array", "ctrlMapScreenToWorld") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlMapScreenToWorld _args;";
    };
    ([ctrlMapWorldToScreen] call native);
    PUBLIC FUNCTION("array", "ctrlMapWorldToScreen") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlMapWorldToScreen _args;";
    };
    ([ctrlParent] call native);
    PUBLIC FUNCTION("array", "ctrlParent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlParent _args;";
    };
    ([ctrlPosition] call native);
    PUBLIC FUNCTION("array", "ctrlPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlPosition _args;";
    };
    ([ctrlRemoveAllEventHandlers] call native);
    PUBLIC FUNCTION("array", "ctrlRemoveAllEventHandlers") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlRemoveAllEventHandlers _args;";
    };
    ([ctrlRemoveEventHandler] call native);
    PUBLIC FUNCTION("array", "ctrlRemoveEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlRemoveEventHandler _args;";
    };
    ([ctrlScale] call native);
    PUBLIC FUNCTION("array", "ctrlScale") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlScale _args;";
    };
    ([ctrlSetActiveColor] call native);
    PUBLIC FUNCTION("array", "ctrlSetActiveColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetActiveColor _args;";
    };
    ([ctrlSetAutoScrollDelay] call native);
    PUBLIC FUNCTION("array", "ctrlSetAutoScrollDelay") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetAutoScrollDelay _args;";
    };
    ([ctrlSetAutoScrollRewind] call native);
    PUBLIC FUNCTION("array", "ctrlSetAutoScrollRewind") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetAutoScrollRewind _args;";
    };
    ([ctrlSetAutoScrollSpeed] call native);
    PUBLIC FUNCTION("array", "ctrlSetAutoScrollSpeed") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetAutoScrollSpeed _args;";
    };
    ([ctrlSetBackgroundColor] call native);
    PUBLIC FUNCTION("array", "ctrlSetBackgroundColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetBackgroundColor _args;";
    };
    ([ctrlSetChecked] call native);
    PUBLIC FUNCTION("array", "ctrlSetChecked") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetChecked _args;";
    };
    ([ctrlSetEventHandler] call native);
    PUBLIC FUNCTION("array", "ctrlSetEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetEventHandler _args;";
    };
    ([ctrlSetFade] call native);
    PUBLIC FUNCTION("array", "ctrlSetFade") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFade _args;";
    };
    ([ctrlSetFocus] call native);
    PUBLIC FUNCTION("array", "ctrlSetFocus") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlSetFocus _args;";
    };
    ([ctrlSetFont] call native);
    PUBLIC FUNCTION("array", "ctrlSetFont") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFont _args;";
    };
    ([ctrlSetFontH1] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH1") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH1 _args;";
    };
    ([ctrlSetFontH1B] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH1B") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH1B _args;";
    };
    ([ctrlSetFontH2] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH2") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH2 _args;";
    };
    ([ctrlSetFontH2B] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH2B") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH2B _args;";
    };
    ([ctrlSetFontH3] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH3") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH3 _args;";
    };
    ([ctrlSetFontH3B] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH3B") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH3B _args;";
    };
    ([ctrlSetFontH4] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH4") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH4 _args;";
    };
    ([ctrlSetFontH4B] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH4B") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH4B _args;";
    };
    ([ctrlSetFontH5] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH5") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH5 _args;";
    };
    ([ctrlSetFontH5B] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH5B") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH5B _args;";
    };
    ([ctrlSetFontH6] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH6") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH6 _args;";
    };
    ([ctrlSetFontH6B] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontH6B") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontH6B _args;";
    };
    ([ctrlSetFontHeight] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontHeight") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontHeight _args;";
    };
    ([ctrlSetFontHeightH1] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontHeightH1") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontHeightH1 _args;";
    };
    ([ctrlSetFontHeightH2] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontHeightH2") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontHeightH2 _args;";
    };
    ([ctrlSetFontHeightH3] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontHeightH3") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontHeightH3 _args;";
    };
    ([ctrlSetFontHeightH4] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontHeightH4") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontHeightH4 _args;";
    };
    ([ctrlSetFontHeightH5] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontHeightH5") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontHeightH5 _args;";
    };
    ([ctrlSetFontHeightH6] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontHeightH6") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontHeightH6 _args;";
    };
    ([ctrlSetFontP] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontP") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontP _args;";
    };
    ([ctrlSetFontPB] call native);
    PUBLIC FUNCTION("array", "ctrlSetFontPB") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetFontPB _args;";
    };
    ([ctrlSetForegroundColor] call native);
    PUBLIC FUNCTION("array", "ctrlSetForegroundColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetForegroundColor _args;";
    };
    ([ctrlSetPosition] call native);
    PUBLIC FUNCTION("array", "ctrlSetPosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetPosition _args;";
    };
    ([ctrlSetScale] call native);
    PUBLIC FUNCTION("array", "ctrlSetScale") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetScale _args;";
    };
    ([ctrlSetStructuredText] call native);
    PUBLIC FUNCTION("array", "ctrlSetStructuredText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetStructuredText _args;";
    };
    ([ctrlSetText] call native);
    PUBLIC FUNCTION("array", "ctrlSetText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetText _args;";
    };
    ([ctrlSetTextColor] call native);
    PUBLIC FUNCTION("array", "ctrlSetTextColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetTextColor _args;";
    };
    ([ctrlSetTooltip] call native);
    PUBLIC FUNCTION("array", "ctrlSetTooltip") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetTooltip _args;";
    };
    ([ctrlSetTooltipColorBox] call native);
    PUBLIC FUNCTION("array", "ctrlSetTooltipColorBox") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetTooltipColorBox _args;";
    };
    ([ctrlSetTooltipColorShade] call native);
    PUBLIC FUNCTION("array", "ctrlSetTooltipColorShade") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetTooltipColorShade _args;";
    };
    ([ctrlSetTooltipColorText] call native);
    PUBLIC FUNCTION("array", "ctrlSetTooltipColorText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlSetTooltipColorText _args;";
    };
    ([ctrlShow] call native);
    PUBLIC FUNCTION("array", "ctrlShow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ctrlShow _args;";
    };
    ([ctrlShown] call native);
    PUBLIC FUNCTION("array", "ctrlShown") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlShown _args;";
    };
    ([ctrlText] call native);
    PUBLIC FUNCTION("array", "ctrlText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlText _args;";
    };
    ([ctrlTextHeight] call native);
    PUBLIC FUNCTION("array", "ctrlTextHeight") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlTextHeight _args;";
    };
    ([ctrlType] call native);
    PUBLIC FUNCTION("array", "ctrlType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlType _args;";
    };
    ([ctrlVisible] call native);
    PUBLIC FUNCTION("array", "ctrlVisible") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ctrlVisible _args;";
    };
    ([curatorAddons] call native);
    PUBLIC FUNCTION("array", "curatorAddons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorAddons _args;";
    };
    ([curatorCamera] call native);
    PUBLIC FUNCTION("", "curatorCamera") {
        "curatorCamera";
    };
    ([curatorCameraArea] call native);
    PUBLIC FUNCTION("array", "curatorCameraArea") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorCameraArea _args;";
    };
    ([curatorCameraAreaCeiling] call native);
    PUBLIC FUNCTION("array", "curatorCameraAreaCeiling") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorCameraAreaCeiling _args;";
    };
    ([curatorCoef] call native);
    PUBLIC FUNCTION("array", "curatorCoef") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj curatorCoef _args;";
    };
    ([curatorEditableObjects] call native);
    PUBLIC FUNCTION("array", "curatorEditableObjects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorEditableObjects _args;";
    };
    ([curatorEditingArea] call native);
    PUBLIC FUNCTION("array", "curatorEditingArea") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorEditingArea _args;";
    };
    ([curatorEditingAreaType] call native);
    PUBLIC FUNCTION("array", "curatorEditingAreaType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorEditingAreaType _args;";
    };
    ([curatorMouseOver] call native);
    PUBLIC FUNCTION("", "curatorMouseOver") {
        "curatorMouseOver";
    };
    ([curatorPoints] call native);
    PUBLIC FUNCTION("array", "curatorPoints") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorPoints _args;";
    };
    ([curatorRegisteredObjects] call native);
    PUBLIC FUNCTION("array", "curatorRegisteredObjects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorRegisteredObjects _args;";
    };
    ([curatorSelected] call native);
    PUBLIC FUNCTION("", "curatorSelected") {
        "curatorSelected";
    };
    ([curatorWaypointCost] call native);
    PUBLIC FUNCTION("array", "curatorWaypointCost") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "curatorWaypointCost _args;";
    };
    ([currentCommand] call native);
    PUBLIC FUNCTION("array", "currentCommand") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentCommand _args;";
    };
    ([currentMagazine] call native);
    PUBLIC FUNCTION("array", "currentMagazine") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentMagazine _args;";
    };
    ([currentMagazineDetail] call native);
    PUBLIC FUNCTION("array", "currentMagazineDetail") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentMagazineDetail _args;";
    };
    ([currentMagazineDetailTurret] call native);
    PUBLIC FUNCTION("array", "currentMagazineDetailTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj currentMagazineDetailTurret _args;";
    };
    ([currentMagazineTurret] call native);
    PUBLIC FUNCTION("array", "currentMagazineTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj currentMagazineTurret _args;";
    };
    ([currentMuzzle] call native);
    PUBLIC FUNCTION("array", "currentMuzzle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentMuzzle _args;";
    };
    ([currentTask] call native);
    PUBLIC FUNCTION("array", "currentTask") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentTask _args;";
    };
    ([currentTasks] call native);
    PUBLIC FUNCTION("array", "currentTasks") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentTasks _args;";
    };
    ([currentVisionMode] call native);
    PUBLIC FUNCTION("array", "currentVisionMode") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentVisionMode _args;";
    };
    ([currentWaypoint] call native);
    PUBLIC FUNCTION("array", "currentWaypoint") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentWaypoint _args;";
    };
    ([currentWeapon] call native);
    PUBLIC FUNCTION("array", "currentWeapon") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentWeapon _args;";
    };
    ([currentWeaponMode] call native);
    PUBLIC FUNCTION("array", "currentWeaponMode") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentWeaponMode _args;";
    };
    ([currentWeaponTurret] call native);
    PUBLIC FUNCTION("array", "currentWeaponTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj currentWeaponTurret _args;";
    };
    ([currentZeroing] call native);
    PUBLIC FUNCTION("array", "currentZeroing") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "currentZeroing _args;";
    };
    ([cursorTarget] call native);
    PUBLIC FUNCTION("", "cursorTarget") {
        "cursorTarget";
    };
    ([customChat] call native);
    PUBLIC FUNCTION("array", "customChat") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj customChat _args;";
    };
    ([customRadio] call native);
    PUBLIC FUNCTION("array", "customRadio") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj customRadio _args;";
    };
    ([cutFadeOut] call native);
    PUBLIC FUNCTION("array", "cutFadeOut") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj cutFadeOut _args;";
    };
    ([cutObj] call native);
    PUBLIC FUNCTION("array", "cutObj") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj cutObj _args;";
    };
    ([cutRsc] call native);
    PUBLIC FUNCTION("array", "cutRsc") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj cutRsc _args;";
    };
    ([cutText] call native);
    PUBLIC FUNCTION("array", "cutText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj cutText _args;";
    };
    ([damage] call native);
    PUBLIC FUNCTION("array", "damage") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "damage _args;";
    };
    ([date] call native);
    PUBLIC FUNCTION("", "date") {
        "date";
    };
    ([dateToNumber] call native);
    PUBLIC FUNCTION("array", "dateToNumber") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "dateToNumber _args;";
    };
    ([daytime] call native);
    PUBLIC FUNCTION("", "daytime") {
        "daytime";
    };
    ([deActivateKey] call native);
    PUBLIC FUNCTION("array", "deActivateKey") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deActivateKey _args;";
    };
    ([debriefingText] call native);
    PUBLIC FUNCTION("array", "debriefingText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "debriefingText _args;";
    };
    ([debugFSM] call native);
    PUBLIC FUNCTION("array", "debugFSM") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj debugFSM _args;";
    };
    ([debugLog] call native);
    PUBLIC FUNCTION("array", "debugLog") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "debugLog _args;";
    };
    ([default] call native);
    PUBLIC FUNCTION("array", "default") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "default _args;";
    };
    ([deg] call native);
    PUBLIC FUNCTION("array", "deg") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deg _args;";
    };
    ([deleteCenter] call native);
    PUBLIC FUNCTION("array", "deleteCenter") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteCenter _args;";
    };
    ([deleteCollection] call native);
    PUBLIC FUNCTION("array", "deleteCollection") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteCollection _args;";
    };
    ([deleteEditorObject] call native);
    PUBLIC FUNCTION("array", "deleteEditorObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj deleteEditorObject _args;";
    };
    ([deleteGroup] call native);
    PUBLIC FUNCTION("array", "deleteGroup") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteGroup _args;";
    };
    ([deleteIdentity] call native);
    PUBLIC FUNCTION("array", "deleteIdentity") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteIdentity _args;";
    };
    ([deleteLocation] call native);
    PUBLIC FUNCTION("array", "deleteLocation") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteLocation _args;";
    };
    ([deleteMarker] call native);
    PUBLIC FUNCTION("array", "deleteMarker") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteMarker _args;";
    };
    ([deleteMarkerLocal] call native);
    PUBLIC FUNCTION("array", "deleteMarkerLocal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteMarkerLocal _args;";
    };
    ([deleteSite] call native);
    PUBLIC FUNCTION("array", "deleteSite") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteSite _args;";
    };
    ([deleteStatus] call native);
    PUBLIC FUNCTION("array", "deleteStatus") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteStatus _args;";
    };
    ([deleteTeam] call native);
    PUBLIC FUNCTION("array", "deleteTeam") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteTeam _args;";
    };
    ([deleteVehicle] call native);
    PUBLIC FUNCTION("array", "deleteVehicle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteVehicle _args;";
    };
    ([deleteWaypoint] call native);
    PUBLIC FUNCTION("array", "deleteWaypoint") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "deleteWaypoint _args;";
    };
    ([detach] call native);
    PUBLIC FUNCTION("array", "detach") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "detach _args;";
    };
    ([dialog] call native);
    PUBLIC FUNCTION("", "dialog") {
        "dialog";
    };
    ([diarySubjectExists] call native);
    PUBLIC FUNCTION("array", "diarySubjectExists") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj diarySubjectExists _args;";
    };
    ([difficulty] call native);
    PUBLIC FUNCTION("", "difficulty") {
        "difficulty";
    };
    ([difficultyEnabled] call native);
    PUBLIC FUNCTION("array", "difficultyEnabled") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "difficultyEnabled _args;";
    };
    ([directSay] call native);
    PUBLIC FUNCTION("array", "directSay") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj directSay _args;";
    };
    ([direction] call native);
    PUBLIC FUNCTION("array", "direction") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "direction _args;";
    };
    ([disableAI] call native);
    PUBLIC FUNCTION("array", "disableAI") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj disableAI _args;";
    };
    ([disableCollisionWith] call native);
    PUBLIC FUNCTION("array", "disableCollisionWith") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj disableCollisionWith _args;";
    };
    ([disableConversation] call native);
    PUBLIC FUNCTION("array", "disableConversation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj disableConversation _args;";
    };
    ([disableDebriefingStats] call native);
    PUBLIC FUNCTION("", "disableDebriefingStats") {
        "disableDebriefingStats";
    };
    ([disableSerialization] call native);
    PUBLIC FUNCTION("", "disableSerialization") {
        "disableSerialization";
    };
    ([disableTIEquipment] call native);
    PUBLIC FUNCTION("array", "disableTIEquipment") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj disableTIEquipment _args;";
    };
    ([disableUserInput] call native);
    PUBLIC FUNCTION("array", "disableUserInput") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "disableUserInput _args;";
    };
    ([displayAddEventHandler] call native);
    PUBLIC FUNCTION("array", "displayAddEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj displayAddEventHandler _args;";
    };
    ([displayCtrl] call native);
    PUBLIC FUNCTION("array", "displayCtrl") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj displayCtrl _args;";
    };
    ([displayNull] call native);
    PUBLIC FUNCTION("", "displayNull") {
        "displayNull";
    };
    ([displayRemoveAllEventHandlers] call native);
    PUBLIC FUNCTION("array", "displayRemoveAllEventHandlers") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj displayRemoveAllEventHandlers _args;";
    };
    ([displayRemoveEventHandler] call native);
    PUBLIC FUNCTION("array", "displayRemoveEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj displayRemoveEventHandler _args;";
    };
    ([displaySetEventHandler] call native);
    PUBLIC FUNCTION("array", "displaySetEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj displaySetEventHandler _args;";
    };
    ([dissolveTeam] call native);
    PUBLIC FUNCTION("array", "dissolveTeam") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "dissolveTeam _args;";
    };
    ([distance] call native);
    PUBLIC FUNCTION("array", "distance") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj distance _args;";
    };
    ([distanceSqr] call native);
    PUBLIC FUNCTION("array", "distanceSqr") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj distanceSqr _args;";
    };
    ([distributionRegion] call native);
    PUBLIC FUNCTION("", "distributionRegion") {
        "distributionRegion";
    };
    ([do] call native);
    PUBLIC FUNCTION("array", "do") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj do _args;";
    };
    ([doArtilleryFire] call native);
    PUBLIC FUNCTION("array", "doArtilleryFire") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doArtilleryFire _args;";
    };
    ([doFSM] call native);
    PUBLIC FUNCTION("array", "doFSM") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doFSM _args;";
    };
    ([doFire] call native);
    PUBLIC FUNCTION("array", "doFire") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doFire _args;";
    };
    ([doFollow] call native);
    PUBLIC FUNCTION("array", "doFollow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doFollow _args;";
    };
    ([doGetOut] call native);
    PUBLIC FUNCTION("array", "doGetOut") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "doGetOut _args;";
    };
    ([doMove] call native);
    PUBLIC FUNCTION("array", "doMove") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doMove _args;";
    };
    ([doStop] call native);
    PUBLIC FUNCTION("array", "doStop") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "doStop _args;";
    };
    ([doTarget] call native);
    PUBLIC FUNCTION("array", "doTarget") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doTarget _args;";
    };
    ([doWatch] call native);
    PUBLIC FUNCTION("array", "doWatch") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doWatch _args;";
    };
    ([doorPhase] call native);
    PUBLIC FUNCTION("array", "doorPhase") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj doorPhase _args;";
    };
    ([drawArrow] call native);
    PUBLIC FUNCTION("array", "drawArrow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj drawArrow _args;";
    };
    ([drawEllipse] call native);
    PUBLIC FUNCTION("array", "drawEllipse") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj drawEllipse _args;";
    };
    ([drawIcon] call native);
    PUBLIC FUNCTION("array", "drawIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj drawIcon _args;";
    };
    ([drawIcon3D] call native);
    PUBLIC FUNCTION("array", "drawIcon3D") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "drawIcon3D _args;";
    };
    ([drawLine] call native);
    PUBLIC FUNCTION("array", "drawLine") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj drawLine _args;";
    };
    ([drawLine3D] call native);
    PUBLIC FUNCTION("array", "drawLine3D") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "drawLine3D _args;";
    };
    ([drawLink] call native);
    PUBLIC FUNCTION("array", "drawLink") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj drawLink _args;";
    };
    ([drawLocation] call native);
    PUBLIC FUNCTION("array", "drawLocation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj drawLocation _args;";
    };
    ([drawRectangle] call native);
    PUBLIC FUNCTION("array", "drawRectangle") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj drawRectangle _args;";
    };
    ([driver] call native);
    PUBLIC FUNCTION("array", "driver") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "driver _args;";
    };
    ([drop] call native);
    PUBLIC FUNCTION("array", "drop") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "drop _args;";
    };
    ([east] call native);
    PUBLIC FUNCTION("", "east") {
        "east";
    };
    ([echo] call native);
    PUBLIC FUNCTION("array", "echo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "echo _args;";
    };
    ([editObject] call native);
    PUBLIC FUNCTION("array", "editObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj editObject _args;";
    };
    ([editorSetEventHandler] call native);
    PUBLIC FUNCTION("array", "editorSetEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj editorSetEventHandler _args;";
    };
    ([effectiveCommander] call native);
    PUBLIC FUNCTION("array", "effectiveCommander") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "effectiveCommander _args;";
    };
    ([else] call native);
    PUBLIC FUNCTION("array", "else") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj else _args;";
    };
    ([enableAI] call native);
    PUBLIC FUNCTION("array", "enableAI") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableAI _args;";
    };
    ([enableAIFeature] call native);
    PUBLIC FUNCTION("array", "enableAIFeature") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableAIFeature _args;";
    };
    ([enableAttack] call native);
    PUBLIC FUNCTION("array", "enableAttack") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableAttack _args;";
    };
    ([enableCamShake] call native);
    PUBLIC FUNCTION("array", "enableCamShake") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableCamShake _args;";
    };
    ([enableCaustics] call native);
    PUBLIC FUNCTION("array", "enableCaustics") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableCaustics _args;";
    };
    ([enableCollisionWith] call native);
    PUBLIC FUNCTION("array", "enableCollisionWith") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableCollisionWith _args;";
    };
    ([enableCopilot] call native);
    PUBLIC FUNCTION("array", "enableCopilot") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableCopilot _args;";
    };
    ([enableDebriefingStats] call native);
    PUBLIC FUNCTION("", "enableDebriefingStats") {
        "enableDebriefingStats";
    };
    ([enableDiagLegend] call native);
    PUBLIC FUNCTION("array", "enableDiagLegend") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableDiagLegend _args;";
    };
    ([enableEndDialog] call native);
    PUBLIC FUNCTION("", "enableEndDialog") {
        "enableEndDialog";
    };
    ([enableEngineArtillery] call native);
    PUBLIC FUNCTION("array", "enableEngineArtillery") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableEngineArtillery _args;";
    };
    ([enableEnvironment] call native);
    PUBLIC FUNCTION("array", "enableEnvironment") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableEnvironment _args;";
    };
    ([enableFatigue] call native);
    PUBLIC FUNCTION("array", "enableFatigue") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableFatigue _args;";
    };
    ([enableGunLights] call native);
    PUBLIC FUNCTION("array", "enableGunLights") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableGunLights _args;";
    };
    ([enableIRLasers] call native);
    PUBLIC FUNCTION("array", "enableIRLasers") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableIRLasers _args;";
    };
    ([enableRadio] call native);
    PUBLIC FUNCTION("array", "enableRadio") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableRadio _args;";
    };
    ([enableReload] call native);
    PUBLIC FUNCTION("array", "enableReload") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableReload _args;";
    };
    ([enableSatNormalOnDetail] call native);
    PUBLIC FUNCTION("array", "enableSatNormalOnDetail") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableSatNormalOnDetail _args;";
    };
    ([enableSaving] call native);
    PUBLIC FUNCTION("array", "enableSaving") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableSaving _args;";
    };
    ([enableSentences] call native);
    PUBLIC FUNCTION("array", "enableSentences") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableSentences _args;";
    };
    ([enableSimulation] call native);
    PUBLIC FUNCTION("array", "enableSimulation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableSimulation _args;";
    };
    ([enableSimulationGlobal] call native);
    PUBLIC FUNCTION("array", "enableSimulationGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj enableSimulationGlobal _args;";
    };
    ([enableTeamSwitch] call native);
    PUBLIC FUNCTION("array", "enableTeamSwitch") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "enableTeamSwitch _args;";
    };
    ([endLoadingScreen] call native);
    PUBLIC FUNCTION("", "endLoadingScreen") {
        "endLoadingScreen";
    };
    ([endMission] call native);
    PUBLIC FUNCTION("array", "endMission") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "endMission _args;";
    };
    ([engineOn] call native);
    PUBLIC FUNCTION("array", "engineOn") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj engineOn _args;";
    };
    ([entities] call native);
    PUBLIC FUNCTION("array", "entities") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "entities _args;";
    };
    ([estimatedEndServerTime] call native);
    PUBLIC FUNCTION("", "estimatedEndServerTime") {
        "estimatedEndServerTime";
    };
    ([estimatedTimeLeft] call native);
    PUBLIC FUNCTION("array", "estimatedTimeLeft") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "estimatedTimeLeft _args;";
    };
    ([evalObjectArgument] call native);
    PUBLIC FUNCTION("array", "evalObjectArgument") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj evalObjectArgument _args;";
    };
    ([everyBackpack] call native);
    PUBLIC FUNCTION("array", "everyBackpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "everyBackpack _args;";
    };
    ([exec] call native);
    PUBLIC FUNCTION("array", "exec") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj exec _args;";
    };
    ([execEditorScript] call native);
    PUBLIC FUNCTION("array", "execEditorScript") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj execEditorScript _args;";
    };
    ([execFSM] call native);
    PUBLIC FUNCTION("array", "execFSM") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj execFSM _args;";
    };
    ([execVM] call native);
    PUBLIC FUNCTION("array", "execVM") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj execVM _args;";
    };
    ([exit] call native);
    PUBLIC FUNCTION("", "exit") {
        "exit";
    };
    ([exp] call native);
    PUBLIC FUNCTION("array", "exp") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "exp _args;";
    };
    ([expectedDestination] call native);
    PUBLIC FUNCTION("array", "expectedDestination") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "expectedDestination _args;";
    };
    ([eyeDirection] call native);
    PUBLIC FUNCTION("array", "eyeDirection") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "eyeDirection _args;";
    };
    ([eyePos] call native);
    PUBLIC FUNCTION("array", "eyePos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "eyePos _args;";
    };
    ([face] call native);
    PUBLIC FUNCTION("array", "face") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "face _args;";
    };
    ([faction] call native);
    PUBLIC FUNCTION("array", "faction") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "faction _args;";
    };
    ([fadeMusic] call native);
    PUBLIC FUNCTION("array", "fadeMusic") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj fadeMusic _args;";
    };
    ([fadeRadio] call native);
    PUBLIC FUNCTION("array", "fadeRadio") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj fadeRadio _args;";
    };
    ([fadeSound] call native);
    PUBLIC FUNCTION("array", "fadeSound") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj fadeSound _args;";
    };
    ([fadeSpeech] call native);
    PUBLIC FUNCTION("array", "fadeSpeech") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj fadeSpeech _args;";
    };
    ([failMission] call native);
    PUBLIC FUNCTION("array", "failMission") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "failMission _args;";
    };
    ([false] call native);
    PUBLIC FUNCTION("", "false") {
        "false";
    };
    ([fillWeaponsFromPool] call native);
    PUBLIC FUNCTION("array", "fillWeaponsFromPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "fillWeaponsFromPool _args;";
    };
    ([find] call native);
    PUBLIC FUNCTION("array", "find") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj find _args;";
    };
    ([findCover] call native);
    PUBLIC FUNCTION("array", "findCover") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj findCover _args;";
    };
    ([findDisplay] call native);
    PUBLIC FUNCTION("array", "findDisplay") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "findDisplay _args;";
    };
    ([findEditorObject] call native);
    PUBLIC FUNCTION("array", "findEditorObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj findEditorObject _args;";
    };
    ([findEmptyPosition] call native);
    PUBLIC FUNCTION("array", "findEmptyPosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj findEmptyPosition _args;";
    };
    ([findEmptyPositionReady] call native);
    PUBLIC FUNCTION("array", "findEmptyPositionReady") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj findEmptyPositionReady _args;";
    };
    ([findNearestEnemy] call native);
    PUBLIC FUNCTION("array", "findNearestEnemy") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj findNearestEnemy _args;";
    };
    ([finishMissionInit] call native);
    PUBLIC FUNCTION("", "finishMissionInit") {
        "finishMissionInit";
    };
    ([finite] call native);
    PUBLIC FUNCTION("array", "finite") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "finite _args;";
    };
    ([fire] call native);
    PUBLIC FUNCTION("array", "fire") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj fire _args;";
    };
    ([fireAtTarget] call native);
    PUBLIC FUNCTION("array", "fireAtTarget") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj fireAtTarget _args;";
    };
    ([firstBackpack] call native);
    PUBLIC FUNCTION("array", "firstBackpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "firstBackpack _args;";
    };
    ([flag] call native);
    PUBLIC FUNCTION("array", "flag") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "flag _args;";
    };
    ([flagOwner] call native);
    PUBLIC FUNCTION("array", "flagOwner") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "flagOwner _args;";
    };
    ([fleeing] call native);
    PUBLIC FUNCTION("array", "fleeing") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "fleeing _args;";
    };
    ([floor] call native);
    PUBLIC FUNCTION("array", "floor") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "floor _args;";
    };
    ([flyInHeight] call native);
    PUBLIC FUNCTION("array", "flyInHeight") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj flyInHeight _args;";
    };
    ([fog] call native);
    PUBLIC FUNCTION("", "fog") {
        "fog";
    };
    ([fogForecast] call native);
    PUBLIC FUNCTION("", "fogForecast") {
        "fogForecast";
    };
    ([fogParams] call native);
    PUBLIC FUNCTION("", "fogParams") {
        "fogParams";
    };
    ([forEach] call native);
    PUBLIC FUNCTION("array", "forEach") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj forEach _args;";
    };
    ([forEachMember] call native);
    PUBLIC FUNCTION("array", "forEachMember") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj forEachMember _args;";
    };
    ([forEachMemberAgent] call native);
    PUBLIC FUNCTION("array", "forEachMemberAgent") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj forEachMemberAgent _args;";
    };
    ([forEachMemberTeam] call native);
    PUBLIC FUNCTION("array", "forEachMemberTeam") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj forEachMemberTeam _args;";
    };
    ([forceEnd] call native);
    PUBLIC FUNCTION("", "forceEnd") {
        "forceEnd";
    };
    ([forceMap] call native);
    PUBLIC FUNCTION("array", "forceMap") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "forceMap _args;";
    };
    ([forceRespawn] call native);
    PUBLIC FUNCTION("array", "forceRespawn") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "forceRespawn _args;";
    };
    ([forceSpeed] call native);
    PUBLIC FUNCTION("array", "forceSpeed") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj forceSpeed _args;";
    };
    ([forceWalk] call native);
    PUBLIC FUNCTION("array", "forceWalk") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj forceWalk _args;";
    };
    ([forceWeaponFire] call native);
    PUBLIC FUNCTION("array", "forceWeaponFire") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj forceWeaponFire _args;";
    };
    ([formLeader] call native);
    PUBLIC FUNCTION("array", "formLeader") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formLeader _args;";
    };
    ([format] call native);
    PUBLIC FUNCTION("array", "format") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "format _args;";
    };
    ([formatText] call native);
    PUBLIC FUNCTION("array", "formatText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formatText _args;";
    };
    ([formation] call native);
    PUBLIC FUNCTION("array", "formation") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formation _args;";
    };
    ([formationDirection] call native);
    PUBLIC FUNCTION("array", "formationDirection") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formationDirection _args;";
    };
    ([formationLeader] call native);
    PUBLIC FUNCTION("array", "formationLeader") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formationLeader _args;";
    };
    ([formationMembers] call native);
    PUBLIC FUNCTION("array", "formationMembers") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formationMembers _args;";
    };
    ([formationPosition] call native);
    PUBLIC FUNCTION("array", "formationPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formationPosition _args;";
    };
    ([formationTask] call native);
    PUBLIC FUNCTION("array", "formationTask") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "formationTask _args;";
    };
    ([freeLook] call native);
    PUBLIC FUNCTION("", "freeLook") {
        "freeLook";
    };
    ([from] call native);
    PUBLIC FUNCTION("array", "from") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj from _args;";
    };
    ([fromEditor] call native);
    PUBLIC FUNCTION("array", "fromEditor") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "fromEditor _args;";
    };
    ([fuel] call native);
    PUBLIC FUNCTION("array", "fuel") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "fuel _args;";
    };
    ([gearSlotData] call native);
    PUBLIC FUNCTION("array", "gearSlotData") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "gearSlotData _args;";
    };
    ([getAmmoCargo] call native);
    PUBLIC FUNCTION("array", "getAmmoCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getAmmoCargo _args;";
    };
    ([getArray] call native);
    PUBLIC FUNCTION("array", "getArray") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getArray _args;";
    };
    ([getArtilleryAmmo] call native);
    PUBLIC FUNCTION("array", "getArtilleryAmmo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getArtilleryAmmo _args;";
    };
    ([getArtilleryComputerSettings] call native);
    PUBLIC FUNCTION("", "getArtilleryComputerSettings") {
        "getArtilleryComputerSettings";
    };
    ([getArtilleryETA] call native);
    PUBLIC FUNCTION("array", "getArtilleryETA") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getArtilleryETA _args;";
    };
    ([getAssignedCuratorLogic] call native);
    PUBLIC FUNCTION("array", "getAssignedCuratorLogic") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getAssignedCuratorLogic _args;";
    };
    ([getAssignedCuratorUnit] call native);
    PUBLIC FUNCTION("array", "getAssignedCuratorUnit") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getAssignedCuratorUnit _args;";
    };
    ([getBackpackCargo] call native);
    PUBLIC FUNCTION("array", "getBackpackCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getBackpackCargo _args;";
    };
    ([getBleedingRemaining] call native);
    PUBLIC FUNCTION("array", "getBleedingRemaining") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getBleedingRemaining _args;";
    };
    ([getBurningValue] call native);
    PUBLIC FUNCTION("array", "getBurningValue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getBurningValue _args;";
    };
    ([getCenterOfMass] call native);
    PUBLIC FUNCTION("array", "getCenterOfMass") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getCenterOfMass _args;";
    };
    ([getClientState] call native);
    PUBLIC FUNCTION("", "getClientState") {
        "getClientState";
    };
    ([getConnectedUav] call native);
    PUBLIC FUNCTION("array", "getConnectedUav") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getConnectedUav _args;";
    };
    ([getDammage] call native);
    PUBLIC FUNCTION("array", "getDammage") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getDammage _args;";
    };
    ([getDescription] call native);
    PUBLIC FUNCTION("array", "getDescription") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getDescription _args;";
    };
    ([getDir] call native);
    PUBLIC FUNCTION("array", "getDir") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getDir _args;";
    };
    ([getEditorCamera] call native);
    PUBLIC FUNCTION("array", "getEditorCamera") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getEditorCamera _args;";
    };
    ([getEditorMode] call native);
    PUBLIC FUNCTION("array", "getEditorMode") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getEditorMode _args;";
    };
    ([getEditorObjectScope] call native);
    PUBLIC FUNCTION("array", "getEditorObjectScope") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getEditorObjectScope _args;";
    };
    ([getElevationOffset] call native);
    PUBLIC FUNCTION("", "getElevationOffset") {
        "getElevationOffset";
    };
    ([getFSMVariable] call native);
    PUBLIC FUNCTION("array", "getFSMVariable") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getFSMVariable _args;";
    };
    ([getFatigue] call native);
    PUBLIC FUNCTION("array", "getFatigue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getFatigue _args;";
    };
    ([getFriend] call native);
    PUBLIC FUNCTION("array", "getFriend") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getFriend _args;";
    };
    ([getFuelCargo] call native);
    PUBLIC FUNCTION("array", "getFuelCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getFuelCargo _args;";
    };
    ([getGroupIcon] call native);
    PUBLIC FUNCTION("array", "getGroupIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getGroupIcon _args;";
    };
    ([getGroupIconParams] call native);
    PUBLIC FUNCTION("array", "getGroupIconParams") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getGroupIconParams _args;";
    };
    ([getGroupIcons] call native);
    PUBLIC FUNCTION("array", "getGroupIcons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getGroupIcons _args;";
    };
    ([getHideFrom] call native);
    PUBLIC FUNCTION("array", "getHideFrom") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getHideFrom _args;";
    };
    ([getHitPointDamage] call native);
    PUBLIC FUNCTION("array", "getHitPointDamage") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getHitPointDamage _args;";
    };
    ([getItemCargo] call native);
    PUBLIC FUNCTION("array", "getItemCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getItemCargo _args;";
    };
    ([getMagazineCargo] call native);
    PUBLIC FUNCTION("array", "getMagazineCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getMagazineCargo _args;";
    };
    ([getMarkerColor] call native);
    PUBLIC FUNCTION("array", "getMarkerColor") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getMarkerColor _args;";
    };
    ([getMarkerPos] call native);
    PUBLIC FUNCTION("array", "getMarkerPos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getMarkerPos _args;";
    };
    ([getMarkerSize] call native);
    PUBLIC FUNCTION("array", "getMarkerSize") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getMarkerSize _args;";
    };
    ([getMarkerType] call native);
    PUBLIC FUNCTION("array", "getMarkerType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getMarkerType _args;";
    };
    ([getMass] call native);
    PUBLIC FUNCTION("array", "getMass") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getMass _args;";
    };
    ([getNumber] call native);
    PUBLIC FUNCTION("array", "getNumber") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getNumber _args;";
    };
    ([getObjectArgument] call native);
    PUBLIC FUNCTION("array", "getObjectArgument") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getObjectArgument _args;";
    };
    ([getObjectChildren] call native);
    PUBLIC FUNCTION("array", "getObjectChildren") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getObjectChildren _args;";
    };
    ([getObjectDlcs] call native);
    PUBLIC FUNCTION("array", "getObjectDlcs") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getObjectDlcs _args;";
    };
    ([getObjectProxy] call native);
    PUBLIC FUNCTION("array", "getObjectProxy") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getObjectProxy _args;";
    };
    ([getOxygenRemaining] call native);
    PUBLIC FUNCTION("array", "getOxygenRemaining") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getOxygenRemaining _args;";
    };
    ([getPlayerUID] call native);
    PUBLIC FUNCTION("array", "getPlayerUID") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getPlayerUID _args;";
    };
    ([getPos] call native);
    PUBLIC FUNCTION("array", "getPos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getPos _args;";
    };
    ([getPosASL] call native);
    PUBLIC FUNCTION("array", "getPosASL") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getPosASL _args;";
    };
    ([getPosASLW] call native);
    PUBLIC FUNCTION("array", "getPosASLW") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getPosASLW _args;";
    };
    ([getPosATL] call native);
    PUBLIC FUNCTION("array", "getPosATL") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getPosATL _args;";
    };
    ([getRepairCargo] call native);
    PUBLIC FUNCTION("array", "getRepairCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getRepairCargo _args;";
    };
    ([getResolution] call native);
    PUBLIC FUNCTION("", "getResolution") {
        "getResolution";
    };
    ([getShadowDistance] call native);
    PUBLIC FUNCTION("", "getShadowDistance") {
        "getShadowDistance";
    };
    ([getSpeed] call native);
    PUBLIC FUNCTION("array", "getSpeed") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj getSpeed _args;";
    };
    ([getTerrainHeightASL] call native);
    PUBLIC FUNCTION("array", "getTerrainHeightASL") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getTerrainHeightASL _args;";
    };
    ([getText] call native);
    PUBLIC FUNCTION("array", "getText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getText _args;";
    };
    ([getWPPos] call native);
    PUBLIC FUNCTION("array", "getWPPos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getWPPos _args;";
    };
    ([getWeaponCargo] call native);
    PUBLIC FUNCTION("array", "getWeaponCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "getWeaponCargo _args;";
    };
    ([glanceAt] call native);
    PUBLIC FUNCTION("array", "glanceAt") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj glanceAt _args;";
    };
    ([globalChat] call native);
    PUBLIC FUNCTION("array", "globalChat") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj globalChat _args;";
    };
    ([globalRadio] call native);
    PUBLIC FUNCTION("array", "globalRadio") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj globalRadio _args;";
    };
    ([goggles] call native);
    PUBLIC FUNCTION("array", "goggles") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "goggles _args;";
    };
    ([goto] call native);
    PUBLIC FUNCTION("array", "goto") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "goto _args;";
    };
    ([group] call native);
    PUBLIC FUNCTION("array", "group") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "group _args;";
    };
    ([groupChat] call native);
    PUBLIC FUNCTION("array", "groupChat") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj groupChat _args;";
    };
    ([groupFromNetId] call native);
    PUBLIC FUNCTION("array", "groupFromNetId") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "groupFromNetId _args;";
    };
    ([groupID] call native);
    PUBLIC FUNCTION("array", "groupID") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "groupID _args;";
    };
    ([groupIconSelectable] call native);
    PUBLIC FUNCTION("", "groupIconSelectable") {
        "groupIconSelectable";
    };
    ([groupIconsVisible] call native);
    PUBLIC FUNCTION("", "groupIconsVisible") {
        "groupIconsVisible";
    };
    ([groupRadio] call native);
    PUBLIC FUNCTION("array", "groupRadio") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj groupRadio _args;";
    };
    ([groupSelectUnit] call native);
    PUBLIC FUNCTION("array", "groupSelectUnit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj groupSelectUnit _args;";
    };
    ([groupSelectedUnits] call native);
    PUBLIC FUNCTION("array", "groupSelectedUnits") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "groupSelectedUnits _args;";
    };
    ([grpNull] call native);
    PUBLIC FUNCTION("", "grpNull") {
        "grpNull";
    };
    ([gunner] call native);
    PUBLIC FUNCTION("array", "gunner") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "gunner _args;";
    };
    ([gusts] call native);
    PUBLIC FUNCTION("", "gusts") {
        "gusts";
    };
    ([halt] call native);
    PUBLIC FUNCTION("", "halt") {
        "halt";
    };
    ([handgunItems] call native);
    PUBLIC FUNCTION("array", "handgunItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "handgunItems _args;";
    };
    ([handgunMagazine] call native);
    PUBLIC FUNCTION("array", "handgunMagazine") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "handgunMagazine _args;";
    };
    ([handgunWeapon] call native);
    PUBLIC FUNCTION("array", "handgunWeapon") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "handgunWeapon _args;";
    };
    ([handsHit] call native);
    PUBLIC FUNCTION("array", "handsHit") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "handsHit _args;";
    };
    ([hasInterface] call native);
    PUBLIC FUNCTION("", "hasInterface") {
        "hasInterface";
    };
    ([hasWeapon] call native);
    PUBLIC FUNCTION("array", "hasWeapon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hasWeapon _args;";
    };
    ([hcAllGroups] call native);
    PUBLIC FUNCTION("array", "hcAllGroups") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hcAllGroups _args;";
    };
    ([hcGroupParams] call native);
    PUBLIC FUNCTION("array", "hcGroupParams") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hcGroupParams _args;";
    };
    ([hcLeader] call native);
    PUBLIC FUNCTION("array", "hcLeader") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hcLeader _args;";
    };
    ([hcRemoveAllGroups] call native);
    PUBLIC FUNCTION("array", "hcRemoveAllGroups") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hcRemoveAllGroups _args;";
    };
    ([hcRemoveGroup] call native);
    PUBLIC FUNCTION("array", "hcRemoveGroup") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hcRemoveGroup _args;";
    };
    ([hcSelectGroup] call native);
    PUBLIC FUNCTION("array", "hcSelectGroup") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hcSelectGroup _args;";
    };
    ([hcSelected] call native);
    PUBLIC FUNCTION("array", "hcSelected") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hcSelected _args;";
    };
    ([hcSetGroup] call native);
    PUBLIC FUNCTION("array", "hcSetGroup") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hcSetGroup _args;";
    };
    ([hcShowBar] call native);
    PUBLIC FUNCTION("array", "hcShowBar") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hcShowBar _args;";
    };
    ([hcShownBar] call native);
    PUBLIC FUNCTION("", "hcShownBar") {
        "hcShownBar";
    };
    ([headgear] call native);
    PUBLIC FUNCTION("array", "headgear") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "headgear _args;";
    };
    ([hideBody] call native);
    PUBLIC FUNCTION("array", "hideBody") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hideBody _args;";
    };
    ([hideObject] call native);
    PUBLIC FUNCTION("array", "hideObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hideObject _args;";
    };
    ([hideObjectGlobal] call native);
    PUBLIC FUNCTION("array", "hideObjectGlobal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hideObjectGlobal _args;";
    };
    ([hint] call native);
    PUBLIC FUNCTION("array", "hint") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hint _args;";
    };
    ([hintC] call native);
    PUBLIC FUNCTION("array", "hintC") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hintC _args;";
    };
    ([hintC] call native);
    PUBLIC FUNCTION("array", "hintC") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hintC _args;";
    };
    ([hintC] call native);
    PUBLIC FUNCTION("array", "hintC") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj hintC _args;";
    };
    ([hintCadet] call native);
    PUBLIC FUNCTION("array", "hintCadet") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hintCadet _args;";
    };
    ([hintSilent] call native);
    PUBLIC FUNCTION("array", "hintSilent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hintSilent _args;";
    };
    ([hmd] call native);
    PUBLIC FUNCTION("array", "hmd") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hmd _args;";
    };
    ([hostMission] call native);
    PUBLIC FUNCTION("array", "hostMission") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "hostMission _args;";
    };
    ([htmlLoad] call native);
    PUBLIC FUNCTION("array", "htmlLoad") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj htmlLoad _args;";
    };
    ([humidity] call native);
    PUBLIC FUNCTION("", "humidity") {
        "humidity";
    };
    ([image] call native);
    PUBLIC FUNCTION("array", "image") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "image _args;";
    };
    ([importAllGroups] call native);
    PUBLIC FUNCTION("array", "importAllGroups") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "importAllGroups _args;";
    };
    ([importance] call native);
    PUBLIC FUNCTION("array", "importance") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "importance _args;";
    };
    ([inGameUISetEventHandler] call native);
    PUBLIC FUNCTION("array", "inGameUISetEventHandler") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "inGameUISetEventHandler _args;";
    };
    ([inRangeOfArtillery] call native);
    PUBLIC FUNCTION("array", "inRangeOfArtillery") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj inRangeOfArtillery _args;";
    };
    ([incapacitatedState] call native);
    PUBLIC FUNCTION("array", "incapacitatedState") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "incapacitatedState _args;";
    };
    ([independent] call native);
    PUBLIC FUNCTION("", "independent") {
        "independent";
    };
    ([inflame] call native);
    PUBLIC FUNCTION("array", "inflame") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj inflame _args;";
    };
    ([inflamed] call native);
    PUBLIC FUNCTION("array", "inflamed") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "inflamed _args;";
    };
    ([inheritsFrom] call native);
    PUBLIC FUNCTION("array", "inheritsFrom") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "inheritsFrom _args;";
    };
    ([initAmbientLife] call native);
    PUBLIC FUNCTION("", "initAmbientLife") {
        "initAmbientLife";
    };
    ([inputAction] call native);
    PUBLIC FUNCTION("array", "inputAction") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "inputAction _args;";
    };
    ([insertEditorObject] call native);
    PUBLIC FUNCTION("array", "insertEditorObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj insertEditorObject _args;";
    };
    ([intersect] call native);
    PUBLIC FUNCTION("array", "intersect") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj intersect _args;";
    };
    ([isAbleToBreathe] call native);
    PUBLIC FUNCTION("array", "isAbleToBreathe") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isAbleToBreathe _args;";
    };
    ([isAgent] call native);
    PUBLIC FUNCTION("array", "isAgent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isAgent _args;";
    };
    ([isArray] call native);
    PUBLIC FUNCTION("array", "isArray") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isArray _args;";
    };
    ([isAutoHoverOn] call native);
    PUBLIC FUNCTION("array", "isAutoHoverOn") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isAutoHoverOn _args;";
    };
    ([isBleeding] call native);
    PUBLIC FUNCTION("array", "isBleeding") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isBleeding _args;";
    };
    ([isBurning] call native);
    PUBLIC FUNCTION("array", "isBurning") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isBurning _args;";
    };
    ([isClass] call native);
    PUBLIC FUNCTION("array", "isClass") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isClass _args;";
    };
    ([isCopilotEnabled] call native);
    PUBLIC FUNCTION("array", "isCopilotEnabled") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isCopilotEnabled _args;";
    };
    ([isDedicated] call native);
    PUBLIC FUNCTION("", "isDedicated") {
        "isDedicated";
    };
    ([isEngineOn] call native);
    PUBLIC FUNCTION("array", "isEngineOn") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isEngineOn _args;";
    };
    ([isEqualTo] call native);
    PUBLIC FUNCTION("array", "isEqualTo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj isEqualTo _args;";
    };
    ([isFlashlightOn] call native);
    PUBLIC FUNCTION("array", "isFlashlightOn") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj isFlashlightOn _args;";
    };
    ([isFlatEmpty] call native);
    PUBLIC FUNCTION("array", "isFlatEmpty") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj isFlatEmpty _args;";
    };
    ([isForcedWalk] call native);
    PUBLIC FUNCTION("array", "isForcedWalk") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isForcedWalk _args;";
    };
    ([isFormationLeader] call native);
    PUBLIC FUNCTION("array", "isFormationLeader") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isFormationLeader _args;";
    };
    ([isHidden] call native);
    PUBLIC FUNCTION("array", "isHidden") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isHidden _args;";
    };
    ([isIRLaserOn] call native);
    PUBLIC FUNCTION("array", "isIRLaserOn") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj isIRLaserOn _args;";
    };
    ([isInstructorFigureEnabled] call native);
    PUBLIC FUNCTION("", "isInstructorFigureEnabled") {
        "isInstructorFigureEnabled";
    };
    ([isKeyActive] call native);
    PUBLIC FUNCTION("array", "isKeyActive") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isKeyActive _args;";
    };
    ([isKindOf] call native);
    PUBLIC FUNCTION("array", "isKindOf") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj isKindOf _args;";
    };
    ([isLocalized] call native);
    PUBLIC FUNCTION("array", "isLocalized") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isLocalized _args;";
    };
    ([isManualFire] call native);
    PUBLIC FUNCTION("array", "isManualFire") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isManualFire _args;";
    };
    ([isMarkedForCollection] call native);
    PUBLIC FUNCTION("array", "isMarkedForCollection") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isMarkedForCollection _args;";
    };
    ([isMultiplayer] call native);
    PUBLIC FUNCTION("", "isMultiplayer") {
        "isMultiplayer";
    };
    ([isnil] call native);
    PUBLIC FUNCTION("array", "isnil") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isnil _args;";
    };
    ([isNull] call native);
    PUBLIC FUNCTION("array", "isNull") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isNull _args;";
    };
    ([isNumber] call native);
    PUBLIC FUNCTION("array", "isNumber") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isNumber _args;";
    };
    ([isOnRoad] call native);
    PUBLIC FUNCTION("array", "isOnRoad") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isOnRoad _args;";
    };
    ([isPipEnabled] call native);
    PUBLIC FUNCTION("", "isPipEnabled") {
        "isPipEnabled";
    };
    ([isPlayer] call native);
    PUBLIC FUNCTION("array", "isPlayer") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isPlayer _args;";
    };
    ([isRealTime] call native);
    PUBLIC FUNCTION("array", "isRealTime") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isRealTime _args;";
    };
    ([isServer] call native);
    PUBLIC FUNCTION("", "isServer") {
        "isServer";
    };
    ([isShowing3DIcons] call native);
    PUBLIC FUNCTION("array", "isShowing3DIcons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isShowing3DIcons _args;";
    };
    ([isSteamMission] call native);
    PUBLIC FUNCTION("", "isSteamMission") {
        "isSteamMission";
    };
    ([isStreamFriendlyUIEnabled] call native);
    PUBLIC FUNCTION("", "isStreamFriendlyUIEnabled") {
        "isStreamFriendlyUIEnabled";
    };
    ([isText] call native);
    PUBLIC FUNCTION("array", "isText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isText _args;";
    };
    ([isTouchingGround] call native);
    PUBLIC FUNCTION("array", "isTouchingGround") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isTouchingGround _args;";
    };
    ([isTutHintsEnabled] call native);
    PUBLIC FUNCTION("", "isTutHintsEnabled") {
        "isTutHintsEnabled";
    };
    ([isUavConnected] call native);
    PUBLIC FUNCTION("array", "isUavConnected") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isUavConnected _args;";
    };
    ([isWalking] call native);
    PUBLIC FUNCTION("array", "isWalking") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "isWalking _args;";
    };
    ([itemCargo] call native);
    PUBLIC FUNCTION("array", "itemCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "itemCargo _args;";
    };
    ([items] call native);
    PUBLIC FUNCTION("array", "items") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "items _args;";
    };
    ([itemsWithMagazines] call native);
    PUBLIC FUNCTION("array", "itemsWithMagazines") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "itemsWithMagazines _args;";
    };
    ([join] call native);
    PUBLIC FUNCTION("array", "join") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj join _args;";
    };
    ([joinAs] call native);
    PUBLIC FUNCTION("array", "joinAs") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj joinAs _args;";
    };
    ([joinAsSilent] call native);
    PUBLIC FUNCTION("array", "joinAsSilent") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj joinAsSilent _args;";
    };
    ([joinSilent] call native);
    PUBLIC FUNCTION("array", "joinSilent") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj joinSilent _args;";
    };
    ([kbAddDatabase] call native);
    PUBLIC FUNCTION("array", "kbAddDatabase") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj kbAddDatabase _args;";
    };
    ([kbAddDatabaseTargets] call native);
    PUBLIC FUNCTION("array", "kbAddDatabaseTargets") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj kbAddDatabaseTargets _args;";
    };
    ([kbHasTopic] call native);
    PUBLIC FUNCTION("array", "kbHasTopic") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj kbHasTopic _args;";
    };
    ([kbReact] call native);
    PUBLIC FUNCTION("array", "kbReact") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj kbReact _args;";
    };
    ([kbRemoveTopic] call native);
    PUBLIC FUNCTION("array", "kbRemoveTopic") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj kbRemoveTopic _args;";
    };
    ([kbTell] call native);
    PUBLIC FUNCTION("array", "kbTell") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj kbTell _args;";
    };
    ([keyImage] call native);
    PUBLIC FUNCTION("array", "keyImage") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "keyImage _args;";
    };
    ([keyName] call native);
    PUBLIC FUNCTION("array", "keyName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "keyName _args;";
    };
    ([knowsAbout] call native);
    PUBLIC FUNCTION("array", "knowsAbout") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj knowsAbout _args;";
    };
    ([land] call native);
    PUBLIC FUNCTION("array", "land") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj land _args;";
    };
    ([landAt] call native);
    PUBLIC FUNCTION("array", "landAt") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj landAt _args;";
    };
    ([landResult] call native);
    PUBLIC FUNCTION("array", "landResult") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "landResult _args;";
    };
    ([language] call native);
    PUBLIC FUNCTION("", "language") {
        "language";
    };
    ([laserTarget] call native);
    PUBLIC FUNCTION("array", "laserTarget") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "laserTarget _args;";
    };
    ([lbAdd] call native);
    PUBLIC FUNCTION("array", "lbAdd") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbAdd _args;";
    };
    ([lbClear] call native);
    PUBLIC FUNCTION("array", "lbClear") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lbClear _args;";
    };
    ([lbColor] call native);
    PUBLIC FUNCTION("array", "lbColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbColor _args;";
    };
    ([lbCurSel] call native);
    PUBLIC FUNCTION("array", "lbCurSel") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lbCurSel _args;";
    };
    ([lbData] call native);
    PUBLIC FUNCTION("array", "lbData") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbData _args;";
    };
    ([lbDelete] call native);
    PUBLIC FUNCTION("array", "lbDelete") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbDelete _args;";
    };
    ([lbIsSelected] call native);
    PUBLIC FUNCTION("array", "lbIsSelected") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbIsSelected _args;";
    };
    ([lbSetPicture] call native);
    PUBLIC FUNCTION("array", "lbSetPicture") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbSetPicture _args;";
    };
    ([lbSelection] call native);
    PUBLIC FUNCTION("array", "lbSelection") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lbSelection _args;";
    };
    ([lbSetColor] call native);
    PUBLIC FUNCTION("array", "lbSetColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbSetColor _args;";
    };
    ([lbSetCurSel] call native);
    PUBLIC FUNCTION("array", "lbSetCurSel") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbSetCurSel _args;";
    };
    ([lbSetData] call native);
    PUBLIC FUNCTION("array", "lbSetData") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbSetData _args;";
    };
    ([lbSetPicture] call native);
    PUBLIC FUNCTION("array", "lbSetPicture") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbSetPicture _args;";
    };
    ([lbSetSelected] call native);
    PUBLIC FUNCTION("array", "lbSetSelected") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbSetSelected _args;";
    };
    ([lbSetTooltip] call native);
    PUBLIC FUNCTION("array", "lbSetTooltip") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lbSetTooltip _args;";
    };
    ([lbSetValue] call native);
    PUBLIC FUNCTION("array", "lbSetValue") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbSetValue _args;";
    };
    ([lbSize] call native);
    PUBLIC FUNCTION("array", "lbSize") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lbSize _args;";
    };
    ([lbSort] call native);
    PUBLIC FUNCTION("array", "lbSort") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lbSort _args;";
    };
    ([lbSortByValue] call native);
    PUBLIC FUNCTION("array", "lbSortByValue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lbSortByValue _args;";
    };
    ([lbText] call native);
    PUBLIC FUNCTION("array", "lbText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbText _args;";
    };
    ([lbValue] call native);
    PUBLIC FUNCTION("array", "lbValue") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lbValue _args;";
    };
    ([leader] call native);
    PUBLIC FUNCTION("array", "leader") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "leader _args;";
    };
    ([leaveVehicle] call native);
    PUBLIC FUNCTION("array", "leaveVehicle") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj leaveVehicle _args;";
    };
    ([libraryCredits] call native);
    PUBLIC FUNCTION("", "libraryCredits") {
        "libraryCredits";
    };
    ([libraryDisclaimers] call native);
    PUBLIC FUNCTION("", "libraryDisclaimers") {
        "libraryDisclaimers";
    };
    ([lifeState] call native);
    PUBLIC FUNCTION("array", "lifeState") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lifeState _args;";
    };
    ([lightAttachObject] call native);
    PUBLIC FUNCTION("array", "lightAttachObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lightAttachObject _args;";
    };
    ([lightDetachObject] call native);
    PUBLIC FUNCTION("array", "lightDetachObject") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lightDetachObject _args;";
    };
    ([lightIsOn] call native);
    PUBLIC FUNCTION("array", "lightIsOn") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lightIsOn _args;";
    };
    ([lightnings] call native);
    PUBLIC FUNCTION("", "lightnings") {
        "lightnings";
    };
    ([limitSpeed] call native);
    PUBLIC FUNCTION("array", "limitSpeed") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj limitSpeed _args;";
    };
    ([lineBreak] call native);
    PUBLIC FUNCTION("", "lineBreak") {
        "lineBreak";
    };
    ([lineIntersects] call native);
    PUBLIC FUNCTION("array", "lineIntersects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lineIntersects _args;";
    };
    ([lineIntersectsObjs] call native);
    PUBLIC FUNCTION("array", "lineIntersectsObjs") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lineIntersectsObjs _args;";
    };
    ([lineIntersectsWith] call native);
    PUBLIC FUNCTION("array", "lineIntersectsWith") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lineIntersectsWith _args;";
    };
    ([linearConversion] call native);
    PUBLIC FUNCTION("array", "linearConversion") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "linearConversion _args;";
    };
    ([linkItem] call native);
    PUBLIC FUNCTION("array", "linkItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj linkItem _args;";
    };
    ([list] call native);
    PUBLIC FUNCTION("array", "list") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "list _args;";
    };
    ([listObjects] call native);
    PUBLIC FUNCTION("array", "listObjects") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj listObjects _args;";
    };
    ([ln] call native);
    PUBLIC FUNCTION("array", "ln") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ln _args;";
    };
    ([lnbAddArray] call native);
    PUBLIC FUNCTION("array", "lnbAddArray") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbAddArray _args;";
    };
    ([lnbAddColumn] call native);
    PUBLIC FUNCTION("array", "lnbAddColumn") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lnbAddColumn _args;";
    };
    ([lnbAddRow] call native);
    PUBLIC FUNCTION("array", "lnbAddRow") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbAddRow _args;";
    };
    ([lnbClear] call native);
    PUBLIC FUNCTION("array", "lnbClear") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbClear _args;";
    };
    ([lnbColor] call native);
    PUBLIC FUNCTION("array", "lnbColor") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbColor _args;";
    };
    ([lnbCurSelRow] call native);
    PUBLIC FUNCTION("array", "lnbCurSelRow") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbCurSelRow _args;";
    };
    ([lnbData] call native);
    PUBLIC FUNCTION("array", "lnbData") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbData _args;";
    };
    ([lnbDeleteColumn] call native);
    PUBLIC FUNCTION("array", "lnbDeleteColumn") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbDeleteColumn _args;";
    };
    ([lnbDeleteRow] call native);
    PUBLIC FUNCTION("array", "lnbDeleteRow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lnbDeleteRow _args;";
    };
    ([lnbGetColumnsPosition] call native);
    PUBLIC FUNCTION("array", "lnbGetColumnsPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbGetColumnsPosition _args;";
    };
    ([lnbPicture] call native);
    PUBLIC FUNCTION("array", "lnbPicture") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lnbPicture _args;";
    };
    ([lnbSetColor] call native);
    PUBLIC FUNCTION("array", "lnbSetColor") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbSetColor _args;";
    };
    ([lnbSetCurSelRow] call native);
    PUBLIC FUNCTION("array", "lnbSetCurSelRow") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbSetCurSelRow _args;";
    };
    ([lnbSetData] call native);
    PUBLIC FUNCTION("array", "lnbSetData") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbSetData _args;";
    };
    ([lnbSetPicture] call native);
    PUBLIC FUNCTION("array", "lnbSetPicture") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbSetPicture _args;";
    };
    ([lnbSetText] call native);
    PUBLIC FUNCTION("array", "lnbSetText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbSetText _args;";
    };
    ([lnbSetValue] call native);
    PUBLIC FUNCTION("array", "lnbSetValue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbSetValue _args;";
    };
    ([lnbSize] call native);
    PUBLIC FUNCTION("array", "lnbSize") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbSize _args;";
    };
    ([lnbText] call native);
    PUBLIC FUNCTION("array", "lnbText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lnbText _args;";
    };
    ([lnbValue] call native);
    PUBLIC FUNCTION("array", "lnbValue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbValue _args;";
    };
    ([lnbsetColumnsPos] call native);
    PUBLIC FUNCTION("array", "lnbsetColumnsPos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lnbsetColumnsPos _args;";
    };
    ([load] call native);
    PUBLIC FUNCTION("array", "load") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "load _args;";
    };
    ([loadAbs] call native);
    PUBLIC FUNCTION("array", "loadAbs") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "loadAbs _args;";
    };
    ([loadBackpack] call native);
    PUBLIC FUNCTION("array", "loadBackpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "loadBackpack _args;";
    };
    ([loadFile] call native);
    PUBLIC FUNCTION("array", "loadFile") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "loadFile _args;";
    };
    ([loadGame] call native);
    PUBLIC FUNCTION("", "loadGame") {
        "loadGame";
    };
    ([loadIdentity] call native);
    PUBLIC FUNCTION("array", "loadIdentity") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj loadIdentity _args;";
    };
    ([loadMagazine] call native);
    PUBLIC FUNCTION("array", "loadMagazine") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj loadMagazine _args;";
    };
    ([loadOverlay] call native);
    PUBLIC FUNCTION("array", "loadOverlay") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj loadOverlay _args;";
    };
    ([loadStatus] call native);
    PUBLIC FUNCTION("array", "loadStatus") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj loadStatus _args;";
    };
    ([loadUniform] call native);
    PUBLIC FUNCTION("array", "loadUniform") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "loadUniform _args;";
    };
    ([loadVest] call native);
    PUBLIC FUNCTION("array", "loadVest") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "loadVest _args;";
    };
    ([local] call native);
    PUBLIC FUNCTION("array", "local") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "local _args;";
    };
    ([localize] call native);
    PUBLIC FUNCTION("array", "localize") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "localize _args;";
    };
    ([locationNull] call native);
    PUBLIC FUNCTION("", "locationNull") {
        "locationNull";
    };
    ([locationPosition] call native);
    PUBLIC FUNCTION("array", "locationPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "locationPosition _args;";
    };
    ([lock] call native);
    PUBLIC FUNCTION("array", "lock") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lock _args;";
    };
    ([lockDriver] call native);
    PUBLIC FUNCTION("array", "lockDriver") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lockDriver _args;";
    };
    ([lockTurret] call native);
    PUBLIC FUNCTION("array", "lockTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lockTurret _args;";
    };
    ([lockWp] call native);
    PUBLIC FUNCTION("array", "lockWp") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lockWp _args;";
    };
    ([locked] call native);
    PUBLIC FUNCTION("array", "locked") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "locked _args;";
    };
    ([lockedCargo] call native);
    PUBLIC FUNCTION("array", "lockedCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lockedCargo _args;";
    };
    ([lockedDriver] call native);
    PUBLIC FUNCTION("array", "lockedDriver") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "lockedDriver _args;";
    };
    ([lockedTurret] call native);
    PUBLIC FUNCTION("array", "lockedTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lockedTurret _args;";
    };
    ([log] call native);
    PUBLIC FUNCTION("array", "log") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "log _args;";
    };
    ([lookAt] call native);
    PUBLIC FUNCTION("array", "lookAt") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lookAt _args;";
    };
    ([lookAtPos] call native);
    PUBLIC FUNCTION("array", "lookAtPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj lookAtPos _args;";
    };
    ([magazineCargo] call native);
    PUBLIC FUNCTION("array", "magazineCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "magazineCargo _args;";
    };
    ([magazines] call native);
    PUBLIC FUNCTION("array", "magazines") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "magazines _args;";
    };
    ([magazinesDetail] call native);
    PUBLIC FUNCTION("array", "magazinesDetail") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "magazinesDetail _args;";
    };
    ([magazinesDetailBackpack] call native);
    PUBLIC FUNCTION("array", "magazinesDetailBackpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "magazinesDetailBackpack _args;";
    };
    ([magazinesDetailUniform] call native);
    PUBLIC FUNCTION("array", "magazinesDetailUniform") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "magazinesDetailUniform _args;";
    };
    ([magazinesDetailVest] call native);
    PUBLIC FUNCTION("array", "magazinesDetailVest") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "magazinesDetailVest _args;";
    };
    ([magazinesTurret] call native);
    PUBLIC FUNCTION("array", "magazinesTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj magazinesTurret _args;";
    };
    ([mapAnimAdd] call native);
    PUBLIC FUNCTION("array", "mapAnimAdd") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "mapAnimAdd _args;";
    };
    ([mapAnimClear] call native);
    PUBLIC FUNCTION("", "mapAnimClear") {
        "mapAnimClear";
    };
    ([mapAnimCommit] call native);
    PUBLIC FUNCTION("", "mapAnimCommit") {
        "mapAnimCommit";
    };
    ([mapAnimDone] call native);
    PUBLIC FUNCTION("", "mapAnimDone") {
        "mapAnimDone";
    };
    ([mapCenterOnCamera] call native);
    PUBLIC FUNCTION("array", "mapCenterOnCamera") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj mapCenterOnCamera _args;";
    };
    ([mapGridPosition] call native);
    PUBLIC FUNCTION("array", "mapGridPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "mapGridPosition _args;";
    };
    ([markAsFinishedOnSteam] call native);
    PUBLIC FUNCTION("", "markAsFinishedOnSteam") {
        "markAsFinishedOnSteam";
    };
    ([markerAlpha] call native);
    PUBLIC FUNCTION("array", "markerAlpha") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerAlpha _args;";
    };
    ([markerBrush] call native);
    PUBLIC FUNCTION("array", "markerBrush") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerBrush _args;";
    };
    ([markerColor] call native);
    PUBLIC FUNCTION("array", "markerColor") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerColor _args;";
    };
    ([markerDir] call native);
    PUBLIC FUNCTION("array", "markerDir") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerDir _args;";
    };
    ([markerPos] call native);
    PUBLIC FUNCTION("array", "markerPos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerPos _args;";
    };
    ([markerShape] call native);
    PUBLIC FUNCTION("array", "markerShape") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerShape _args;";
    };
    ([markerSize] call native);
    PUBLIC FUNCTION("array", "markerSize") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerSize _args;";
    };
    ([markerText] call native);
    PUBLIC FUNCTION("array", "markerText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerText _args;";
    };
    ([markerType] call native);
    PUBLIC FUNCTION("array", "markerType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "markerType _args;";
    };
    ([max] call native);
    PUBLIC FUNCTION("array", "max") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj max _args;";
    };
    ([members] call native);
    PUBLIC FUNCTION("array", "members") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "members _args;";
    };
    ([min] call native);
    PUBLIC FUNCTION("array", "min") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj min _args;";
    };
    ([mineActive] call native);
    PUBLIC FUNCTION("array", "mineActive") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "mineActive _args;";
    };
    ([missionConfigFile] call native);
    PUBLIC FUNCTION("", "missionConfigFile") {
        "missionConfigFile";
    };
    ([missionName] call native);
    PUBLIC FUNCTION("", "missionName") {
        "missionName";
    };
    ([missionNamespace] call native);
    PUBLIC FUNCTION("", "missionNamespace") {
        "missionNamespace";
    };
    ([missionStart] call native);
    PUBLIC FUNCTION("", "missionStart") {
        "missionStart";
    };
    ([mod] call native);
    PUBLIC FUNCTION("array", "mod") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj mod _args;";
    };
    ([modelToWorld] call native);
    PUBLIC FUNCTION("array", "modelToWorld") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj modelToWorld _args;";
    };
    ([moonIntensity] call native);
    PUBLIC FUNCTION("", "moonIntensity") {
        "moonIntensity";
    };
    ([morale] call native);
    PUBLIC FUNCTION("array", "morale") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "morale _args;";
    };
    ([move] call native);
    PUBLIC FUNCTION("array", "move") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj move _args;";
    };
    ([moveInCargo] call native);
    PUBLIC FUNCTION("array", "moveInCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj moveInCargo _args;";
    };
    ([moveInCommander] call native);
    PUBLIC FUNCTION("array", "moveInCommander") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj moveInCommander _args;";
    };
    ([moveInDriver] call native);
    PUBLIC FUNCTION("array", "moveInDriver") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj moveInDriver _args;";
    };
    ([moveInGunner] call native);
    PUBLIC FUNCTION("array", "moveInGunner") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj moveInGunner _args;";
    };
    ([moveInTurret] call native);
    PUBLIC FUNCTION("array", "moveInTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj moveInTurret _args;";
    };
    ([moveObjectToEnd] call native);
    PUBLIC FUNCTION("array", "moveObjectToEnd") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj moveObjectToEnd _args;";
    };
    ([moveOut] call native);
    PUBLIC FUNCTION("array", "moveOut") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "moveOut _args;";
    };
    ([moveTime] call native);
    PUBLIC FUNCTION("array", "moveTime") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "moveTime _args;";
    };
    ([moveTo] call native);
    PUBLIC FUNCTION("array", "moveTo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj moveTo _args;";
    };
    ([moveToCompleted] call native);
    PUBLIC FUNCTION("array", "moveToCompleted") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "moveToCompleted _args;";
    };
    ([moveToFailed] call native);
    PUBLIC FUNCTION("array", "moveToFailed") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "moveToFailed _args;";
    };
    ([musicVolume] call native);
    PUBLIC FUNCTION("", "musicVolume") {
        "musicVolume";
    };
    ([nMenuItems] call native);
    PUBLIC FUNCTION("array", "nMenuItems") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj nMenuItems _args;";
    };
    ([name] call native);
    PUBLIC FUNCTION("array", "name") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "name _args;";
    };
    ([nameSound] call native);
    PUBLIC FUNCTION("array", "nameSound") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "nameSound _args;";
    };
    ([name] call native);
    PUBLIC FUNCTION("array", "name") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "name _args;";
    };
    ([nearEntities] call native);
    PUBLIC FUNCTION("array", "nearEntities") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj nearEntities _args;";
    };
    ([nearObjects] call native);
    PUBLIC FUNCTION("array", "nearObjects") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj nearObjects _args;";
    };
    ([nearObjectsReady] call native);
    PUBLIC FUNCTION("array", "nearObjectsReady") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj nearObjectsReady _args;";
    };
    ([nearRoads] call native);
    PUBLIC FUNCTION("array", "nearRoads") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj nearRoads _args;";
    };
    ([nearSupplies] call native);
    PUBLIC FUNCTION("array", "nearSupplies") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj nearSupplies _args;";
    };
    ([nearestBuilding] call native);
    PUBLIC FUNCTION("array", "nearestBuilding") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "nearestBuilding _args;";
    };
    ([nearestLocation] call native);
    PUBLIC FUNCTION("array", "nearestLocation") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "nearestLocation _args;";
    };
    ([nearestLocationWithDubbing] call native);
    PUBLIC FUNCTION("array", "nearestLocationWithDubbing") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "nearestLocationWithDubbing _args;";
    };
    ([nearestLocations] call native);
    PUBLIC FUNCTION("array", "nearestLocations") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "nearestLocations _args;";
    };
    ([nearestObject] call native);
    PUBLIC FUNCTION("array", "nearestObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj nearestObject _args;";
    };
    ([nearestObjects] call native);
    PUBLIC FUNCTION("array", "nearestObjects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "nearestObjects _args;";
    };
    ([needReload] call native);
    PUBLIC FUNCTION("array", "needReload") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "needReload _args;";
    };
    ([netId] call native);
    PUBLIC FUNCTION("array", "netId") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "netId _args;";
    };
    ([netObjNull] call native);
    PUBLIC FUNCTION("", "netObjNull") {
        "netObjNull";
    };
    ([newOverlay] call native);
    PUBLIC FUNCTION("array", "newOverlay") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj newOverlay _args;";
    };
    ([nextMenuItemIndex] call native);
    PUBLIC FUNCTION("array", "nextMenuItemIndex") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "nextMenuItemIndex _args;";
    };
    ([nextWeatherChange] call native);
    PUBLIC FUNCTION("", "nextWeatherChange") {
        "nextWeatherChange";
    };
    ([nil] call native);
    PUBLIC FUNCTION("", "nil") {
        "nil";
    };
    ([not] call native);
    PUBLIC FUNCTION("array", "not") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "not _args;";
    };
    ([numberToDate] call native);
    PUBLIC FUNCTION("array", "numberToDate") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "numberToDate _args;";
    };
    ([objNull] call native);
    PUBLIC FUNCTION("", "objNull") {
        "objNull";
    };
    ([objStatus] call native);
    PUBLIC FUNCTION("array", "objStatus") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj objStatus _args;";
    };
    ([objectCurators] call native);
    PUBLIC FUNCTION("array", "objectCurators") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "objectCurators _args;";
    };
    ([objectFromNetId] call native);
    PUBLIC FUNCTION("array", "objectFromNetId") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "objectFromNetId _args;";
    };
    ([onBriefingGroup] call native);
    PUBLIC FUNCTION("array", "onBriefingGroup") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onBriefingGroup _args;";
    };
    ([onBriefingNotes] call native);
    PUBLIC FUNCTION("array", "onBriefingNotes") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onBriefingNotes _args;";
    };
    ([onBriefingPlan] call native);
    PUBLIC FUNCTION("array", "onBriefingPlan") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onBriefingPlan _args;";
    };
    ([onBriefingTeamSwitch] call native);
    PUBLIC FUNCTION("array", "onBriefingTeamSwitch") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onBriefingTeamSwitch _args;";
    };
    ([onCommandModeChanged] call native);
    PUBLIC FUNCTION("array", "onCommandModeChanged") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onCommandModeChanged _args;";
    };
    ([onDoubleClick] call native);
    PUBLIC FUNCTION("array", "onDoubleClick") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj onDoubleClick _args;";
    };
    ([onEachFrame] call native);
    PUBLIC FUNCTION("array", "onEachFrame") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onEachFrame _args;";
    };
    ([onGroupIconClick] call native);
    PUBLIC FUNCTION("array", "onGroupIconClick") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onGroupIconClick _args;";
    };
    ([onGroupIconOverEnter] call native);
    PUBLIC FUNCTION("array", "onGroupIconOverEnter") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onGroupIconOverEnter _args;";
    };
    ([onGroupIconOverLeave] call native);
    PUBLIC FUNCTION("array", "onGroupIconOverLeave") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onGroupIconOverLeave _args;";
    };
    ([onHCGroupSelectionChanged] call native);
    PUBLIC FUNCTION("array", "onHCGroupSelectionChanged") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onHCGroupSelectionChanged _args;";
    };
    ([onMapSingleClick] call native);
    PUBLIC FUNCTION("array", "onMapSingleClick") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onMapSingleClick _args;";
    };
    ([onPlayerConnected] call native);
    PUBLIC FUNCTION("array", "onPlayerConnected") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onPlayerConnected _args;";
    };
    ([onPlayerDisconnected] call native);
    PUBLIC FUNCTION("array", "onPlayerDisconnected") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onPlayerDisconnected _args;";
    };
    ([onPreloadFinished] call native);
    PUBLIC FUNCTION("array", "onPreloadFinished") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onPreloadFinished _args;";
    };
    ([onPreloadStarted] call native);
    PUBLIC FUNCTION("array", "onPreloadStarted") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onPreloadStarted _args;";
    };
    ([onShowNewObject] call native);
    PUBLIC FUNCTION("array", "onShowNewObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj onShowNewObject _args;";
    };
    ([onTeamSwitch] call native);
    PUBLIC FUNCTION("array", "onTeamSwitch") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "onTeamSwitch _args;";
    };
    ([openCuratorInterface] call native);
    PUBLIC FUNCTION("", "openCuratorInterface") {
        "openCuratorInterface";
    };
    ([openMap] call native);
    PUBLIC FUNCTION("array", "openMap") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "openMap _args;";
    };
    ([opfor] call native);
    PUBLIC FUNCTION("", "opfor") {
        "opfor";
    };
    ([orderGetIn] call native);
    PUBLIC FUNCTION("array", "orderGetIn") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj orderGetIn _args;";
    };
    ([overcast] call native);
    PUBLIC FUNCTION("", "overcast") {
        "overcast";
    };
    ([overcastForecast] call native);
    PUBLIC FUNCTION("", "overcastForecast") {
        "overcastForecast";
    };
    ([owner] call native);
    PUBLIC FUNCTION("array", "owner") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "owner _args;";
    };
    ([parseNumber] call native);
    PUBLIC FUNCTION("array", "parseNumber") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "parseNumber _args;";
    };
    ([parseText] call native);
    PUBLIC FUNCTION("array", "parseText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "parseText _args;";
    };
    ([parsingNamespace] call native);
    PUBLIC FUNCTION("", "parsingNamespace") {
        "parsingNamespace";
    };
    ([particlesQuality] call native);
    PUBLIC FUNCTION("", "particlesQuality") {
        "particlesQuality";
    };
    ([pi] call native);
    PUBLIC FUNCTION("", "pi") {
        "pi";
    };
    ([pickWeaponPool] call native);
    PUBLIC FUNCTION("array", "pickWeaponPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "pickWeaponPool _args;";
    };
    ([pitch] call native);
    PUBLIC FUNCTION("array", "pitch") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "pitch _args;";
    };
    ([playAction] call native);
    PUBLIC FUNCTION("array", "playAction") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj playAction _args;";
    };
    ([playActionNow] call native);
    PUBLIC FUNCTION("array", "playActionNow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj playActionNow _args;";
    };
    ([playGesture] call native);
    PUBLIC FUNCTION("array", "playGesture") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj playGesture _args;";
    };
    ([playMission] call native);
    PUBLIC FUNCTION("array", "playMission") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "playMission _args;";
    };
    ([playMove] call native);
    PUBLIC FUNCTION("array", "playMove") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj playMove _args;";
    };
    ([playMoveNow] call native);
    PUBLIC FUNCTION("array", "playMoveNow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj playMoveNow _args;";
    };
    ([playMusic] call native);
    PUBLIC FUNCTION("array", "playMusic") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "playMusic _args;";
    };
    ([playScriptedMission] call native);
    PUBLIC FUNCTION("array", "playScriptedMission") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "playScriptedMission _args;";
    };
    ([playSound] call native);
    PUBLIC FUNCTION("array", "playSound") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "playSound _args;";
    };
    ([playSound3D] call native);
    PUBLIC FUNCTION("array", "playSound3D") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "playSound3D _args;";
    };
    ([playableSlotsNumber] call native);
    PUBLIC FUNCTION("array", "playableSlotsNumber") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "playableSlotsNumber _args;";
    };
    ([playableUnits] call native);
    PUBLIC FUNCTION("", "playableUnits") {
        "playableUnits";
    };
    ([player] call native);
    PUBLIC FUNCTION("", "player") {
        "player";
    };
    ([playerSide] call native);
    PUBLIC FUNCTION("", "playerSide") {
        "playerSide";
    };
    ([playersNumber] call native);
    PUBLIC FUNCTION("array", "playersNumber") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "playersNumber _args;";
    };
    ([posScreenToWorld] call native);
    PUBLIC FUNCTION("array", "posScreenToWorld") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj posScreenToWorld _args;";
    };
    ([posWorldToScreen] call native);
    PUBLIC FUNCTION("array", "posWorldToScreen") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj posWorldToScreen _args;";
    };
    ([position] call native);
    PUBLIC FUNCTION("array", "position") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "position _args;";
    };
    ([ppEffectAdjust] call native);
    PUBLIC FUNCTION("array", "ppEffectAdjust") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ppEffectAdjust _args;";
    };
    ([ppEffectCommit] call native);
    PUBLIC FUNCTION("array", "ppEffectCommit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ppEffectCommit _args;";
    };
    ([ppEffectCommitted] call native);
    PUBLIC FUNCTION("array", "ppEffectCommitted") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ppEffectCommitted _args;";
    };
    ([ppEffectCreate] call native);
    PUBLIC FUNCTION("array", "ppEffectCreate") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ppEffectCreate _args;";
    };
    ([ppEffectDestroy] call native);
    PUBLIC FUNCTION("array", "ppEffectDestroy") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "ppEffectDestroy _args;";
    };
    ([ppEffectEnable] call native);
    PUBLIC FUNCTION("array", "ppEffectEnable") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ppEffectEnable _args;";
    };
    ([ppEffectForceInNVG] call native);
    PUBLIC FUNCTION("array", "ppEffectForceInNVG") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj ppEffectForceInNVG _args;";
    };
    ([precision] call native);
    PUBLIC FUNCTION("array", "precision") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "precision _args;";
    };
    ([preloadCamera] call native);
    PUBLIC FUNCTION("array", "preloadCamera") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "preloadCamera _args;";
    };
    ([preloadObject] call native);
    PUBLIC FUNCTION("array", "preloadObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj preloadObject _args;";
    };
    ([preloadSound] call native);
    PUBLIC FUNCTION("array", "preloadSound") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "preloadSound _args;";
    };
    ([preloadTitleObj] call native);
    PUBLIC FUNCTION("array", "preloadTitleObj") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "preloadTitleObj _args;";
    };
    ([preloadTitleRsc] call native);
    PUBLIC FUNCTION("array", "preloadTitleRsc") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "preloadTitleRsc _args;";
    };
    ([preprocessFile] call native);
    PUBLIC FUNCTION("array", "preprocessFile") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "preprocessFile _args;";
    };
    ([preprocessFileLineNumbers] call native);
    PUBLIC FUNCTION("array", "preprocessFileLineNumbers") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "preprocessFileLineNumbers _args;";
    };
    ([primaryWeapon] call native);
    PUBLIC FUNCTION("array", "primaryWeapon") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "primaryWeapon _args;";
    };
    ([primaryWeaponItems] call native);
    PUBLIC FUNCTION("array", "primaryWeaponItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "primaryWeaponItems _args;";
    };
    ([primaryWeaponMagazine] call native);
    PUBLIC FUNCTION("array", "primaryWeaponMagazine") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "primaryWeaponMagazine _args;";
    };
    ([priority] call native);
    PUBLIC FUNCTION("array", "priority") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "priority _args;";
    };
    ([private] call native);
    PUBLIC FUNCTION("array", "private") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "private _args;";
    };
    ([processDiaryLink] call native);
    PUBLIC FUNCTION("array", "processDiaryLink") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "processDiaryLink _args;";
    };
    ([productVersion] call native);
    PUBLIC FUNCTION("", "productVersion") {
        "productVersion";
    };
    ([profileName] call native);
    PUBLIC FUNCTION("", "profileName") {
        "profileName";
    };
    ([profileNamespace] call native);
    PUBLIC FUNCTION("", "profileNamespace") {
        "profileNamespace";
    };
    ([progressLoadingScreen] call native);
    PUBLIC FUNCTION("array", "progressLoadingScreen") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "progressLoadingScreen _args;";
    };
    ([progressPosition] call native);
    PUBLIC FUNCTION("array", "progressPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "progressPosition _args;";
    };
    ([progressSetPosition] call native);
    PUBLIC FUNCTION("array", "progressSetPosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj progressSetPosition _args;";
    };
    ([publicVariable] call native);
    PUBLIC FUNCTION("array", "publicVariable") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "publicVariable _args;";
    };
    ([publicVariableClient] call native);
    PUBLIC FUNCTION("array", "publicVariableClient") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj publicVariableClient _args;";
    };
    ([publicVariableServer] call native);
    PUBLIC FUNCTION("array", "publicVariableServer") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "publicVariableServer _args;";
    };
    ([putWeaponPool] call native);
    PUBLIC FUNCTION("array", "putWeaponPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "putWeaponPool _args;";
    };
    ([queryItemsPool] call native);
    PUBLIC FUNCTION("array", "queryItemsPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "queryItemsPool _args;";
    };
    ([queryMagazinePool] call native);
    PUBLIC FUNCTION("array", "queryMagazinePool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "queryMagazinePool _args;";
    };
    ([queryWeaponPool] call native);
    PUBLIC FUNCTION("array", "queryWeaponPool") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "queryWeaponPool _args;";
    };
    ([rad] call native);
    PUBLIC FUNCTION("array", "rad") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "rad _args;";
    };
    ([radioChannelAdd] call native);
    PUBLIC FUNCTION("array", "radioChannelAdd") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj radioChannelAdd _args;";
    };
    ([radioChannelCreate] call native);
    PUBLIC FUNCTION("array", "radioChannelCreate") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "radioChannelCreate _args;";
    };
    ([radioChannelRemove] call native);
    PUBLIC FUNCTION("array", "radioChannelRemove") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj radioChannelRemove _args;";
    };
    ([radioChannelSetCallSign] call native);
    PUBLIC FUNCTION("array", "radioChannelSetCallSign") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj radioChannelSetCallSign _args;";
    };
    ([radioChannelSetLabel] call native);
    PUBLIC FUNCTION("array", "radioChannelSetLabel") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj radioChannelSetLabel _args;";
    };
    ([radioVolume] call native);
    PUBLIC FUNCTION("", "radioVolume") {
        "radioVolume";
    };
    ([rain] call native);
    PUBLIC FUNCTION("", "rain") {
        "rain";
    };
    ([rainbow] call native);
    PUBLIC FUNCTION("", "rainbow") {
        "rainbow";
    };
    ([random] call native);
    PUBLIC FUNCTION("array", "random") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "random _args;";
    };
    ([rank] call native);
    PUBLIC FUNCTION("array", "rank") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "rank _args;";
    };
    ([rankId] call native);
    PUBLIC FUNCTION("array", "rankId") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "rankId _args;";
    };
    ([rating] call native);
    PUBLIC FUNCTION("array", "rating") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "rating _args;";
    };
    ([rectangular] call native);
    PUBLIC FUNCTION("array", "rectangular") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "rectangular _args;";
    };
    ([registerTask] call native);
    PUBLIC FUNCTION("array", "registerTask") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj registerTask _args;";
    };
    ([registeredTasks] call native);
    PUBLIC FUNCTION("array", "registeredTasks") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "registeredTasks _args;";
    };
    ([reload] call native);
    PUBLIC FUNCTION("array", "reload") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "reload _args;";
    };
    ([reloadEnabled] call native);
    PUBLIC FUNCTION("array", "reloadEnabled") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "reloadEnabled _args;";
    };
    ([remoteControl] call native);
    PUBLIC FUNCTION("array", "remoteControl") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj remoteControl _args;";
    };
    ([removeAction] call native);
    PUBLIC FUNCTION("array", "removeAction") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeAction _args;";
    };
    ([removeAllActions] call native);
    PUBLIC FUNCTION("array", "removeAllActions") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllActions _args;";
    };
    ([removeAllAssignedItems] call native);
    PUBLIC FUNCTION("array", "removeAllAssignedItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllAssignedItems _args;";
    };
    ([removeAllContainers] call native);
    PUBLIC FUNCTION("array", "removeAllContainers") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllContainers _args;";
    };
    ([removeAllCuratorAddons] call native);
    PUBLIC FUNCTION("array", "removeAllCuratorAddons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllCuratorAddons _args;";
    };
    ([removeAllCuratorCameraAreas] call native);
    PUBLIC FUNCTION("array", "removeAllCuratorCameraAreas") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllCuratorCameraAreas _args;";
    };
    ([removeAllCuratorEditingAreas] call native);
    PUBLIC FUNCTION("array", "removeAllCuratorEditingAreas") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllCuratorEditingAreas _args;";
    };
    ([removeAllEventHandlers] call native);
    PUBLIC FUNCTION("array", "removeAllEventHandlers") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeAllEventHandlers _args;";
    };
    ([removeAllHandgunItems] call native);
    PUBLIC FUNCTION("array", "removeAllHandgunItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllHandgunItems _args;";
    };
    ([removeAllItems] call native);
    PUBLIC FUNCTION("array", "removeAllItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllItems _args;";
    };
    ([removeAllItemsWithMagazines] call native);
    PUBLIC FUNCTION("array", "removeAllItemsWithMagazines") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllItemsWithMagazines _args;";
    };
    ([removeAllMPEventHandlers] call native);
    PUBLIC FUNCTION("array", "removeAllMPEventHandlers") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeAllMPEventHandlers _args;";
    };
    ([removeAllMissionEventHandlers] call native);
    PUBLIC FUNCTION("array", "removeAllMissionEventHandlers") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllMissionEventHandlers _args;";
    };
    ([removeAllMusicEventHandlers] call native);
    PUBLIC FUNCTION("array", "removeAllMusicEventHandlers") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllMusicEventHandlers _args;";
    };
    ([removeAllPrimaryWeaponItems] call native);
    PUBLIC FUNCTION("array", "removeAllPrimaryWeaponItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllPrimaryWeaponItems _args;";
    };
    ([removeAllWeapons] call native);
    PUBLIC FUNCTION("array", "removeAllWeapons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeAllWeapons _args;";
    };
    ([removeBackpack] call native);
    PUBLIC FUNCTION("array", "removeBackpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeBackpack _args;";
    };
    ([removeCuratorAddons] call native);
    PUBLIC FUNCTION("array", "removeCuratorAddons") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeCuratorAddons _args;";
    };
    ([removeCuratorCameraArea] call native);
    PUBLIC FUNCTION("array", "removeCuratorCameraArea") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeCuratorCameraArea _args;";
    };
    ([removeCuratorEditableObjects] call native);
    PUBLIC FUNCTION("array", "removeCuratorEditableObjects") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeCuratorEditableObjects _args;";
    };
    ([removeCuratorEditingArea] call native);
    PUBLIC FUNCTION("array", "removeCuratorEditingArea") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeCuratorEditingArea _args;";
    };
    ([removeDrawIcon] call native);
    PUBLIC FUNCTION("array", "removeDrawIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeDrawIcon _args;";
    };
    ([removeDrawLinks] call native);
    PUBLIC FUNCTION("array", "removeDrawLinks") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeDrawLinks _args;";
    };
    ([removeEventHandler] call native);
    PUBLIC FUNCTION("array", "removeEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeEventHandler _args;";
    };
    ([removeGoggles] call native);
    PUBLIC FUNCTION("array", "removeGoggles") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeGoggles _args;";
    };
    ([removeGroupIcon] call native);
    PUBLIC FUNCTION("array", "removeGroupIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeGroupIcon _args;";
    };
    ([removeHandgunItem] call native);
    PUBLIC FUNCTION("array", "removeHandgunItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeHandgunItem _args;";
    };
    ([removeHeadgear] call native);
    PUBLIC FUNCTION("array", "removeHeadgear") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeHeadgear _args;";
    };
    ([removeItem] call native);
    PUBLIC FUNCTION("array", "removeItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeItem _args;";
    };
    ([removeItemFromBackpack] call native);
    PUBLIC FUNCTION("array", "removeItemFromBackpack") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeItemFromBackpack _args;";
    };
    ([removeItemFromUniform] call native);
    PUBLIC FUNCTION("array", "removeItemFromUniform") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeItemFromUniform _args;";
    };
    ([removeItemFromVest] call native);
    PUBLIC FUNCTION("array", "removeItemFromVest") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeItemFromVest _args;";
    };
    ([removeItems] call native);
    PUBLIC FUNCTION("array", "removeItems") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeItems _args;";
    };
    ([removeMPEventHandler] call native);
    PUBLIC FUNCTION("array", "removeMPEventHandler") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeMPEventHandler _args;";
    };
    ([removeMagazine] call native);
    PUBLIC FUNCTION("array", "removeMagazine") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeMagazine _args;";
    };
    ([addMagazineGlobal] call native);
    PUBLIC FUNCTION("array", "addMagazineGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj addMagazineGlobal _args;";
    };
    ([removeMagazineTurret] call native);
    PUBLIC FUNCTION("array", "removeMagazineTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeMagazineTurret _args;";
    };
    ([removeMagazines] call native);
    PUBLIC FUNCTION("array", "removeMagazines") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeMagazines _args;";
    };
    ([removeMagazinesTurret] call native);
    PUBLIC FUNCTION("array", "removeMagazinesTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeMagazinesTurret _args;";
    };
    ([removeMenuItem] call native);
    PUBLIC FUNCTION("array", "removeMenuItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeMenuItem _args;";
    };
    ([removeMissionEventHandler] call native);
    PUBLIC FUNCTION("array", "removeMissionEventHandler") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeMissionEventHandler _args;";
    };
    ([removeMusicEventHandler] call native);
    PUBLIC FUNCTION("array", "removeMusicEventHandler") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeMusicEventHandler _args;";
    };
    ([removePrimaryWeaponItem] call native);
    PUBLIC FUNCTION("array", "removePrimaryWeaponItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removePrimaryWeaponItem _args;";
    };
    ([removeSimpleTask] call native);
    PUBLIC FUNCTION("array", "removeSimpleTask") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeSimpleTask _args;";
    };
    ([removeSwitchableUnit] call native);
    PUBLIC FUNCTION("array", "removeSwitchableUnit") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeSwitchableUnit _args;";
    };
    ([removeTeamMember] call native);
    PUBLIC FUNCTION("array", "removeTeamMember") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeTeamMember _args;";
    };
    ([removeUniform] call native);
    PUBLIC FUNCTION("array", "removeUniform") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeUniform _args;";
    };
    ([removeVest] call native);
    PUBLIC FUNCTION("array", "removeVest") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "removeVest _args;";
    };
    ([removeWeapon] call native);
    PUBLIC FUNCTION("array", "removeWeapon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeWeapon _args;";
    };
    ([removeWeaponGlobal] call native);
    PUBLIC FUNCTION("array", "removeWeaponGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj removeWeaponGlobal _args;";
    };
    ([requiredVersion] call native);
    PUBLIC FUNCTION("array", "requiredVersion") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "requiredVersion _args;";
    };
    ([resetCamShake] call native);
    PUBLIC FUNCTION("", "resetCamShake") {
        "resetCamShake";
    };
    ([resetSubgroupDirection] call native);
    PUBLIC FUNCTION("array", "resetSubgroupDirection") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "resetSubgroupDirection _args;";
    };
    ([resistance] call native);
    PUBLIC FUNCTION("", "resistance") {
        "resistance";
    };
    ([resize] call native);
    PUBLIC FUNCTION("array", "resize") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj resize _args;";
    };
    ([resources] call native);
    PUBLIC FUNCTION("array", "resources") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "resources _args;";
    };
    ([restartEditorCamera] call native);
    PUBLIC FUNCTION("array", "restartEditorCamera") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "restartEditorCamera _args;";
    };
    ([reveal] call native);
    PUBLIC FUNCTION("array", "reveal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj reveal _args;";
    };
    ([revealMine] call native);
    PUBLIC FUNCTION("array", "revealMine") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj revealMine _args;";
    };
    ([reversedMouseY] call native);
    PUBLIC FUNCTION("", "reversedMouseY") {
        "reversedMouseY";
    };
    ([roadsConnectedTo] call native);
    PUBLIC FUNCTION("array", "roadsConnectedTo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "roadsConnectedTo _args;";
    };
    ([round] call native);
    PUBLIC FUNCTION("array", "round") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "round _args;";
    };
    ([runInitScript] call native);
    PUBLIC FUNCTION("", "runInitScript") {
        "runInitScript";
    };
    ([SafeZoneH] call native);
    PUBLIC FUNCTION("", "SafeZoneH") {
        "SafeZoneH";
    };
    ([safeZoneW] call native);
    PUBLIC FUNCTION("", "safeZoneW") {
        "safeZoneW";
    };
    ([safeZoneWAbs] call native);
    PUBLIC FUNCTION("", "safeZoneWAbs") {
        "safeZoneWAbs";
    };
    ([SafeZoneX] call native);
    PUBLIC FUNCTION("", "SafeZoneX") {
        "SafeZoneX";
    };
    ([safeZoneXAbs] call native);
    PUBLIC FUNCTION("", "safeZoneXAbs") {
        "safeZoneXAbs";
    };
    ([SafeZoneY] call native);
    PUBLIC FUNCTION("", "SafeZoneY") {
        "SafeZoneY";
    };
    ([saveGame] call native);
    PUBLIC FUNCTION("", "saveGame") {
        "saveGame";
    };
    ([saveIdentity] call native);
    PUBLIC FUNCTION("array", "saveIdentity") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj saveIdentity _args;";
    };
    ([saveJoysticks] call native);
    PUBLIC FUNCTION("", "saveJoysticks") {
        "saveJoysticks";
    };
    ([saveOverlay] call native);
    PUBLIC FUNCTION("array", "saveOverlay") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "saveOverlay _args;";
    };
    ([saveProfileNamespace] call native);
    PUBLIC FUNCTION("", "saveProfileNamespace") {
        "saveProfileNamespace";
    };
    ([saveStatus] call native);
    PUBLIC FUNCTION("array", "saveStatus") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj saveStatus _args;";
    };
    ([saveVar] call native);
    PUBLIC FUNCTION("array", "saveVar") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "saveVar _args;";
    };
    ([savingEnabled] call native);
    PUBLIC FUNCTION("", "savingEnabled") {
        "savingEnabled";
    };
    ([say] call native);
    PUBLIC FUNCTION("array", "say") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj say _args;";
    };
    ([say3D] call native);
    PUBLIC FUNCTION("array", "say3D") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj say3D _args;";
    };
    ([scopeName] call native);
    PUBLIC FUNCTION("array", "scopeName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "scopeName _args;";
    };
    ([score] call native);
    PUBLIC FUNCTION("array", "score") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "score _args;";
    };
    ([scoreSide] call native);
    PUBLIC FUNCTION("array", "scoreSide") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "scoreSide _args;";
    };
    ([screenToWorld] call native);
    PUBLIC FUNCTION("array", "screenToWorld") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "screenToWorld _args;";
    };
    ([scriptDone] call native);
    PUBLIC FUNCTION("array", "scriptDone") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "scriptDone _args;";
    };
    ([scriptName] call native);
    PUBLIC FUNCTION("array", "scriptName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "scriptName _args;";
    };
    ([scudState] call native);
    PUBLIC FUNCTION("array", "scudState") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "scudState _args;";
    };
    ([secondaryWeapon] call native);
    PUBLIC FUNCTION("array", "secondaryWeapon") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "secondaryWeapon _args;";
    };
    ([secondaryWeaponItems] call native);
    PUBLIC FUNCTION("array", "secondaryWeaponItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "secondaryWeaponItems _args;";
    };
    ([select] call native);
    PUBLIC FUNCTION("array", "select") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj select _args;";
    };
    ([selectBestPlaces] call native);
    PUBLIC FUNCTION("array", "selectBestPlaces") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "selectBestPlaces _args;";
    };
    ([selectDiarySubject] call native);
    PUBLIC FUNCTION("array", "selectDiarySubject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj selectDiarySubject _args;";
    };
    ([selectEditorObject] call native);
    PUBLIC FUNCTION("array", "selectEditorObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj selectEditorObject _args;";
    };
    ([selectLeader] call native);
    PUBLIC FUNCTION("array", "selectLeader") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj selectLeader _args;";
    };
    ([selectNoPlayer] call native);
    PUBLIC FUNCTION("", "selectNoPlayer") {
        "selectNoPlayer";
    };
    ([selectPlayer] call native);
    PUBLIC FUNCTION("array", "selectPlayer") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "selectPlayer _args;";
    };
    ([selectWeapon] call native);
    PUBLIC FUNCTION("array", "selectWeapon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj selectWeapon _args;";
    };
    ([selectWeaponTurret] call native);
    PUBLIC FUNCTION("array", "selectWeaponTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj selectWeaponTurret _args;";
    };
    ([selectedEditorObjects] call native);
    PUBLIC FUNCTION("array", "selectedEditorObjects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "selectedEditorObjects _args;";
    };
    ([selectionPosition] call native);
    PUBLIC FUNCTION("array", "selectionPosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj selectionPosition _args;";
    };
    ([sendAUMessage] call native);
    PUBLIC FUNCTION("array", "sendAUMessage") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sendAUMessage _args;";
    };
    ([sendSimpleCommand] call native);
    PUBLIC FUNCTION("array", "sendSimpleCommand") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sendSimpleCommand _args;";
    };
    ([sendTask] call native);
    PUBLIC FUNCTION("array", "sendTask") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sendTask _args;";
    };
    ([sendTaskResult] call native);
    PUBLIC FUNCTION("array", "sendTaskResult") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sendTaskResult _args;";
    };
    ([sendUDPMessage] call native);
    PUBLIC FUNCTION("array", "sendUDPMessage") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sendUDPMessage _args;";
    };
    ([serverCommand] call native);
    PUBLIC FUNCTION("array", "serverCommand") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "serverCommand _args;";
    };
    ([serverCommandAvailable] call native);
    PUBLIC FUNCTION("array", "serverCommandAvailable") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "serverCommandAvailable _args;";
    };
    ([serverTime] call native);
    PUBLIC FUNCTION("", "serverTime") {
        "serverTime";
    };
    ([set] call native);
    PUBLIC FUNCTION("array", "set") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj set _args;";
    };
    ([setAccTime] call native);
    PUBLIC FUNCTION("array", "setAccTime") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setAccTime _args;";
    };
    ([setAirportSide] call native);
    PUBLIC FUNCTION("array", "setAirportSide") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setAirportSide _args;";
    };
    ([setAmmo] call native);
    PUBLIC FUNCTION("array", "setAmmo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setAmmo _args;";
    };
    ([setAmmoCargo] call native);
    PUBLIC FUNCTION("array", "setAmmoCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setAmmoCargo _args;";
    };
    ([setAperture] call native);
    PUBLIC FUNCTION("array", "setAperture") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setAperture _args;";
    };
    ([setApertureNew] call native);
    PUBLIC FUNCTION("array", "setApertureNew") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setApertureNew _args;";
    };
    ([setArmoryPoints] call native);
    PUBLIC FUNCTION("array", "setArmoryPoints") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setArmoryPoints _args;";
    };
    ([setAttributes] call native);
    PUBLIC FUNCTION("array", "setAttributes") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setAttributes _args;";
    };
    ([setBehaviour] call native);
    PUBLIC FUNCTION("array", "setBehaviour") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setBehaviour _args;";
    };
    ([setBleedingRemaining] call native);
    PUBLIC FUNCTION("array", "setBleedingRemaining") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setBleedingRemaining _args;";
    };
    ([setCamShakeDefParams] call native);
    PUBLIC FUNCTION("array", "setCamShakeDefParams") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setCamShakeDefParams _args;";
    };
    ([setCamShakeParams] call native);
    PUBLIC FUNCTION("array", "setCamShakeParams") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setCamShakeParams _args;";
    };
    ([setCamUseTi] call native);
    PUBLIC FUNCTION("array", "setCamUseTi") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCamUseTi _args;";
    };
    ([setCameraInterest] call native);
    PUBLIC FUNCTION("array", "setCameraInterest") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCameraInterest _args;";
    };
    ([setCaptive] call native);
    PUBLIC FUNCTION("array", "setCaptive") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCaptive _args;";
    };
    ([setCenterOfMass] call native);
    PUBLIC FUNCTION("array", "setCenterOfMass") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCenterOfMass _args;";
    };
    ([setCombatMode] call native);
    PUBLIC FUNCTION("array", "setCombatMode") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCombatMode _args;";
    };
    ([setCompassOscillation] call native);
    PUBLIC FUNCTION("array", "setCompassOscillation") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setCompassOscillation _args;";
    };
    ([setCuratorCameraAreaCeiling] call native);
    PUBLIC FUNCTION("array", "setCuratorCameraAreaCeiling") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCuratorCameraAreaCeiling _args;";
    };
    ([setCuratorCoef] call native);
    PUBLIC FUNCTION("array", "setCuratorCoef") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCuratorCoef _args;";
    };
    ([setCuratorEditingAreaType] call native);
    PUBLIC FUNCTION("array", "setCuratorEditingAreaType") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCuratorEditingAreaType _args;";
    };
    ([setCuratorWaypointCost] call native);
    PUBLIC FUNCTION("array", "setCuratorWaypointCost") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCuratorWaypointCost _args;";
    };
    ([setCurrentTask] call native);
    PUBLIC FUNCTION("array", "setCurrentTask") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCurrentTask _args;";
    };
    ([setCurrentWaypoint] call native);
    PUBLIC FUNCTION("array", "setCurrentWaypoint") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setCurrentWaypoint _args;";
    };
    ([setDamage] call native);
    PUBLIC FUNCTION("array", "setDamage") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDamage _args;";
    };
    ([setDammage] call native);
    PUBLIC FUNCTION("array", "setDammage") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDammage _args;";
    };
    ([setDate] call native);
    PUBLIC FUNCTION("array", "setDate") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setDate _args;";
    };
    ([setDebriefingText] call native);
    PUBLIC FUNCTION("array", "setDebriefingText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDebriefingText _args;";
    };
    ([setDefaultCamera] call native);
    PUBLIC FUNCTION("array", "setDefaultCamera") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setDefaultCamera _args;";
    };
    ([setDestination] call native);
    PUBLIC FUNCTION("array", "setDestination") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDestination _args;";
    };
    ([setDir] call native);
    PUBLIC FUNCTION("array", "setDir") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDir _args;";
    };
    ([setDirection] call native);
    PUBLIC FUNCTION("array", "setDirection") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDirection _args;";
    };
    ([setDrawIcon] call native);
    PUBLIC FUNCTION("array", "setDrawIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDrawIcon _args;";
    };
    ([setDropInterval] call native);
    PUBLIC FUNCTION("array", "setDropInterval") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setDropInterval _args;";
    };
    ([setEditorMode] call native);
    PUBLIC FUNCTION("array", "setEditorMode") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setEditorMode _args;";
    };
    ([setEditorObjectScope] call native);
    PUBLIC FUNCTION("array", "setEditorObjectScope") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setEditorObjectScope _args;";
    };
    ([setEffectCondition] call native);
    PUBLIC FUNCTION("array", "setEffectCondition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setEffectCondition _args;";
    };
    ([setFSMVariable] call native);
    PUBLIC FUNCTION("array", "setFSMVariable") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFSMVariable _args;";
    };
    ([setFace] call native);
    PUBLIC FUNCTION("array", "setFace") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFace _args;";
    };
    ([setFaceAnimation] call native);
    PUBLIC FUNCTION("array", "setFaceAnimation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFaceAnimation _args;";
    };
    ([setFatigue] call native);
    PUBLIC FUNCTION("array", "setFatigue") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFatigue _args;";
    };
    ([setFlagOwner] call native);
    PUBLIC FUNCTION("array", "setFlagOwner") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFlagOwner _args;";
    };
    ([setFlagSide] call native);
    PUBLIC FUNCTION("array", "setFlagSide") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFlagSide _args;";
    };
    ([setFlagTexture] call native);
    PUBLIC FUNCTION("array", "setFlagTexture") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFlagTexture _args;";
    };
    ([setFog] call native);
    PUBLIC FUNCTION("array", "setFog") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFog _args;";
    };
    ([setFog] call native);
    PUBLIC FUNCTION("array", "setFog") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFog _args;";
    };
    ([setFormDir] call native);
    PUBLIC FUNCTION("array", "setFormDir") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFormDir _args;";
    };
    ([setFormation] call native);
    PUBLIC FUNCTION("array", "setFormation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFormation _args;";
    };
    ([setFormationTask] call native);
    PUBLIC FUNCTION("array", "setFormationTask") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFormationTask _args;";
    };
    ([setFriend] call native);
    PUBLIC FUNCTION("array", "setFriend") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFriend _args;";
    };
    ([setFromEditor] call native);
    PUBLIC FUNCTION("array", "setFromEditor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFromEditor _args;";
    };
    ([setFuel] call native);
    PUBLIC FUNCTION("array", "setFuel") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFuel _args;";
    };
    ([setFuelCargo] call native);
    PUBLIC FUNCTION("array", "setFuelCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setFuelCargo _args;";
    };
    ([setGroupIcon] call native);
    PUBLIC FUNCTION("array", "setGroupIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setGroupIcon _args;";
    };
    ([setGroupIconParams] call native);
    PUBLIC FUNCTION("array", "setGroupIconParams") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setGroupIconParams _args;";
    };
    ([setGroupIconsSelectable] call native);
    PUBLIC FUNCTION("array", "setGroupIconsSelectable") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setGroupIconsSelectable _args;";
    };
    ([setGroupIconsVisible] call native);
    PUBLIC FUNCTION("array", "setGroupIconsVisible") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setGroupIconsVisible _args;";
    };
    ([setGroupId] call native);
    PUBLIC FUNCTION("array", "setGroupId") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setGroupId _args;";
    };
    ([setGusts] call native);
    PUBLIC FUNCTION("array", "setGusts") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setGusts _args;";
    };
    ([setHUDMovementLevels] call native);
    PUBLIC FUNCTION("array", "setHUDMovementLevels") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setHUDMovementLevels _args;";
    };
    ([setHideBehind] call native);
    PUBLIC FUNCTION("array", "setHideBehind") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setHideBehind _args;";
    };
    ([setHit] call native);
    PUBLIC FUNCTION("array", "setHit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setHit _args;";
    };
    ([setHitPointDamage] call native);
    PUBLIC FUNCTION("array", "setHitPointDamage") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setHitPointDamage _args;";
    };
    ([setHorizonParallaxCoef] call native);
    PUBLIC FUNCTION("array", "setHorizonParallaxCoef") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setHorizonParallaxCoef _args;";
    };
    ([setIdentity] call native);
    PUBLIC FUNCTION("array", "setIdentity") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setIdentity _args;";
    };
    ([setImportance] call native);
    PUBLIC FUNCTION("array", "setImportance") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setImportance _args;";
    };
    ([setLeader] call native);
    PUBLIC FUNCTION("array", "setLeader") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLeader _args;";
    };
    ([setLightAmbient] call native);
    PUBLIC FUNCTION("array", "setLightAmbient") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightAmbient _args;";
    };
    ([setLightAttenuation] call native);
    PUBLIC FUNCTION("array", "setLightAttenuation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightAttenuation _args;";
    };
    ([setLightBrightness] call native);
    PUBLIC FUNCTION("array", "setLightBrightness") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightBrightness _args;";
    };
    ([setLightColor] call native);
    PUBLIC FUNCTION("array", "setLightColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightColor _args;";
    };
    ([setLightDayLight] call native);
    PUBLIC FUNCTION("array", "setLightDayLight") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightDayLight _args;";
    };
    ([setLightFlareMaxDistance] call native);
    PUBLIC FUNCTION("array", "setLightFlareMaxDistance") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightFlareMaxDistance _args;";
    };
    ([setLightFlareSize] call native);
    PUBLIC FUNCTION("array", "setLightFlareSize") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightFlareSize _args;";
    };
    ([setLightIntensity] call native);
    PUBLIC FUNCTION("array", "setLightIntensity") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightIntensity _args;";
    };
    ([setLightUseFlare] call native);
    PUBLIC FUNCTION("array", "setLightUseFlare") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightUseFlare _args;";
    };
    ([setLightnings] call native);
    PUBLIC FUNCTION("array", "setLightnings") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setLightnings _args;";
    };
    ([setLocalWindParams] call native);
    PUBLIC FUNCTION("array", "setLocalWindParams") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setLocalWindParams _args;";
    };
    ([setMarkerAlpha] call native);
    PUBLIC FUNCTION("array", "setMarkerAlpha") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerAlpha _args;";
    };
    ([setMarkerAlphaLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerAlphaLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerAlphaLocal _args;";
    };
    ([setMarkerBrush] call native);
    PUBLIC FUNCTION("array", "setMarkerBrush") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerBrush _args;";
    };
    ([setMarkerBrushLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerBrushLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerBrushLocal _args;";
    };
    ([setMarkerColor] call native);
    PUBLIC FUNCTION("array", "setMarkerColor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerColor _args;";
    };
    ([setMarkerColorLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerColorLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerColorLocal _args;";
    };
    ([setMarkerDir] call native);
    PUBLIC FUNCTION("array", "setMarkerDir") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerDir _args;";
    };
    ([setMarkerDirLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerDirLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerDirLocal _args;";
    };
    ([setMarkerPos] call native);
    PUBLIC FUNCTION("array", "setMarkerPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerPos _args;";
    };
    ([setMarkerPosLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerPosLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerPosLocal _args;";
    };
    ([setMarkerShape] call native);
    PUBLIC FUNCTION("array", "setMarkerShape") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerShape _args;";
    };
    ([setMarkerShapeLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerShapeLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerShapeLocal _args;";
    };
    ([setMarkerSize] call native);
    PUBLIC FUNCTION("array", "setMarkerSize") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerSize _args;";
    };
    ([setMarkerSizeLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerSizeLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerSizeLocal _args;";
    };
    ([setMarkerText] call native);
    PUBLIC FUNCTION("array", "setMarkerText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerText _args;";
    };
    ([setMarkerTextLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerTextLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerTextLocal _args;";
    };
    ([setMarkerType] call native);
    PUBLIC FUNCTION("array", "setMarkerType") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerType _args;";
    };
    ([setMarkerTypeLocal] call native);
    PUBLIC FUNCTION("array", "setMarkerTypeLocal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMarkerTypeLocal _args;";
    };
    ([setMass] call native);
    PUBLIC FUNCTION("array", "setMass") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMass _args;";
    };
    ([setMimic] call native);
    PUBLIC FUNCTION("array", "setMimic") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMimic _args;";
    };
    ([setMousePosition] call native);
    PUBLIC FUNCTION("array", "setMousePosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setMousePosition _args;";
    };
    ([setMusicEffect] call native);
    PUBLIC FUNCTION("array", "setMusicEffect") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setMusicEffect _args;";
    };
    ([setMusicEventHandler] call native);
    PUBLIC FUNCTION("array", "setMusicEventHandler") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setMusicEventHandler _args;";
    };
    ([setName] call native);
    PUBLIC FUNCTION("array", "setName") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setName _args;";
    };
    ([setNameSound] call native);
    PUBLIC FUNCTION("array", "setNameSound") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setNameSound _args;";
    };
    ([setObjectArguments] call native);
    PUBLIC FUNCTION("array", "setObjectArguments") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setObjectArguments _args;";
    };
    ([setObjectMaterial] call native);
    PUBLIC FUNCTION("array", "setObjectMaterial") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setObjectMaterial _args;";
    };
    ([setObjectProxy] call native);
    PUBLIC FUNCTION("array", "setObjectProxy") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setObjectProxy _args;";
    };
    ([setObjectTexture] call native);
    PUBLIC FUNCTION("array", "setObjectTexture") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setObjectTexture _args;";
    };
    ([setObjectTextureGlobal] call native);
    PUBLIC FUNCTION("array", "setObjectTextureGlobal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setObjectTextureGlobal _args;";
    };
    ([setObjectViewDistance] call native);
    PUBLIC FUNCTION("array", "setObjectViewDistance") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setObjectViewDistance _args;";
    };
    ([setOvercast] call native);
    PUBLIC FUNCTION("array", "setOvercast") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setOvercast _args;";
    };
    ([setOwner] call native);
    PUBLIC FUNCTION("array", "setOwner") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setOwner _args;";
    };
    ([setOxygenRemaining] call native);
    PUBLIC FUNCTION("array", "setOxygenRemaining") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setOxygenRemaining _args;";
    };
    ([setParticleCircle] call native);
    PUBLIC FUNCTION("array", "setParticleCircle") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setParticleCircle _args;";
    };
    ([setParticleClass] call native);
    PUBLIC FUNCTION("array", "setParticleClass") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setParticleClass _args;";
    };
    ([setParticleFire] call native);
    PUBLIC FUNCTION("array", "setParticleFire") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setParticleFire _args;";
    };
    ([setParticleParams] call native);
    PUBLIC FUNCTION("array", "setParticleParams") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setParticleParams _args;";
    };
    ([setParticleRandom] call native);
    PUBLIC FUNCTION("array", "setParticleRandom") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setParticleRandom _args;";
    };
    ([setPiPEffect] call native);
    PUBLIC FUNCTION("array", "setPiPEffect") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPiPEffect _args;";
    };
    ([setPitch] call native);
    PUBLIC FUNCTION("array", "setPitch") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPitch _args;";
    };
    ([setPlayable] call native);
    PUBLIC FUNCTION("array", "setPlayable") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setPlayable _args;";
    };
    ([setPlayerRespawnTime] call native);
    PUBLIC FUNCTION("array", "setPlayerRespawnTime") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setPlayerRespawnTime _args;";
    };
    ([setPos] call native);
    PUBLIC FUNCTION("array", "setPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPos _args;";
    };
    ([setPosASL] call native);
    PUBLIC FUNCTION("array", "setPosASL") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPosASL _args;";
    };
    ([setPosASL2] call native);
    PUBLIC FUNCTION("array", "setPosASL2") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPosASL2 _args;";
    };
    ([setPosASLW] call native);
    PUBLIC FUNCTION("array", "setPosASLW") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPosASLW _args;";
    };
    ([setPosATL] call native);
    PUBLIC FUNCTION("array", "setPosATL") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPosATL _args;";
    };
    ([setPosition] call native);
    PUBLIC FUNCTION("array", "setPosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setPosition _args;";
    };
    ([setRadioMsg] call native);
    PUBLIC FUNCTION("array", "setRadioMsg") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setRadioMsg _args;";
    };
    ([setRain] call native);
    PUBLIC FUNCTION("array", "setRain") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setRain _args;";
    };
    ([setRainbow] call native);
    PUBLIC FUNCTION("array", "setRainbow") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setRainbow _args;";
    };
    ([setRandomLip] call native);
    PUBLIC FUNCTION("array", "setRandomLip") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setRandomLip _args;";
    };
    ([setRank] call native);
    PUBLIC FUNCTION("array", "setRank") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setRank _args;";
    };
    ([setRectangular] call native);
    PUBLIC FUNCTION("array", "setRectangular") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setRectangular _args;";
    };
    ([setRepairCargo] call native);
    PUBLIC FUNCTION("array", "setRepairCargo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setRepairCargo _args;";
    };
    ([setShadowDistance] call native);
    PUBLIC FUNCTION("array", "setShadowDistance") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setShadowDistance _args;";
    };
    ([setSide] call native);
    PUBLIC FUNCTION("array", "setSide") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSide _args;";
    };
    ([setSimpleTaskDescription] call native);
    PUBLIC FUNCTION("array", "setSimpleTaskDescription") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSimpleTaskDescription _args;";
    };
    ([setSimpleTaskDestination] call native);
    PUBLIC FUNCTION("array", "setSimpleTaskDestination") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSimpleTaskDestination _args;";
    };
    ([setSimpleTaskTarget] call native);
    PUBLIC FUNCTION("array", "setSimpleTaskTarget") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSimpleTaskTarget _args;";
    };
    ([setSimulWeatherLayers] call native);
    PUBLIC FUNCTION("array", "setSimulWeatherLayers") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setSimulWeatherLayers _args;";
    };
    ([setSize] call native);
    PUBLIC FUNCTION("array", "setSize") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSize _args;";
    };
    ([setSkill] call native);
    PUBLIC FUNCTION("array", "setSkill") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSkill _args;";
    };
    ([setSkill] call native);
    PUBLIC FUNCTION("array", "setSkill") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSkill _args;";
    };
    ([setSoundEffect] call native);
    PUBLIC FUNCTION("array", "setSoundEffect") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSoundEffect _args;";
    };
    ([setSpeaker] call native);
    PUBLIC FUNCTION("array", "setSpeaker") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSpeaker _args;";
    };
    ([setSpeech] call native);
    PUBLIC FUNCTION("array", "setSpeech") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSpeech _args;";
    };
    ([setSpeedMode] call native);
    PUBLIC FUNCTION("array", "setSpeedMode") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setSpeedMode _args;";
    };
    ([setSystemOfUnits] call native);
    PUBLIC FUNCTION("array", "setSystemOfUnits") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setSystemOfUnits _args;";
    };
    ([setTargetAge] call native);
    PUBLIC FUNCTION("array", "setTargetAge") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTargetAge _args;";
    };
    ([setTaskResult] call native);
    PUBLIC FUNCTION("array", "setTaskResult") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTaskResult _args;";
    };
    ([setTaskState] call native);
    PUBLIC FUNCTION("array", "setTaskState") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTaskState _args;";
    };
    ([setTerrainGrid] call native);
    PUBLIC FUNCTION("array", "setTerrainGrid") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setTerrainGrid _args;";
    };
    ([setText] call native);
    PUBLIC FUNCTION("array", "setText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setText _args;";
    };
    ([setTitleEffect] call native);
    PUBLIC FUNCTION("array", "setTitleEffect") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTitleEffect _args;";
    };
    ([setTriggerActivation] call native);
    PUBLIC FUNCTION("array", "setTriggerActivation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTriggerActivation _args;";
    };
    ([setTriggerArea] call native);
    PUBLIC FUNCTION("array", "setTriggerArea") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTriggerArea _args;";
    };
    ([setTriggerStatements] call native);
    PUBLIC FUNCTION("array", "setTriggerStatements") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTriggerStatements _args;";
    };
    ([setTriggerText] call native);
    PUBLIC FUNCTION("array", "setTriggerText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTriggerText _args;";
    };
    ([setTriggerTimeout] call native);
    PUBLIC FUNCTION("array", "setTriggerTimeout") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTriggerTimeout _args;";
    };
    ([setTriggerType] call native);
    PUBLIC FUNCTION("array", "setTriggerType") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setTriggerType _args;";
    };
    ([setType] call native);
    PUBLIC FUNCTION("array", "setType") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setType _args;";
    };
    ([setUnconscious] call native);
    PUBLIC FUNCTION("array", "setUnconscious") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setUnconscious _args;";
    };
    ([setUnitAbility] call native);
    PUBLIC FUNCTION("array", "setUnitAbility") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setUnitAbility _args;";
    };
    ([setUnitPos] call native);
    PUBLIC FUNCTION("array", "setUnitPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setUnitPos _args;";
    };
    ([setUnitPosWeak] call native);
    PUBLIC FUNCTION("array", "setUnitPosWeak") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setUnitPosWeak _args;";
    };
    ([setUnitRank] call native);
    PUBLIC FUNCTION("array", "setUnitRank") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setUnitRank _args;";
    };
    ([setUnitRecoilCoefficient] call native);
    PUBLIC FUNCTION("array", "setUnitRecoilCoefficient") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setUnitRecoilCoefficient _args;";
    };
    ([setUserActionText] call native);
    PUBLIC FUNCTION("array", "setUserActionText") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setUserActionText _args;";
    };
    ([setVariable] call native);
    PUBLIC FUNCTION("array", "setVariable") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVariable _args;";
    };
    ([setVectorDir] call native);
    PUBLIC FUNCTION("array", "setVectorDir") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVectorDir _args;";
    };
    ([setVectorDirAndUp] call native);
    PUBLIC FUNCTION("array", "setVectorDirAndUp") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVectorDirAndUp _args;";
    };
    ([setVectorUp] call native);
    PUBLIC FUNCTION("array", "setVectorUp") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVectorUp _args;";
    };
    ([setVehicleAmmo] call native);
    PUBLIC FUNCTION("array", "setVehicleAmmo") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVehicleAmmo _args;";
    };
    ([setVehicleAmmoDef] call native);
    PUBLIC FUNCTION("array", "setVehicleAmmoDef") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVehicleAmmoDef _args;";
    };
    ([setVehicleArmor] call native);
    PUBLIC FUNCTION("array", "setVehicleArmor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVehicleArmor _args;";
    };
    ([setVehicleId] call native);
    PUBLIC FUNCTION("array", "setVehicleId") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVehicleId _args;";
    };
    ([setVehicleLock] call native);
    PUBLIC FUNCTION("array", "setVehicleLock") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVehicleLock _args;";
    };
    ([setVehiclePosition] call native);
    PUBLIC FUNCTION("array", "setVehiclePosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVehiclePosition _args;";
    };
    ([setVehicleTiPars] call native);
    PUBLIC FUNCTION("array", "setVehicleTiPars") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVehicleTiPars _args;";
    };
    ([setVelocity] call native);
    PUBLIC FUNCTION("array", "setVelocity") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVelocity _args;";
    };
    ([setVelocityTransformation] call native);
    PUBLIC FUNCTION("array", "setVelocityTransformation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVelocityTransformation _args;";
    };
    ([setViewDistance] call native);
    PUBLIC FUNCTION("array", "setViewDistance") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setViewDistance _args;";
    };
    ([setVisibleIfTreeCollapsed] call native);
    PUBLIC FUNCTION("array", "setVisibleIfTreeCollapsed") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setVisibleIfTreeCollapsed _args;";
    };
    ([setWPPos] call native);
    PUBLIC FUNCTION("array", "setWPPos") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWPPos _args;";
    };
    ([setWaves] call native);
    PUBLIC FUNCTION("array", "setWaves") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaves _args;";
    };
    ([setWaypointBehaviour] call native);
    PUBLIC FUNCTION("array", "setWaypointBehaviour") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointBehaviour _args;";
    };
    ([setWaypointCombatMode] call native);
    PUBLIC FUNCTION("array", "setWaypointCombatMode") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointCombatMode _args;";
    };
    ([setWaypointCompletionRadius] call native);
    PUBLIC FUNCTION("array", "setWaypointCompletionRadius") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointCompletionRadius _args;";
    };
    ([setWaypointDescription] call native);
    PUBLIC FUNCTION("array", "setWaypointDescription") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointDescription _args;";
    };
    ([setWaypointFormation] call native);
    PUBLIC FUNCTION("array", "setWaypointFormation") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointFormation _args;";
    };
    ([setWaypointHousePosition] call native);
    PUBLIC FUNCTION("array", "setWaypointHousePosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointHousePosition _args;";
    };
    ([setWaypointLoiterRadius] call native);
    PUBLIC FUNCTION("array", "setWaypointLoiterRadius") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointLoiterRadius _args;";
    };
    ([setWaypointLoiterType] call native);
    PUBLIC FUNCTION("array", "setWaypointLoiterType") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointLoiterType _args;";
    };
    ([setWaypointName] call native);
    PUBLIC FUNCTION("array", "setWaypointName") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointName _args;";
    };
    ([setWaypointPosition] call native);
    PUBLIC FUNCTION("array", "setWaypointPosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointPosition _args;";
    };
    ([setWaypointScript] call native);
    PUBLIC FUNCTION("array", "setWaypointScript") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointScript _args;";
    };
    ([setWaypointSpeed] call native);
    PUBLIC FUNCTION("array", "setWaypointSpeed") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointSpeed _args;";
    };
    ([setWaypointStatements] call native);
    PUBLIC FUNCTION("array", "setWaypointStatements") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointStatements _args;";
    };
    ([setWaypointTimeout] call native);
    PUBLIC FUNCTION("array", "setWaypointTimeout") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointTimeout _args;";
    };
    ([setWaypointType] call native);
    PUBLIC FUNCTION("array", "setWaypointType") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointType _args;";
    };
    ([setWaypointVisible] call native);
    PUBLIC FUNCTION("array", "setWaypointVisible") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWaypointVisible _args;";
    };
    ([setWeaponReloadingTime] call native);
    PUBLIC FUNCTION("array", "setWeaponReloadingTime") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWeaponReloadingTime _args;";
    };
    ([setWind] call native);
    PUBLIC FUNCTION("array", "setWind") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "setWind _args;";
    };
    ([setWindDir] call native);
    PUBLIC FUNCTION("array", "setWindDir") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWindDir _args;";
    };
    ([setWindForce] call native);
    PUBLIC FUNCTION("array", "setWindForce") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWindForce _args;";
    };
    ([setWindStr] call native);
    PUBLIC FUNCTION("array", "setWindStr") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj setWindStr _args;";
    };
    ([show3DIcons] call native);
    PUBLIC FUNCTION("array", "show3DIcons") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj show3DIcons _args;";
    };
    ([showChat] call native);
    PUBLIC FUNCTION("array", "showChat") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showChat _args;";
    };
    ([showCinemaBorder] call native);
    PUBLIC FUNCTION("array", "showCinemaBorder") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showCinemaBorder _args;";
    };
    ([showCommandingMenu] call native);
    PUBLIC FUNCTION("array", "showCommandingMenu") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showCommandingMenu _args;";
    };
    ([showCompass] call native);
    PUBLIC FUNCTION("array", "showCompass") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showCompass _args;";
    };
    ([showCuratorCompass] call native);
    PUBLIC FUNCTION("array", "showCuratorCompass") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showCuratorCompass _args;";
    };
    ([showGPS] call native);
    PUBLIC FUNCTION("array", "showGPS") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showGPS _args;";
    };
    ([showHUD] call native);
    PUBLIC FUNCTION("array", "showHUD") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showHUD _args;";
    };
    ([showLegend] call native);
    PUBLIC FUNCTION("array", "showLegend") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj showLegend _args;";
    };
    ([showMap] call native);
    PUBLIC FUNCTION("array", "showMap") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showMap _args;";
    };
    ([showNewEditorObject] call native);
    PUBLIC FUNCTION("array", "showNewEditorObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj showNewEditorObject _args;";
    };
    ([showPad] call native);
    PUBLIC FUNCTION("array", "showPad") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showPad _args;";
    };
    ([showRadio] call native);
    PUBLIC FUNCTION("array", "showRadio") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showRadio _args;";
    };
    ([showSubtitles] call native);
    PUBLIC FUNCTION("array", "showSubtitles") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showSubtitles _args;";
    };
    ([showUavFeed] call native);
    PUBLIC FUNCTION("array", "showUavFeed") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showUavFeed _args;";
    };
    ([showWarrant] call native);
    PUBLIC FUNCTION("array", "showWarrant") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showWarrant _args;";
    };
    ([showWatch] call native);
    PUBLIC FUNCTION("array", "showWatch") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "showWatch _args;";
    };
    ([showWaypoint] call native);
    PUBLIC FUNCTION("array", "showWaypoint") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj showWaypoint _args;";
    };
    ([shownArtilleryComputer] call native);
    PUBLIC FUNCTION("", "shownArtilleryComputer") {
        "shownArtilleryComputer";
    };
    ([shownCompass] call native);
    PUBLIC FUNCTION("", "shownCompass") {
        "shownCompass";
    };
    ([shownCuratorCompass] call native);
    PUBLIC FUNCTION("", "shownCuratorCompass") {
        "shownCuratorCompass";
    };
    ([shownGPS] call native);
    PUBLIC FUNCTION("", "shownGPS") {
        "shownGPS";
    };
    ([shownMap] call native);
    PUBLIC FUNCTION("", "shownMap") {
        "shownMap";
    };
    ([shownPad] call native);
    PUBLIC FUNCTION("", "shownPad") {
        "shownPad";
    };
    ([shownRadio] call native);
    PUBLIC FUNCTION("", "shownRadio") {
        "shownRadio";
    };
    ([shownUavFeed] call native);
    PUBLIC FUNCTION("", "shownUavFeed") {
        "shownUavFeed";
    };
    ([shownWarrant] call native);
    PUBLIC FUNCTION("", "shownWarrant") {
        "shownWarrant";
    };
    ([shownWatch] call native);
    PUBLIC FUNCTION("", "shownWatch") {
        "shownWatch";
    };
    ([side] call native);
    PUBLIC FUNCTION("array", "side") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "side _args;";
    };
    ([sideChat] call native);
    PUBLIC FUNCTION("array", "sideChat") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sideChat _args;";
    };
    ([sideEnemy] call native);
    PUBLIC FUNCTION("", "sideEnemy") {
        "sideEnemy";
    };
    ([sideFriendly] call native);
    PUBLIC FUNCTION("", "sideFriendly") {
        "sideFriendly";
    };
    ([sideLogic] call native);
    PUBLIC FUNCTION("", "sideLogic") {
        "sideLogic";
    };
    ([sideRadio] call native);
    PUBLIC FUNCTION("array", "sideRadio") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sideRadio _args;";
    };
    ([sideUnknown] call native);
    PUBLIC FUNCTION("", "sideUnknown") {
        "sideUnknown";
    };
    ([simpleTasks] call native);
    PUBLIC FUNCTION("array", "simpleTasks") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "simpleTasks _args;";
    };
    ([simulCloudDensity] call native);
    PUBLIC FUNCTION("array", "simulCloudDensity") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "simulCloudDensity _args;";
    };
    ([simulCloudOcclusion] call native);
    PUBLIC FUNCTION("array", "simulCloudOcclusion") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "simulCloudOcclusion _args;";
    };
    ([simulInClouds] call native);
    PUBLIC FUNCTION("array", "simulInClouds") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "simulInClouds _args;";
    };
    ([simulWeatherSync] call native);
    PUBLIC FUNCTION("", "simulWeatherSync") {
        "simulWeatherSync";
    };
    ([simulationEnabled] call native);
    PUBLIC FUNCTION("array", "simulationEnabled") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "simulationEnabled _args;";
    };
    ([sin] call native);
    PUBLIC FUNCTION("array", "sin") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sin _args;";
    };
    ([size] call native);
    PUBLIC FUNCTION("array", "size") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "size _args;";
    };
    ([sizeOf] call native);
    PUBLIC FUNCTION("array", "sizeOf") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sizeOf _args;";
    };
    ([skill] call native);
    PUBLIC FUNCTION("array", "skill") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj skill _args;";
    };
    ([skillFinal] call native);
    PUBLIC FUNCTION("array", "skillFinal") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj skillFinal _args;";
    };
    ([skipTime] call native);
    PUBLIC FUNCTION("array", "skipTime") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "skipTime _args;";
    };
    ([sleep] call native);
    PUBLIC FUNCTION("array", "sleep") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sleep _args;";
    };
    ([sliderPosition] call native);
    PUBLIC FUNCTION("array", "sliderPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sliderPosition _args;";
    };
    ([sliderRange] call native);
    PUBLIC FUNCTION("array", "sliderRange") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sliderRange _args;";
    };
    ([sliderSetPosition] call native);
    PUBLIC FUNCTION("array", "sliderSetPosition") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sliderSetPosition _args;";
    };
    ([sliderSetRange] call native);
    PUBLIC FUNCTION("array", "sliderSetRange") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sliderSetRange _args;";
    };
    ([sliderSetSpeed] call native);
    PUBLIC FUNCTION("array", "sliderSetSpeed") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sliderSetSpeed _args;";
    };
    ([sliderSpeed] call native);
    PUBLIC FUNCTION("array", "sliderSpeed") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sliderSpeed _args;";
    };
    ([soldierMagazines] call native);
    PUBLIC FUNCTION("array", "soldierMagazines") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "soldierMagazines _args;";
    };
    ([someAmmo] call native);
    PUBLIC FUNCTION("array", "someAmmo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "someAmmo _args;";
    };
    ([soundVolume] call native);
    PUBLIC FUNCTION("", "soundVolume") {
        "soundVolume";
    };
    ([spawn] call native);
    PUBLIC FUNCTION("array", "spawn") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj spawn _args;";
    };
    ([speaker] call native);
    PUBLIC FUNCTION("array", "speaker") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "speaker _args;";
    };
    ([speed] call native);
    PUBLIC FUNCTION("array", "speed") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "speed _args;";
    };
    ([speedMode] call native);
    PUBLIC FUNCTION("array", "speedMode") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "speedMode _args;";
    };
    ([sqrt] call native);
    PUBLIC FUNCTION("array", "sqrt") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "sqrt _args;";
    };
    ([stance] call native);
    PUBLIC FUNCTION("array", "stance") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "stance _args;";
    };
    ([startLoadingScreen] call native);
    PUBLIC FUNCTION("array", "startLoadingScreen") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "startLoadingScreen _args;";
    };
    ([step] call native);
    PUBLIC FUNCTION("array", "step") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj step _args;";
    };
    ([stop] call native);
    PUBLIC FUNCTION("array", "stop") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj stop _args;";
    };
    ([stopped] call native);
    PUBLIC FUNCTION("array", "stopped") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "stopped _args;";
    };
    ([str] call native);
    PUBLIC FUNCTION("array", "str") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "str _args;";
    };
    ([sunOrMoon] call native);
    PUBLIC FUNCTION("", "sunOrMoon") {
        "sunOrMoon";
    };
    ([supportInfo] call native);
    PUBLIC FUNCTION("array", "supportInfo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "supportInfo _args;";
    };
    ([suppressFor] call native);
    PUBLIC FUNCTION("array", "suppressFor") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj suppressFor _args;";
    };
    ([surfaceIsWater] call native);
    PUBLIC FUNCTION("array", "surfaceIsWater") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "surfaceIsWater _args;";
    };
    ([surfaceNormal] call native);
    PUBLIC FUNCTION("array", "surfaceNormal") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "surfaceNormal _args;";
    };
    ([surfaceType] call native);
    PUBLIC FUNCTION("array", "surfaceType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "surfaceType _args;";
    };
    ([swimInDepth] call native);
    PUBLIC FUNCTION("array", "swimInDepth") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj swimInDepth _args;";
    };
    ([switch] call native);
    PUBLIC FUNCTION("array", "switch") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "switch _args;";
    };
    ([switchAction] call native);
    PUBLIC FUNCTION("array", "switchAction") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj switchAction _args;";
    };
    ([switchCamera] call native);
    PUBLIC FUNCTION("array", "switchCamera") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj switchCamera _args;";
    };
    ([switchGesture] call native);
    PUBLIC FUNCTION("array", "switchGesture") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj switchGesture _args;";
    };
    ([switchLight] call native);
    PUBLIC FUNCTION("array", "switchLight") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj switchLight _args;";
    };
    ([switchmove] call native);
    PUBLIC FUNCTION("array", "switchmove") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj switchmove _args;";
    };
    ([switchableUnits] call native);
    PUBLIC FUNCTION("", "switchableUnits") {
        "switchableUnits";
    };
    ([synchronizeObjectsAdd] call native);
    PUBLIC FUNCTION("array", "synchronizeObjectsAdd") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj synchronizeObjectsAdd _args;";
    };
    ([synchronizeObjectsRemove] call native);
    PUBLIC FUNCTION("array", "synchronizeObjectsRemove") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj synchronizeObjectsRemove _args;";
    };
    ([synchronizeTrigger] call native);
    PUBLIC FUNCTION("array", "synchronizeTrigger") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj synchronizeTrigger _args;";
    };
    ([synchronizeWaypoint] call native);
    PUBLIC FUNCTION("array", "synchronizeWaypoint") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj synchronizeWaypoint _args;";
    };
    ([synchronizeWaypoint] call native);
    PUBLIC FUNCTION("array", "synchronizeWaypoint") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj synchronizeWaypoint _args;";
    };
    ([synchronizedObjects] call native);
    PUBLIC FUNCTION("array", "synchronizedObjects") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "synchronizedObjects _args;";
    };
    ([synchronizedTriggers] call native);
    PUBLIC FUNCTION("array", "synchronizedTriggers") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "synchronizedTriggers _args;";
    };
    ([synchronizedWaypoints] call native);
    PUBLIC FUNCTION("array", "synchronizedWaypoints") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "synchronizedWaypoints _args;";
    };
    ([systemChat] call native);
    PUBLIC FUNCTION("array", "systemChat") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "systemChat _args;";
    };
    ([systemOfUnits] call native);
    PUBLIC FUNCTION("", "systemOfUnits") {
        "systemOfUnits";
    };
    ([tan] call native);
    PUBLIC FUNCTION("array", "tan") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tan _args;";
    };
    ([targetsAggregate] call native);
    PUBLIC FUNCTION("array", "targetsAggregate") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj targetsAggregate _args;";
    };
    ([targetsQuery] call native);
    PUBLIC FUNCTION("array", "targetsQuery") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj targetsQuery _args;";
    };
    ([taskChildren] call native);
    PUBLIC FUNCTION("array", "taskChildren") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "taskChildren _args;";
    };
    ([taskCompleted] call native);
    PUBLIC FUNCTION("array", "taskCompleted") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "taskCompleted _args;";
    };
    ([taskDescription] call native);
    PUBLIC FUNCTION("array", "taskDescription") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "taskDescription _args;";
    };
    ([taskDestination] call native);
    PUBLIC FUNCTION("array", "taskDestination") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "taskDestination _args;";
    };
    ([taskHint] call native);
    PUBLIC FUNCTION("array", "taskHint") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "taskHint _args;";
    };
    ([taskNull] call native);
    PUBLIC FUNCTION("", "taskNull") {
        "taskNull";
    };
    ([taskParent] call native);
    PUBLIC FUNCTION("array", "taskParent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "taskParent _args;";
    };
    ([sendTaskResult] call native);
    PUBLIC FUNCTION("array", "sendTaskResult") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj sendTaskResult _args;";
    };
    ([taskState] call native);
    PUBLIC FUNCTION("array", "taskState") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "taskState _args;";
    };
    ([teamMember] call native);
    PUBLIC FUNCTION("array", "teamMember") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "teamMember _args;";
    };
    ([teamMemberNull] call native);
    PUBLIC FUNCTION("", "teamMemberNull") {
        "teamMemberNull";
    };
    ([teamName] call native);
    PUBLIC FUNCTION("array", "teamName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "teamName _args;";
    };
    ([teamSwitch] call native);
    PUBLIC FUNCTION("", "teamSwitch") {
        "teamSwitch";
    };
    ([teamSwitchEnabled] call native);
    PUBLIC FUNCTION("", "teamSwitchEnabled") {
        "teamSwitchEnabled";
    };
    ([teamType] call native);
    PUBLIC FUNCTION("array", "teamType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "teamType _args;";
    };
    ([teams] call native);
    PUBLIC FUNCTION("", "teams") {
        "teams";
    };
    ([terminate] call native);
    PUBLIC FUNCTION("array", "terminate") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "terminate _args;";
    };
    ([terrainIntersect] call native);
    PUBLIC FUNCTION("array", "terrainIntersect") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "terrainIntersect _args;";
    };
    ([terrainIntersectASL] call native);
    PUBLIC FUNCTION("array", "terrainIntersectASL") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "terrainIntersectASL _args;";
    };
    ([text] call native);
    PUBLIC FUNCTION("array", "text") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "text _args;";
    };
    ([textLog] call native);
    PUBLIC FUNCTION("array", "textLog") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "textLog _args;";
    };
    ([textLogFormat] call native);
    PUBLIC FUNCTION("array", "textLogFormat") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "textLogFormat _args;";
    };
    ([text] call native);
    PUBLIC FUNCTION("array", "text") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "text _args;";
    };
    ([then] call native);
    PUBLIC FUNCTION("array", "then") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj then _args;";
    };
    ([throw] call native);
    PUBLIC FUNCTION("array", "throw") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "throw _args;";
    };
    ([time] call native);
    PUBLIC FUNCTION("", "time") {
        "time";
    };
    ([titleCut] call native);
    PUBLIC FUNCTION("array", "titleCut") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "titleCut _args;";
    };
    ([titleFadeOut] call native);
    PUBLIC FUNCTION("array", "titleFadeOut") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "titleFadeOut _args;";
    };
    ([titleObj] call native);
    PUBLIC FUNCTION("array", "titleObj") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "titleObj _args;";
    };
    ([titleRsc] call native);
    PUBLIC FUNCTION("array", "titleRsc") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "titleRsc _args;";
    };
    ([titleText] call native);
    PUBLIC FUNCTION("array", "titleText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "titleText _args;";
    };
    ([to] call native);
    PUBLIC FUNCTION("array", "to") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj to _args;";
    };
    ([toArray] call native);
    PUBLIC FUNCTION("array", "toArray") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "toArray _args;";
    };
    ([toLower] call native);
    PUBLIC FUNCTION("array", "toLower") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "toLower _args;";
    };
    ([toString] call native);
    PUBLIC FUNCTION("array", "toString") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "toString _args;";
    };
    ([toUpper] call native);
    PUBLIC FUNCTION("array", "toUpper") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "toUpper _args;";
    };
    ([triggerActivated] call native);
    PUBLIC FUNCTION("array", "triggerActivated") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerActivated _args;";
    };
    ([triggerActivation] call native);
    PUBLIC FUNCTION("array", "triggerActivation") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerActivation _args;";
    };
    ([triggerArea] call native);
    PUBLIC FUNCTION("array", "triggerArea") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerArea _args;";
    };
    ([triggerAttachObject] call native);
    PUBLIC FUNCTION("array", "triggerAttachObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj triggerAttachObject _args;";
    };
    ([triggerAttachVehicle] call native);
    PUBLIC FUNCTION("array", "triggerAttachVehicle") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj triggerAttachVehicle _args;";
    };
    ([triggerAttachedVehicle] call native);
    PUBLIC FUNCTION("array", "triggerAttachedVehicle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerAttachedVehicle _args;";
    };
    ([triggerStatements] call native);
    PUBLIC FUNCTION("array", "triggerStatements") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerStatements _args;";
    };
    ([triggerText] call native);
    PUBLIC FUNCTION("array", "triggerText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerText _args;";
    };
    ([triggerTimeout] call native);
    PUBLIC FUNCTION("array", "triggerTimeout") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerTimeout _args;";
    };
    ([triggerTimeoutCurrent] call native);
    PUBLIC FUNCTION("array", "triggerTimeoutCurrent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerTimeoutCurrent _args;";
    };
    ([triggerType] call native);
    PUBLIC FUNCTION("array", "triggerType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "triggerType _args;";
    };
    ([true] call native);
    PUBLIC FUNCTION("", "true") {
        "true";
    };
    ([try] call native);
    PUBLIC FUNCTION("array", "try") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "try _args;";
    };
    ([turretUnit] call native);
    PUBLIC FUNCTION("array", "turretUnit") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj turretUnit _args;";
    };
    ([tvAdd] call native);
    PUBLIC FUNCTION("array", "tvAdd") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvAdd _args;";
    };
    ([tvClear] call native);
    PUBLIC FUNCTION("array", "tvClear") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvClear _args;";
    };
    ([tvCollapse] call native);
    PUBLIC FUNCTION("array", "tvCollapse") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvCollapse _args;";
    };
    ([tvCount] call native);
    PUBLIC FUNCTION("array", "tvCount") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvCount _args;";
    };
    ([tvCurSel] call native);
    PUBLIC FUNCTION("array", "tvCurSel") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvCurSel _args;";
    };
    ([tvData] call native);
    PUBLIC FUNCTION("array", "tvData") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj tvData _args;";
    };
    ([tvDelete] call native);
    PUBLIC FUNCTION("array", "tvDelete") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvDelete _args;";
    };
    ([tvExpand] call native);
    PUBLIC FUNCTION("array", "tvExpand") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvExpand _args;";
    };
    ([tvPicture] call native);
    PUBLIC FUNCTION("array", "tvPicture") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvPicture _args;";
    };
    ([tvSetCurSel] call native);
    PUBLIC FUNCTION("array", "tvSetCurSel") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvSetCurSel _args;";
    };
    ([tvSetData] call native);
    PUBLIC FUNCTION("array", "tvSetData") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvSetData _args;";
    };
    ([tvSetPicture] call native);
    PUBLIC FUNCTION("array", "tvSetPicture") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvSetPicture _args;";
    };
    ([tvSetValue] call native);
    PUBLIC FUNCTION("array", "tvSetValue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvSetValue _args;";
    };
    ([tvSort] call native);
    PUBLIC FUNCTION("array", "tvSort") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvSort _args;";
    };
    ([tvSortByValue] call native);
    PUBLIC FUNCTION("array", "tvSortByValue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvSortByValue _args;";
    };
    ([tvText] call native);
    PUBLIC FUNCTION("array", "tvText") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvText _args;";
    };
    ([tvValue] call native);
    PUBLIC FUNCTION("array", "tvValue") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "tvValue _args;";
    };
    ([type] call native);
    PUBLIC FUNCTION("array", "type") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "type _args;";
    };
    ([typeName] call native);
    PUBLIC FUNCTION("array", "typeName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "typeName _args;";
    };
    ([typeOf] call native);
    PUBLIC FUNCTION("array", "typeOf") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "typeOf _args;";
    };
    ([uavControl] call native);
    PUBLIC FUNCTION("array", "uavControl") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "uavControl _args;";
    };
    ([uiNamespace] call native);
    PUBLIC FUNCTION("", "uiNamespace") {
        "uiNamespace";
    };
    ([uiSleep] call native);
    PUBLIC FUNCTION("array", "uiSleep") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "uiSleep _args;";
    };
    ([unassignCurator] call native);
    PUBLIC FUNCTION("array", "unassignCurator") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unassignCurator _args;";
    };
    ([unassignItem] call native);
    PUBLIC FUNCTION("array", "unassignItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj unassignItem _args;";
    };
    ([unassignTeam] call native);
    PUBLIC FUNCTION("array", "unassignTeam") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unassignTeam _args;";
    };
    ([unassignVehicle] call native);
    PUBLIC FUNCTION("array", "unassignVehicle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unassignVehicle _args;";
    };
    ([underwater] call native);
    PUBLIC FUNCTION("array", "underwater") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "underwater _args;";
    };
    ([uniform] call native);
    PUBLIC FUNCTION("array", "uniform") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "uniform _args;";
    };
    ([uniformContainer] call native);
    PUBLIC FUNCTION("array", "uniformContainer") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "uniformContainer _args;";
    };
    ([uniformItems] call native);
    PUBLIC FUNCTION("array", "uniformItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "uniformItems _args;";
    };
    ([uniformMagazines] call native);
    PUBLIC FUNCTION("array", "uniformMagazines") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "uniformMagazines _args;";
    };
    ([unitAddons] call native);
    PUBLIC FUNCTION("array", "unitAddons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unitAddons _args;";
    };
    ([unitBackpack] call native);
    PUBLIC FUNCTION("array", "unitBackpack") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unitBackpack _args;";
    };
    ([unitPos] call native);
    PUBLIC FUNCTION("array", "unitPos") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unitPos _args;";
    };
    ([unitReady] call native);
    PUBLIC FUNCTION("array", "unitReady") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unitReady _args;";
    };
    ([unitRecoilCoefficient] call native);
    PUBLIC FUNCTION("array", "unitRecoilCoefficient") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unitRecoilCoefficient _args;";
    };
    ([units] call native);
    PUBLIC FUNCTION("array", "units") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "units _args;";
    };
    ([unitsBelowHeight] call native);
    PUBLIC FUNCTION("array", "unitsBelowHeight") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj unitsBelowHeight _args;";
    };
    ([unlinkItem] call native);
    PUBLIC FUNCTION("array", "unlinkItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj unlinkItem _args;";
    };
    ([unlockAchievement] call native);
    PUBLIC FUNCTION("array", "unlockAchievement") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "unlockAchievement _args;";
    };
    ([unregisterTask] call native);
    PUBLIC FUNCTION("array", "unregisterTask") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj unregisterTask _args;";
    };
    ([updateDrawIcon] call native);
    PUBLIC FUNCTION("array", "updateDrawIcon") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj updateDrawIcon _args;";
    };
    ([updateMenuItem] call native);
    PUBLIC FUNCTION("array", "updateMenuItem") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj updateMenuItem _args;";
    };
    ([updateObjectTree] call native);
    PUBLIC FUNCTION("array", "updateObjectTree") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "updateObjectTree _args;";
    };
    ([useAudioTimeForMoves] call native);
    PUBLIC FUNCTION("array", "useAudioTimeForMoves") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj useAudioTimeForMoves _args;";
    };
    ([vectorDir] call native);
    PUBLIC FUNCTION("array", "vectorDir") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vectorDir _args;";
    };
    ([vectorUp] call native);
    PUBLIC FUNCTION("array", "vectorUp") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vectorUp _args;";
    };
    ([vehicle] call native);
    PUBLIC FUNCTION("array", "vehicle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vehicle _args;";
    };
    ([vehicleChat] call native);
    PUBLIC FUNCTION("array", "vehicleChat") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj vehicleChat _args;";
    };
    ([vehicleRadio] call native);
    PUBLIC FUNCTION("array", "vehicleRadio") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj vehicleRadio _args;";
    };
    ([vehicleVarName] call native);
    PUBLIC FUNCTION("array", "vehicleVarName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vehicleVarName _args;";
    };
    ([vehicles] call native);
    PUBLIC FUNCTION("", "vehicles") {
        "vehicles";
    };
    ([velocity] call native);
    PUBLIC FUNCTION("array", "velocity") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "velocity _args;";
    };
    ([velocityModelSpace] call native);
    PUBLIC FUNCTION("array", "velocityModelSpace") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "velocityModelSpace _args;";
    };
    ([verifySignature] call native);
    PUBLIC FUNCTION("array", "verifySignature") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "verifySignature _args;";
    };
    ([vest] call native);
    PUBLIC FUNCTION("array", "vest") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vest _args;";
    };
    ([vestContainer] call native);
    PUBLIC FUNCTION("array", "vestContainer") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vestContainer _args;";
    };
    ([vestItems] call native);
    PUBLIC FUNCTION("array", "vestItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vestItems _args;";
    };
    ([vestMagazines] call native);
    PUBLIC FUNCTION("array", "vestMagazines") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "vestMagazines _args;";
    };
    ([viewDistance] call native);
    PUBLIC FUNCTION("", "viewDistance") {
        "viewDistance";
    };
    ([visibleMap] call native);
    PUBLIC FUNCTION("", "visibleMap") {
        "visibleMap";
    };
    ([visiblePosition] call native);
    PUBLIC FUNCTION("array", "visiblePosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "visiblePosition _args;";
    };
    ([visiblePositionASL] call native);
    PUBLIC FUNCTION("array", "visiblePositionASL") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "visiblePositionASL _args;";
    };
    ([waitUntil] call native);
    PUBLIC FUNCTION("array", "waitUntil") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waitUntil _args;";
    };
    ([waves] call native);
    PUBLIC FUNCTION("", "waves") {
        "waves";
    };
    ([waypointAttachObject] call native);
    PUBLIC FUNCTION("array", "waypointAttachObject") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj waypointAttachObject _args;";
    };
    ([waypointAttachVehicle] call native);
    PUBLIC FUNCTION("array", "waypointAttachVehicle") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj waypointAttachVehicle _args;";
    };
    ([waypointAttachedObject] call native);
    PUBLIC FUNCTION("array", "waypointAttachedObject") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointAttachedObject _args;";
    };
    ([waypointAttachedVehicle] call native);
    PUBLIC FUNCTION("array", "waypointAttachedVehicle") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointAttachedVehicle _args;";
    };
    ([waypointBehaviour] call native);
    PUBLIC FUNCTION("array", "waypointBehaviour") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointBehaviour _args;";
    };
    ([waypointCombatMode] call native);
    PUBLIC FUNCTION("array", "waypointCombatMode") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointCombatMode _args;";
    };
    ([waypointCompletionRadius] call native);
    PUBLIC FUNCTION("array", "waypointCompletionRadius") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointCompletionRadius _args;";
    };
    ([waypointDescription] call native);
    PUBLIC FUNCTION("array", "waypointDescription") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointDescription _args;";
    };
    ([waypointFormation] call native);
    PUBLIC FUNCTION("array", "waypointFormation") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointFormation _args;";
    };
    ([waypointHousePosition] call native);
    PUBLIC FUNCTION("array", "waypointHousePosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointHousePosition _args;";
    };
    ([waypointLoiterRadius] call native);
    PUBLIC FUNCTION("array", "waypointLoiterRadius") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointLoiterRadius _args;";
    };
    ([waypointLoiterType] call native);
    PUBLIC FUNCTION("array", "waypointLoiterType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointLoiterType _args;";
    };
    ([waypointName] call native);
    PUBLIC FUNCTION("array", "waypointName") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointName _args;";
    };
    ([waypointPosition] call native);
    PUBLIC FUNCTION("array", "waypointPosition") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointPosition _args;";
    };
    ([waypointScript] call native);
    PUBLIC FUNCTION("array", "waypointScript") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointScript _args;";
    };
    ([waypointShow] call native);
    PUBLIC FUNCTION("array", "waypointShow") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointShow _args;";
    };
    ([waypointSpeed] call native);
    PUBLIC FUNCTION("array", "waypointSpeed") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointSpeed _args;";
    };
    ([waypointStatements] call native);
    PUBLIC FUNCTION("array", "waypointStatements") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointStatements _args;";
    };
    ([waypointTimeout] call native);
    PUBLIC FUNCTION("array", "waypointTimeout") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointTimeout _args;";
    };
    ([waypointTimeoutCurrent] call native);
    PUBLIC FUNCTION("array", "waypointTimeoutCurrent") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointTimeoutCurrent _args;";
    };
    ([waypointType] call native);
    PUBLIC FUNCTION("array", "waypointType") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointType _args;";
    };
    ([waypointVisible] call native);
    PUBLIC FUNCTION("array", "waypointVisible") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypointVisible _args;";
    };
    ([waypoints] call native);
    PUBLIC FUNCTION("array", "waypoints") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "waypoints _args;";
    };
    ([weaponAccessories] call native);
    PUBLIC FUNCTION("array", "weaponAccessories") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj weaponAccessories _args;";
    };
    ([weaponCargo] call native);
    PUBLIC FUNCTION("array", "weaponCargo") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "weaponCargo _args;";
    };
    ([weaponDirection] call native);
    PUBLIC FUNCTION("array", "weaponDirection") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj weaponDirection _args;";
    };
    ([weaponLowered] call native);
    PUBLIC FUNCTION("array", "weaponLowered") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "weaponLowered _args;";
    };
    ([weaponState] call native);
    PUBLIC FUNCTION("array", "weaponState") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "weaponState _args;";
    };
    ([weapons] call native);
    PUBLIC FUNCTION("array", "weapons") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "weapons _args;";
    };
    ([weaponsItems] call native);
    PUBLIC FUNCTION("array", "weaponsItems") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "weaponsItems _args;";
    };
    ([weaponsTurret] call native);
    PUBLIC FUNCTION("array", "weaponsTurret") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj weaponsTurret _args;";
    };
    ([west] call native);
    PUBLIC FUNCTION("", "west") {
        "west";
    };
    ([while] call native);
    PUBLIC FUNCTION("array", "while") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "while _args;";
    };
    ([wind] call native);
    PUBLIC FUNCTION("", "wind") {
        "wind";
    };
    ([windDir] call native);
    PUBLIC FUNCTION("", "windDir") {
        "windDir";
    };
    ([windStr] call native);
    PUBLIC FUNCTION("", "windStr") {
        "windStr";
    };
    ([with] call native);
    PUBLIC FUNCTION("array", "with") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "with _args;";
    };
    ([worldName] call native);
    PUBLIC FUNCTION("", "worldName") {
        "worldName";
    };
    ([worldToModel] call native);
    PUBLIC FUNCTION("array", "worldToModel") {
        private ["_obj", "_args"];
        _obj = DEFAULT_PARAM(0, nil);
        _args = DEFAULT_PARAM(1, nil);
        "_obj worldToModel _args;";
    };
    ([worldToScreen] call native);
    PUBLIC FUNCTION("array", "worldToScreen") {
        private ["_args"];
        _args = DEFAULT_PARAM(0, nil);
        "worldToScreen _args;";
    };
ENDCLASS;
