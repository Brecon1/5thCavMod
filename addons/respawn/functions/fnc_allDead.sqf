#include "script_component.hpp"

params ["_side"];

if (([_side] call FUNC(playerTicketsLeft) == 0) and (!(missionNamespace getVariable [QGVAR(deployed), false]) or (damage GVAR(medVic) == 1))) exitWith {true};

false
