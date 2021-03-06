[arsenalAmmoBox,["LMG_Mk200_F","hgun_P07_F"],false] call BIS_fnc_addVirtualWeaponCargo;
[arsenalAmmoBox,["200Rnd_65x39_cased_Box","16Rnd_9x21_Mag"],false] call BIS_fnc_addVirtualMagazineCargo;
[arsenalAmmoBox,["H_HelmetB_camo","U_B_CTRG_3","V_PlateCarrierH_CTRG","acc_pointer_IR","optic_Hamr","bipod_01_F_blk"],false] call Bis_fnc_addVirtualItemCargo;
[arsenalAmmoBox,["B_Kitbag_rgr"],false] call Bis_fnc_addVirtualBackpackCargo;

comment "Exported from Arsenal by jayman";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "U_B_CTRG_3";
for "_i" from 1 to 5 do {player addItemToUniform "FirstAidKit";};
player addVest "V_PlateCarrierH_CTRG";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "200Rnd_65x39_cased_Box";};
player addBackpack "B_Kitbag_rgr";
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToBackpack "200Rnd_65x39_cased_Box";};
player addHeadgear "H_HelmetB_camo";

comment "Add weapons";
player addWeapon "LMG_Mk200_F";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "optic_Hamr";
player addPrimaryWeaponItem "bipod_01_F_blk";
player addWeapon "hgun_P07_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles";

comment "Set identity";
player setFace "GreekHead_A3_01";
player setSpeaker "Male01ENG";
