#include "script_component.hpp"

/*_____________________________________________________________________________
@filename: config.sqf

Author:
	Brecon

Description:
	Defines variables for freqs and bft

Arguments:
	None

Return Value:
	None

Example:
	_handle = execVM "b\config\groupConfig.sqf";
	waitUntil {isNull _handle};

 _____________________________________________________________________________*/

// --- Groups
_hq = "b_hq";			// Command elements
_ft = "b_inf";			// Fireteams
_sup = "b_support";		// Support units (MMG,HMG)
_lau = "b_motor_inf";	// Launchers (MAT, HAT)
_mor = "b_mortar";		// Mortars
_eng = "b_maint";		// Engineers
_ifv = "b_mech_inf";	// IFVs & APCs
_tnk = "b_armor";		// Tanks
_rec = "b_recon";		// Recon (ST)
_hel = "b_air";			// Helicopters
_pla = "b_plane";		// Planes
_art = "b_art";			// Artillery

GVAR(BFT_Custom_Colour_Platoon) = QGVAR(ColourPlatoon);
GVAR(BFT_Custom_Colour_Alpha) = QGVAR(ColourAlpha);
GVAR(BFT_Custom_Colour_Bravo) = QGVAR(ColourBravo);
GVAR(BFT_Custom_Colour_Chalie) = QGVAR(ColourCharlie);
GVAR(BFT_Custom_Colour_Delta) = QGVAR(ColourDelta);
GVAR(BFT_Custom_Colour_Support) = QGVAR(ColourSupport);
GVAR(BFT_Custom_Colour_Tank) = QGVAR(ColourArmour);
GVAR(BFT_Custom_Colour_Air) = QGVAR(ColourAir);

// --- Group Markers with Freq
// --- Callsign = [Grp Name,Marker, Display Name on Map, Colour, SW Freq, Default SW channel,  LR Freq, Default LR channel]

