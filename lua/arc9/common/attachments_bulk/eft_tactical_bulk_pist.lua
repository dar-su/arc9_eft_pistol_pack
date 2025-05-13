local ATT = {}

local flaremat = Material("effects/arc9_eft/laserdot", "mips smooth")
local meow_green = Color(31, 172, 18)
local meow_red = Color(172, 27, 27)

local function drawlight(swep, model, mode, offset, color)
    if swep:GetValue("EFTMode" .. mode) then
        render.SetMaterial(flaremat)
        render.DrawSprite(model:LocalToWorld(offset), 0.3, 0.3, color)
    end
end

///////////////////////////////////////      eft_tactical_baldrpro


ATT = {}

ATT.PrintName = "Olight Baldr Pro tactical flashlight with laser"
ATT.CompactName = "BaldrPro"
ATT.Description = [[The Baldr Pro flashlight by Olight is engineered to fit virtually any rail-equipped pistol or rifle. Combines a laser designator and a flashlight.]]

ATT.Icon = Material("entities/eft_attachments/tactical/baldr.png", "mips smooth")

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.CustomPros = { ["Hipfire Spread if on (Cannot be stacked)"] = "-50%" }

ATT.Category = {"eft_tactical", "eft_tactical_pistol"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/tac_baldr_pro.mdl"

-- idk about this one

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_laser_red",
        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },   
    {
        PrintName = "eft_toggle_light_laser",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,

        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_off",
    }
}


ARC9.LoadAttachment(ATT, "eft_tactical_baldrpro")


///////////////////////////////////////      eft_tactical_baldrpro_tan


ATT = {}

ATT.PrintName = "Olight Baldr Pro tactical flashlight with laser (Tan)"
ATT.CompactName = "BaldrPro"
ATT.Description = [[The Baldr Pro flashlight by Olight is engineered to fit virtually any rail-equipped pistol or rifle. Combines a laser designator and a flashlight. 

Tan version.]]

ATT.Icon = Material("entities/eft_attachments/tactical/baldr_tan.png", "mips smooth")

ATT.EFTErgoAdd = -1
ATT.CustomPros = { ["Hipfire Spread if on (Cannot be stacked)"] = "-50%" }
ATT.CustomCons = { Ergonomics = "-1" }

ATT.Category = {"eft_tactical", "eft_tactical_pistol"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/tac_baldr_pro.mdl"
ATT.ModelSkin = 1

-- idk about this one

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_laser_red",
        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },   
    {
        PrintName = "eft_toggle_light_laser",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,

        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_off",
    }
}


ARC9.LoadAttachment(ATT, "eft_tactical_baldrpro_tan")


///////////////////////////////////////      eft_tactical_gtl21


ATT = {}

ATT.PrintName = "Glock GTL 21 tactical flashlight with laser"
ATT.CompactName = "GTL 21"
ATT.Description = [[An underbarrel-mounted LED flashlight with a laser aiming module manufactured by Glock.]]

ATT.Icon = Material("entities/eft_attachments/tactical/gtl21.png", "mips smooth")

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.CustomPros = { ["Hipfire Spread if on (Cannot be stacked)"] = "-50%" }

ATT.Category = {"eft_tactical", "eft_tactical_pistol"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/tac_gtl21.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_laser_red",
        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },   
    {
        PrintName = "eft_toggle_light_laser",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,

        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_off",
    }
}


ARC9.LoadAttachment(ATT, "eft_tactical_gtl21")


///////////////////////////////////////      eft_tactical_x400


ATT = {}

ATT.PrintName = "SureFire X400 Ultra tactical flashlight with laser"
ATT.CompactName = "X400"
ATT.Description = [[The X400U flashlight by SureFire is engineered to fit virtually any rail-equipped pistol or rifle. Combines a laser designator and a flashlight.]]

ATT.Icon = Material("entities/eft_attachments/tactical/x400.png", "mips smooth")

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.CustomPros = { ["Hipfire Spread if on (Cannot be stacked)"] = "-50%" }

ATT.Category = {"eft_tactical", "eft_tactical_pistol"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/tac_x400.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_laser_red",
        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },   
    {
        PrintName = "eft_toggle_light_laser",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 4096,
        FlashlightFOV = 85,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,

        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_off",
    }
}


ARC9.LoadAttachment(ATT, "eft_tactical_x400")


///////////////////////////////////////      eft_tactical_xc1


ATT = {}

ATT.PrintName = "SureFire XC1 tactical flashlight"
ATT.CompactName = "XC1"
ATT.Description = [[A compact tactical LED flashlight, manufactured by SureFire.]]

ATT.Icon = Material("entities/eft_attachments/tactical/xc1.png", "mips smooth")

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.CustomPros = { ["Hipfire Spread if on (Cannot be stacked)"] = "-50%" }

ATT.Category = {"eft_tactical", "eft_tactical_pistol", "eft_tactical_top", "eft_tactical_xc1"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/tac_xc1.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
        FlashlightDistance = 2048,
        FlashlightFOV = 83,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "eft_toggle_off",
    }
}


ARC9.LoadAttachment(ATT, "eft_tactical_xc1")

