//Init stuff
_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

//Lists of items to include
_availableHeadgear = [
	"H_Booniehat_khk",
	"H_Booniehat_oli",
	"H_Booniehat_indp",
	"H_Booniehat_mcamo",
	"H_Booniehat_grn",
	"H_Booniehat_tan",
	"H_Booniehat_dirty",
	"H_Booniehat_dgtl",
	"H_Booniehat_khk_hs",
	"H_Cap_red",
	"H_Cap_blu",
	"H_Cap_oli",
	"H_Cap_headphones",
	"H_Cap_tan",
	"H_Cap_blk",
	"H_Cap_blk_CMMG",
	"H_Cap_brn_SPECOPS",
	"H_Cap_tan_specops_US",
	"H_Cap_khaki_specops_UK",
	"H_Cap_grn",
	"H_Cap_grn_BI",
	"H_Cap_blk_Raven",
	"H_Cap_blk_ION",
	"H_Cap_oli_hs",
	"H_Cap_press",
	"H_Cap_usblack",
	"H_Cap_surfer",
	"H_Cap_police",
	"H_MilCap_ocamo",
	"H_MilCap_mcamo",
	"H_MilCap_oucamo",
	"H_MilCap_rucamo",
	"H_MilCap_gry",
	"H_MilCap_dgtl",
	"H_MilCap_blue",
	"H_BandMask_blk",
	"H_Bandanna_surfer",
	"H_Bandanna_khk",
	"H_Bandanna_khk_hs",
	"H_Bandanna_cbr",
	"H_Bandanna_sgg",
	"H_Bandanna_sand",
	"H_Bandanna_surfer_blk",
	"H_Bandanna_surfer_grn",
	"H_Bandanna_gry",
	"H_Bandanna_blu",
	"H_Bandanna_camo",
	"H_Bandanna_mcamo",
	"H_Shemag_khk",
	"H_Shemag_tan",
	"H_Shemag_olive",
	"H_Shemag_olive_hs",
	"H_ShemagOpen_khk",
	"H_ShemagOpen_tan",
	"H_Beret_blk",
	"H_Beret_blk_POLICE",
	"H_Beret_red",
	"H_Beret_grn",
	"H_Beret_grn_SF",
	"H_Beret_brn_SF",
	"H_Beret_ocamo",
	"H_Beret_02",
	"H_Beret_Colonel",
	"H_Watchcap_blk",
	"H_Watchcap_cbr",
	"H_Watchcap_khk",
	"H_Watchcap_camo",
	"H_Watchcap_sgg",
	"H_TurbanO_blk",
	"H_StrawHat",
	"H_StrawHat_dark",
	"H_Hat_blue",
	"H_Hat_brown",
	"H_Hat_camo",
	"H_Hat_grey",
	"H_Hat_checker",
	"H_Hat_tan",
	"H_RacingHelmet_1_F",
	"H_RacingHelmet_2_F",
	"H_RacingHelmet_3_F",
	"H_RacingHelmet_4_F",
	"H_RacingHelmet_1_black_F",
	"H_RacingHelmet_1_blue_F",
	"H_RacingHelmet_1_green_F",
	"H_RacingHelmet_1_red_F",
	"H_RacingHelmet_1_white_F",
	"H_RacingHelmet_1_yellow_F",
	"H_RacingHelmet_1_orange_F",
	"H_Cap_marshal"
];

_availableGoggles = [
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Sport_Blackred",
	"G_Sport_Blackyellow",
	"G_Squares_Tinted",
	"G_Tactical_Black",
	"G_Tactical_Clear",
	"G_Bandanna_blk"
];

_availableUniforms = [
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_redwhite",
	"U_C_Commoner1_1",
	"U_C_Commoner1_2",
	"U_C_Commoner1_3",
	"U_Rangemaster",
	"U_NikosBody",
	"U_OrestesBody",
	"U_Competitor",
	"U_IG_Guerilla1_1",
	"U_IG_Guerilla2_1",
	"U_IG_Guerilla2_2",
	"U_IG_Guerilla2_3",
	"U_IG_Guerilla3_1",
	"U_IG_Guerilla3_2",
	"U_IG_leader",
	"U_BG_Guerilla1_1",
	"U_BG_Guerilla2_1",
	"U_BG_Guerilla2_2",
	"U_BG_Guerilla2_3",
	"U_BG_Guerilla3_1",
	"U_BG_Guerilla3_2",
	"U_OG_Guerilla1_1",
	"U_OG_Guerilla2_1",
	"U_OG_Guerilla2_2",
	"U_OG_Guerilla2_3",
	"U_OG_Guerilla3_1",
	"U_OG_Guerilla3_2",
	"U_OG_leader",
	"U_C_Poor_1",
	"U_C_Poor_2",
	"U_C_WorkerCoveralls",
	"U_C_Poor_shorts_1",
	"U_C_Commoner_shorts",
	"U_C_ShirtSurfer_shorts",
	"U_C_TeeSurfer_shorts_1",
	"U_C_TeeSurfer_shorts_2",
	"U_C_Journalist",
	"U_C_Scientist",
	"U_NikosAgedBody",
	"U_Marshal",
	"U_B_Protagonist_VR",
	"U_O_Protagonist_VR",
	"U_I_Protagonist_VR",
	"U_IG_Guerrilla_6_1",
	"U_BG_Guerrilla_6_1",
	"U_OG_Guerrilla_6_1",
	"U_C_Driver_1",
	"U_C_Driver_2",
	"U_C_Driver_3",
	"U_C_Driver_4",
	"U_C_Driver_1_black",
	"U_C_Driver_1_blue",
	"U_C_Driver_1_green",
	"U_C_Driver_1_red",
	"U_C_Driver_1_white",
	"U_C_Driver_1_yellow",
	"U_C_Driver_1_orange"
];

_availableVests = [

];

_availableBackpacks = [

];


//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;