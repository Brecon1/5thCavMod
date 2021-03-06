#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cav_common"};
        author = "";
        authors[] = {"Brecon", "FieldGeneral"};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgRespawnTemplates.hpp"
//#include "Cfg3DEN.hpp"
