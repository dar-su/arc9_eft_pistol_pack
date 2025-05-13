
-- owewwides pm with diwwewent twiwia anwd atts uwu

AddCSLuaFile()

SWEP.Base = "arc9_eft_aps"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Slot = 1

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_apb")

SWEP.Description = "eft_weapon_apb_desc"

SWEP.DefaultElements = {"eft_apb"} 

SWEP.DefaultBodygroups = "10000000000000"

SWEP.Attachments = {
    {  Installed = "eft_aps_rs_apb" },
    _,
    _,
    _,
    { Installed = "eft_apb_silencer_std" },
    { Installed = "eft_aps_stock_std" },
} -- overide

SWEP.EFTErgo = 80