comment "Exported from Arsenal by jayman";

comment "Remove existing items";

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
player forceAddUniform "LOP_U_TKA_Fatigue_01";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_morphine";
player addVest "LOP_V_6Sh92_WDL";
player addHeadgear "LOP_H_SSh68Helmet_TAN";
player addBackpack "B_AssaultPack_khk";
player additemtoUniform "ACRE_PRC148";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";

comment "Set identity";
player setFace "WhiteHead_16";
player setSpeaker "rhs_Male03RUS";

if(true) exitWith{};

