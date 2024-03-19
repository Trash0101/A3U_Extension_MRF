class Templates {
    class Vanilla_Base; //import Vanilla_Base from A3A to use with defining a new vanilla template

    class Vanilla_AAF { // overwrite existing template
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        file = "Vanilla_AI_AAF";
    };

    class Vanilla_AFRF_Z : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; //the side the faction defaults to, one of the following: Inv, Occ, Reb, Riv, Civ
        flagTexture = "rhsafrf\addons\rhs_main\data\flag_rus_co.paa"; //path to an icon to be displayed in the selector
        name = "AFRFM"; //the name shown in the selector
        file = "Vanilla_AI_AAF2"; //the template file name
        maps[] = {}; //if this template should be prioritized on any maps (case sensetive to worldName)
        climate[] = {"arid", "arctic"}; //climate that the template is meant for
    };
        class Vanilla_WAGNER : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; //the side the faction defaults to, one of the following: Inv, Occ, Reb, Riv, Civ
        flagTexture = "WagnerFlag\addons\flags\wagner2023.paa"; //path to an icon to be displayed in the selector
        name = "PMC Wagner"; //the name shown in the selector
        file = "PRIGOZHINZENYA"; //the template file name
        maps[] = {}; //if this template should be prioritized on any maps (case sensetive to worldName)
        climate[] = {"arid", "arctic"}; //climate that the template is meant for
    };
            class Vanilla_NAPA_M : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; //the side the faction defaults to, one of the following: Inv, Occ, Reb, Riv, Civ
        flagTexture = "\a3\Data_F_Enoch\Flags\flag_EAF_CO.paa"; //path to an icon to be displayed in the selector
        name = "Nagova Modern"; //the name shown in the selector
        file = "NAPA_M"; //the template file name
        maps[] = {}; //if this template should be prioritized on any maps (case sensetive to worldName)
        climate[] = {"arid", "arctic"}; //climate that the template is meant for
    };
};
