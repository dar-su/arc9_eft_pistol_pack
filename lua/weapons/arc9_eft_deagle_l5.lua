
--copy of arc9_eft_deagle_l6 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_deagle_l6"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_deaglel5357")
SWEP.DefaultBodygroups = "12000000000000"

SWEP.Description = "eft_weapon_deaglel5357_desc"

SWEP.DefaultElements = {"eft_l5"} -- owo

SWEP.EFTErgo = 68

SWEP.Attachments = { -- hack
    {
        Category = "eft_deagle_barrel_l5",
        Installed = "eft_barrel_deagle_l5_357",
    },
    {
        Category = "eft_deagle_slide_l5",
        Installed = "eft_slide_deagle_l5_357",
    },
    _,
    {
        Installed = "eft_mag_deagle_9",
    },
}