//Written by [TWC]jayman
//Grabs the marker "Zavaraknorth" and spawns a motorized squad
//gives motorized squad an attack move order to the center of the town


if (isServer) then {
_pos = [getMarkerPos "Zavarak",[600,700]] call SHK_pos;
_groupSpawn = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "LOP_AM" >> "Motorized" >> "LOP_AM_Motor_squad_LR")] call BIS_fnc_spawnGroup;
[_groupSpawn, ("Zavarak"), 40] call CBA_fnc_taskAttack;
};
