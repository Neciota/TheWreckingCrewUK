[] execVM "tasks.sqf";

if(!isNil "completedTasks")then{
	{
		[_x select 0, _x select 1, false] call BIS_fnc_taskSetState;
	}forEach completedTasks;
};

if(isMultiplayer)then{
		[] Spawn {
		waitUntil{!(isNil "BIS_fnc_init")};
		playMusic "Theme";
		titleCut ["", "BLACK FADED", 999];
		
		titleText ["The Wrecking Crew","PLAIN DOWN"]; 
		titleFadeOut 7;
		sleep 5;

		titleText [briefingName,"PLAIN"];
		titleFadeOut 15;
		sleep 45;

		if(!isNil "ForwardBasePos")then{
			player setPos ForwardBasePos;
			["ForwardBasePos"] spawn {twc_fnc_reconnected};
		}else{
			["NormalBase"] spawn {twc_fnc_reconnected};
		};


		sleep 3;
		"dynamicBlur" ppEffectEnable true;   
		"dynamicBlur" ppEffectAdjust [6];   
		"dynamicBlur" ppEffectCommit 0;     
		"dynamicBlur" ppEffectAdjust [0.0];  
		"dynamicBlur" ppEffectCommit 5;  

		titleCut ["", "BLACK IN", 5];
		
		if!((goggles player) in approvedFacewear)then{
			removeGoggles player;
		};
		if!(player getVariable ["twc_keepMap",false])then{ 
			player unassignItem "itemMap"; 
			player removeItem "itemMap"; 
		};
		1 enableChannel false;		
	};
};