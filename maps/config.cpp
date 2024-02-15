#include "BIS_AddonInfo.hpp"
#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_core"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class A3A {
    #include "mapInfo.hpp"
    #include "NavGrid.hpp"
};


#define A3A_Mission(MAPNAME, BRIEFINGLOCSTRING) class Antistasi_##MAPNAME { briefingName = BRIEFINGLOCSTRING; directory = x\A3A\addons\maps\Antistasi_##MAPNAME##.##MAPNAME; };

class CfgMissions
{
    class MPMissions
    { // mission folder names need to be `Antistasi_{Map name}.{Map name}`
        A3A_Mission(Altis, "Antistasi Ultimate - PGC Edition - Altis")
        A3A_Mission(Malden, "Antistasi Ultimate - PGC Edition - Malden")
        A3A_Mission(SefrouRamal, "Antistasi Ultimate - PGC Edition - Sefrou-Ramal")
		A3A_Mission(chernarus, "Antistasi Ultimate - PGC Edition - Chernarus Autumn")
		A3A_Mission(chernarus_summer, "Antistasi Ultimate - PGC Edition - Chernarus Summer")
		A3A_Mission(Chernarus_Winter, "Antistasi Ultimate - PGC Edition - Chernarus Winter")
        A3A_Mission(cup_chernarus_A3, "Antistasi Ultimate - PGC Edition - Chernarus 2020")
        A3A_Mission(Enoch, "Antistasi Ultimate - PGC Edition - Livonia")
        A3A_Mission(Esseker, "Antistasi Ultimate - PGC Edition - Esseker")
        A3A_Mission(Napf, "Antistasi Ultimate - PGC Edition - Napf")
		A3A_Mission(NapfWinter, "Antistasi Ultimate - PGC Edition - Napf Winter")
        A3A_Mission(blud_vidda, "Antistasi Ultimate - PGC Edition - Vidda")
        A3A_Mission(vt7, "Antistasi Ultimate - PGC Edition - Virolahti")
        A3A_Mission(takistan, "Antistasi Ultimate - PGC Edition - Takistan")
        A3A_Mission(Tanoa, "Antistasi Ultimate - PGC Edition - Tanoa")
        A3A_Mission(cam_lao_nam, "Antistasi Ultimate - PGC Edition - Cam Lao Nam")
        A3A_Mission(vn_khe_sanh, "Antistasi Ultimate - PGC Edition - Khe Sanh")
        A3A_Mission(Sehreno, "Antistasi Ultimate - PGC Edition - Sehreno")
		A3A_Mission(sara, "Antistasi Ultimate - PGC Edition - Sahrani")
		A3A_Mission(Kunduz, "Antistasi Ultimate - PGC Edition - Kunduz")
		A3A_Mission(Tembelan, "Antistasi Ultimate - PGC Edition - Tembelan Island")
		A3A_Mission(tem_anizay, "Antistasi Ultimate - PGC Edition - Anizay")
		A3A_Mission(SPE_Normandy, "Antistasi Ultimate - PGC Edition - Normandy")
		A3A_Mission(lingor3, "Antistasi Ultimate - PGC Edition - Lingor")
		A3A_Mission(lythium, "Antistasi Ultimate - PGC Edition - Lythium")
		A3A_Mission(Panthera3, "Antistasi Ultimate - PGC Edition - Panthera")
		A3A_Mission(Winthera3, "Antistasi Ultimate - PGC Edition - Panthera Winter")
		A3A_Mission(abramia, "Antistasi Ultimate - PGC Edition - Isla Abramia")
		A3A_Mission(OPTRE_Madrigal, "Antistasi Ultimate - PGC Edition - Madrigal")
		A3A_Mission(rhspkl, "Antistasi Ultimate - PGC Edition - Prei Khmaoch Luong")
		A3A_Mission(Kapaulio, "Antistasi Ultimate - PGC Edition - Saint Kapaulio")
		A3A_Mission(Staszow, "Antistasi Ultimate - PGC Edition - Staszow")
		A3A_Mission(StaszowWinter, "Antistasi Ultimate - PGC Edition - Staszow Winter")
		A3A_Mission(iron_excelsior_Tobruk, "Antistasi Ultimate - PGC Edition - Tobruk")
		A3A_Mission(ruha, "Antistasi Ultimate - PGC Edition - Ruha")
		A3A_Mission(gm_weferlingen_winter, "Antistasi Ultimate - PGC Edition - Weferlingen Winter")
        A3A_Mission(gm_weferlingen_summer, "Antistasi Ultimate - PGC Edition - Weferlingen Summer")
		A3A_Mission(brf_sumava, "Antistasi Ultimate - PGC Edition - Sumava")
#if __A3_DEBUG__
        A3A_Mission(Stratis, $STR_antistasi_mission_info_Stratis_mapname_text)
#endif
    };
};