// --- Platoon
CAV_Platoon   = ["Grp_CO",    _hq,  "PL",    GVAR(BFT_Custom_Colour_Platoon), ["60", "62", "64", "66"],     0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_PlatoonV  = ["Grp_COV",   _lau, "COV",   GVAR(BFT_Custom_Colour_Platoon), ["60", "62", "64", "66"],     1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- Alpha
CAV_AlphaHQ   = ["Grp_ASL",   _hq,  "ASL",   GVAR(BFT_Custom_Colour_Alpha),    ["70", "72", "74", "76"],     0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Alpha1    = ["Grp_A1",    _ft,  "A1",    GVAR(BFT_Custom_Colour_Alpha),    ["70", "72", "74", "76"],     1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Alpha2    = ["Grp_A2",    _ft,  "A2",    GVAR(BFT_Custom_Colour_Alpha),    ["70", "72", "74", "76"],     2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_AlphaV    = ["Grp_AV",    _lau, "AV",    GVAR(BFT_Custom_Colour_Alpha),    ["70", "72", "74", "76"],     3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- Bravo
CAV_BravoHQ   = ["Grp_BSL",   _hq,  "BSL",   GVAR(BFT_Custom_Colour_Bravo),   ["80", "82", "84", "86"],     0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Bravo1    = ["Grp_B1",    _ft,  "B1",    GVAR(BFT_Custom_Colour_Bravo),   ["80", "82", "84", "86"],     1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Bravo2    = ["Grp_B2",    _ft,  "B2",    GVAR(BFT_Custom_Colour_Bravo),   ["80", "82", "84", "86"],     2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_BravoV    = ["Grp_BV",    _lau, "BV",    GVAR(BFT_Custom_Colour_Bravo),   ["80", "82", "84", "86"],     3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- Charlie
CAV_CharlieHQ = ["Grp_CSL",   _hq,  "CSL",   GVAR(BFT_Custom_Colour_Chalie),  ["90", "92", "94", "96"],     0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Charlie1  = ["Grp_C1",    _ft,  "C1",    GVAR(BFT_Custom_Colour_Chalie),  ["90", "92", "94", "96"],     1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Charlie2  = ["Grp_C2",    _ft,  "C2",    GVAR(BFT_Custom_Colour_Chalie),  ["90", "92", "94", "96"],     2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_CharlieV  = ["Grp_CV",    _lau, "CV",    GVAR(BFT_Custom_Colour_Chalie),  ["90", "92", "94", "96"],     3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- Delta
CAV_DeltaHQ   = ["Grp_DSL",   _hq,  "DSL",   GVAR(BFT_Custom_Colour_Delta),   ["100", "102", "104", "106"], 0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Delta1    = ["Grp_D1",    _ft,  "D1",    GVAR(BFT_Custom_Colour_Delta),   ["100", "102", "104", "106"], 1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_Delta2    = ["Grp_D2",    _ft,  "D2",    GVAR(BFT_Custom_Colour_Delta),   ["100", "102", "104", "106"], 2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_DeltaV    = ["Grp_DV",    _ifv, "DV",    GVAR(BFT_Custom_Colour_Delta),   ["100", "102", "104", "106"], 3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- Medium MG Team
CAV_MMG1      = ["Grp_MMG1",  _sup, "MMG1",  GVAR(BFT_Custom_Colour_Support), ["66", "110", "112"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_MMG2      = ["Grp_MMG2",  _sup, "MMG2",  GVAR(BFT_Custom_Colour_Support), ["66", "110", "112"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Heavy MG Team
CAV_HMG1      = ["Grp_HMG1",  _sup, "HMG1",  GVAR(BFT_Custom_Colour_Support), ["66", "114", "116"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_HMG2      = ["Grp_HMG2",  _sup, "HMG2",  GVAR(BFT_Custom_Colour_Support), ["66", "114", "116"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Medium AT Team
CAV_MAT1      = ["Grp_MAT1",  _lau, "MAT1",  GVAR(BFT_Custom_Colour_Support), ["66", "118", "120"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_MAT2      = ["Grp_MAT2",  _lau, "MAT2",  GVAR(BFT_Custom_Colour_Support), ["66", "118", "120"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Heavy AT Team
CAV_HAT1      = ["Grp_HAT1",  _lau, "HAT1",  GVAR(BFT_Custom_Colour_Support), ["66", "122", "124"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_HAT2      = ["Grp_HAT2",  _lau, "HAT2",  GVAR(BFT_Custom_Colour_Support), ["66", "122", "124"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Mortar Team
CAV_MTR1      = ["Grp_MTR1",  _mor, "MTR1",  GVAR(BFT_Custom_Colour_Support), ["66", "126", "128"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_MTR2      = ["Grp_MTR2",  _mor, "MTR2",  GVAR(BFT_Custom_Colour_Support), ["66", "126", "128"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Medium SAM Team
CAV_MSAM1     = ["Grp_MSAM1", _lau, "MSAM1", GVAR(BFT_Custom_Colour_Support), ["66", "130", "132"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_MSAM2     = ["Grp_MSAM2", _lau, "MSAM2", GVAR(BFT_Custom_Colour_Support), ["66", "130", "132"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Heavy SAM Team
CAV_HSAM1     = ["Grp_HSAM1", _lau, "HSAM1", GVAR(BFT_Custom_Colour_Support), ["66", "134", "136"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_HSAM2     = ["Grp_HSAM2", _lau, "HSAM2", GVAR(BFT_Custom_Colour_Support), ["66", "134", "136"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Sniper Team
CAV_ST1       = ["Grp_ST1",   _rec, "ST1",   GVAR(BFT_Custom_Colour_Support), ["66", "138", "140"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_ST2       = ["Grp_ST2",   _rec, "ST2",   GVAR(BFT_Custom_Colour_Support), ["66", "138", "140"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Diver Team
CAV_DT1       = ["Grp_DT1",   _rec, "DT1",   GVAR(BFT_Custom_Colour_Support), ["66", "142", "144"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_DT2       = ["Grp_DT2",   _rec, "DT2",   GVAR(BFT_Custom_Colour_Support), ["66", "142", "144"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- Engineer Team
CAV_ET1       = ["Grp_ENG1",  _eng, "ENG1",  GVAR(BFT_Custom_Colour_Support), ["66", "146", "148"],         1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];
CAV_ET2       = ["Grp_ENG2",  _eng, "ENG2",  GVAR(BFT_Custom_Colour_Support), ["66", "146", "148"],         2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 0];

// --- APC
CAV_APC1      = ["Grp_APC1",  _ifv, "APC1",  GVAR(BFT_Custom_Colour_Tank),  ["150", "152", "154", "156"], 0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_APC2      = ["Grp_APC2",  _ifv, "APC2",  GVAR(BFT_Custom_Colour_Tank),  ["150", "152", "154", "156"], 1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_APC3      = ["Grp_APC3",  _ifv, "APC3",  GVAR(BFT_Custom_Colour_Tank),  ["150", "152", "154", "156"], 2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_APC4      = ["Grp_APC4",  _ifv, "APC4",  GVAR(BFT_Custom_Colour_Tank),  ["150", "152", "154", "156"], 3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- IFV
CAV_IFV1      = ["Grp_IFV1",  _ifv, "IFV1",  GVAR(BFT_Custom_Colour_Tank),  ["160", "162", "164"],        0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_IFV2      = ["Grp_IFV2",  _ifv, "IFV2",  GVAR(BFT_Custom_Colour_Tank),  ["160", "162", "164"],        1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_IFV3      = ["Grp_IFV3",  _ifv, "IFV3",  GVAR(BFT_Custom_Colour_Tank),  ["160", "162", "164"],        2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_IFV4      = ["Grp_IFV4",  _ifv, "IFV4",  GVAR(BFT_Custom_Colour_Tank),  ["160", "162", "154"],        3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- Tank
CAV_TANK1     = ["Grp_TNK1",  _tnk, "TNK1",  GVAR(BFT_Custom_Colour_Tank),  ["170", "172", "174", "176"], 0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_TANK2     = ["Grp_TNK2",  _tnk, "TNK2",  GVAR(BFT_Custom_Colour_Tank),  ["170", "172", "174", "176"], 1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_TANK3     = ["Grp_TNK3",  _tnk, "TNK3",  GVAR(BFT_Custom_Colour_Tank),  ["170", "172", "174", "176"], 2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];
CAV_TANK4     = ["Grp_TNK4",  _tnk, "TNK4",  GVAR(BFT_Custom_Colour_Tank),  ["170", "172", "174", "176"], 3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 3];

// --- Transport Helicopter
CAV_TH1       = ["Grp_TH1",   _hel, "TH1",   GVAR(BFT_Custom_Colour_Air),    ["180", "182", "184", "186"], 0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_TH2       = ["Grp_TH2",   _hel, "TH2",   GVAR(BFT_Custom_Colour_Air),    ["180", "182", "184", "186"], 1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_TH3       = ["Grp_TH3",   _hel, "TH3",   GVAR(BFT_Custom_Colour_Air),    ["180", "182", "184", "186"], 2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_TH4       = ["Grp_TH4",   _hel, "TH4",   GVAR(BFT_Custom_Colour_Air),    ["180", "182", "184", "186"], 3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];

// --- Attack Helicopter
CAV_AH1       = ["Grp_AH1",   _hel, "AH1",   GVAR(BFT_Custom_Colour_Air),    ["190", "192", "194", "196"], 0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_AH2       = ["Grp_AH2",   _hel, "AH2",   GVAR(BFT_Custom_Colour_Air),    ["190", "192", "194", "196"], 1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_AH3       = ["Grp_AH3",   _hel, "AH3",   GVAR(BFT_Custom_Colour_Air),    ["190", "192", "194", "196"], 2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_AH4       = ["Grp_AH4",   _hel, "AH4",   GVAR(BFT_Custom_Colour_Air),    ["190", "192", "194", "196"], 3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];

// --- Close Air Support
CAV_CAS1      = ["Grp_CAS1",  _pla, "CAS1",  GVAR(BFT_Custom_Colour_Air),    ["200", "202", "204", "206"], 0, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_CAS2      = ["Grp_CAS2",  _pla, "CAS2",  GVAR(BFT_Custom_Colour_Air),    ["200", "202", "204", "206"], 1, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_CAS3      = ["Grp_CAS3",  _pla, "CAS3",  GVAR(BFT_Custom_Colour_Air),    ["200", "202", "204", "206"], 2, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
CAV_CAS4      = ["Grp_CAS4",  _pla, "CAS4",  GVAR(BFT_Custom_Colour_Air),    ["200", "202", "204", "206"], 3, ["30", "32", "34", "40", "42", "44", "50", "52", "54"], 6];
