/*
* Author: [TWC] jayman
* Makes a unit hold its position where it starts. 
*
* Arguments:
* 0: Unit <OBJECT>
*
* Return Value:
* NOTHING
*
* Example:
* [defender1] spawn twc_fnc_stationaryUnits
*
* Public: no
*/
params["_unit"];
	if (isServer || !hasInterface) then {
	_group = group _unit;
	_group setVariable ["twc_cacheDefending",true];
	{
		_x forceSpeed 0;
	}forEach units _group;

	if(!isMultiplayer)exitWith{};
	waitUntil{groupOwner _group != 2};

	{
		_x forceSpeed 0;
	}forEach units _group;
	_unit setVariable ["acex_headless_blacklist", true];
};