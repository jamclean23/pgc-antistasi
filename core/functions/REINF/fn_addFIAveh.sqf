#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
params [
	["_typeVehX", "", [""]]
];

if (_typeVehX isEqualTo "") exitWith {[localize "STR_A3A_addFiaVeh_header", localize "STR_A3AP_error_empty_generic"] call A3A_fnc_customHint;};
if (!(isNil "HR_GRG_placing") && {HR_GRG_placing}) exitWith {[localize "STR_A3A_addFiaVeh_header", localize "STR_A3AP_error_already_placing_generic"] call A3A_fnc_customHint;};
if (player != player getVariable ["owner",player]) exitWith {[localize "STR_A3A_addFiaVeh_header", localize "STR_A3AP_error_aicontrol_generic"] call A3A_fnc_customHint;};
if ([getPosATL player] call A3A_fnc_enemyNearCheck) exitWith {[localize "STR_A3A_addFiaVeh_header", localize "STR_A3AP_error_enemynear_generic"] call A3A_fnc_customHint;};

private _cost = [_typeVehX] call A3A_fnc_vehiclePrice;
private _resourcesFIA = 0;

if (player != theBoss) then {
	_resourcesFIA = player getVariable "moneyX";
} else {
	private _factionMoney = server getVariable "resourcesFIA";
	if (_cost <= _factionMoney) then {
		_resourcesFIA = _factionMoney;
	} else {
		_resourcesFIA = player getVariable "moneyX";
	};
};

if (_resourcesFIA < _cost) exitWith {
	[localize "STR_A3A_addFiaVeh_header", format [localize "STR_A3AP_error_veh_not_enough_money_generic", _cost, A3A_faction_civ get "currencySymbol"]] call A3A_fnc_customHint;
};


// Check for medical ===========================


// // Check if _typeVehX is equal to any value in the array returned by (A3A_faction_reb get 'vehiclesMedical')
_medicalVehicles = A3A_faction_reb get "vehiclesMedical";


_medVehExists = false;

// Check if _typeVehX is equal to any value in the array _medicalVehicles
if (_typeVehX in _medicalVehicles) then {
    // Medical vehicle handling
    // ["DEBUG", "Medical"] call A3A_fnc_customHint;


	// See if selected vehicle on the map
	_spawnedVehs = player nearEntities [_typeVehX, 10000000];
	_mapMedCount = count _spawnedVehs;
	if (_mapMedCount > 0) then {
		_medVehExists = true;
	};

	// See if selected vehicle in garage
	_garageArray = HR_GRG_Vehicles;
	_garageVehs = [];

	for "_i" from 0 to count _garageArray - 1 do {
    _catHash = _garageArray select _i;
    _allKeys = keys _catHash;

		for "_j" from 0 to count _allKeys - 1 do {
			_cat = _garageArray#_i;
			_vehicle = _cat get _allKeys#_j;
			_classname = _vehicle select 1;
			_garageVehs pushBack _classname;
		};
	};

	if (_typeVehX in _garageVehs) then {
		_medVehExists = true;
	};
};

if (_medVehExists) exitWith {
		["Garage", "You can only have 1 spawn vehicle."] call A3A_fnc_customHint;
};

// Check for medical ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


private _nearestMarker = [markersX select {sidesX getVariable [_x,sideUnknown] == teamPlayer},player] call BIS_fnc_nearestPosition;

private _extraMessage =	format [localize "STR_veh_callback_select_veh_generic", _cost,  A3A_faction_civ get "currencySymbol"];
private _fnc_placed = {
	params ["_vehicle", "_cost"];
	if (isNull _vehicle) exitWith {};
	private _factionMoney = server getVariable "resourcesFIA";

	if (player == theBoss && {_cost <= _factionMoney}) then {
		[0,(-1 * _cost)] remoteExec ["A3A_fnc_resourcesFIA",2];
	}
	else {
		[-1 * _cost] call A3A_fnc_resourcesPlayer;
		_vehicle setVariable ["ownerX",getPlayerUID player,true];
		playSound "A3AP_UiSuccess";
	};

	player reveal _vehicle;
	petros directSay "SentGenBaseUnlockVehicle";

	if (!HR_GRG_hasFuelSource) then { 
		_vehicle setFuel random [0.10, 0.25, 0.35];
	}; 

	[_vehicle, teamPlayer] call A3A_fnc_AIVehInit;

	if (_vehicle isKindOf "StaticWeapon") then {
		staticsToSave pushBack _vehicle; 
		publicVariable "staticsToSave";
	};
};

[_typeVehX, _fnc_placed, {false}, [_cost], nil, nil, nil, _extraMessage] call HR_GRG_fnc_confirmPlacement;
