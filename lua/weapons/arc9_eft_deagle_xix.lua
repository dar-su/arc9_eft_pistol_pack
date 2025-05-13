
--copy of arc9_eft_deagle_l6 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_deagle_l6"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_deaglexix")
SWEP.DefaultBodygroups = "24000000000000"

SWEP.Trivia = {
    _,
    _,
    _,
    _,
    ["eft_trivia_year5"] = "2009 ?"
}


SWEP.Description = "eft_weapon_deaglexix_desc"

SWEP.DefaultElements = {"eft_xix"} -- owo

SWEP.Attachments = { -- hack
    {
        Category = "eft_deagle_barrel_xix",
        Installed = "eft_barrel_deagle_xix",
    },
    {
        Category = "eft_deagle_slide_xix",
        Installed = "eft_slide_deagle_xix",
    },
    _,
    _,
    { Installed = "eft_pg_deagle_std" },
}