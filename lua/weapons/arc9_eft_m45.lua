
--copy of arc9_eft_m1911 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_m1911"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_m45a1") or "Colt M45A1"
SWEP.Description = "eft_weapon_m45a1_desc"

SWEP.DefaultBodygroups = "10000000000000"

SWEP.StandardPresets = {
    "[Mew-mew]XQAAAQC+AQAAAAAAAAA9iIIiM7tuo1AtT00OeFDtNRc/1Ceer4O3MPP904dax2v7chEPMYqMWxx83CUGUTOMfZmKd/uc2BVTT+x9BQXGJsqIkru2mUg0b7e7WNsO8Y4i/l8OJhxLB2gDLXUkfxlofN5tQh71ml2uKObeuKqLUQO7YUCz7UhKZXgfMtx0CeoTSYBlbD2usaX15reMaBI2ENdw9zsYxEIcnHXwynPlD84Dw4Apy+5CexwA",
    "[Black]XQAAAQDsAQAAAAAAAAA9iIIiM7tuo1AtT00OeFDtNRc/1Ceer4O3MPP904dax2v7chEPMYqMWxx83CUGUTOMfZmKd/uaa4g3V57K5T9L0pbY7UbH30iexv3WOuAOFlaKgtEaF6de3UHY5s5KH/DpIbnr59ADEAHcPWvkiaCEc0T4E5yqv2/R0a9ql24NKmUUeJM7RHCGV/uSwkjVmryZZ9jwD0jhHHpfZJ+1/2YAEjOiyUMM1kSMMER8ISNoU6mJvx0sDCEi6fLBGcgA",
}

SWEP.EFTErgo = 78

-- SWEP.DefaultElements = {"eft_k"} -- owo

SWEP.Attachments = {
    {
        Installed = "eft_barrel_1911_nat",
    },
    {
        Installed = "eft_slide_1911_m45",
        SubAttachments = {
            {
                Installed = "eft_fs_1911_m45",
            },
            {
                Installed = "eft_rs_1911_m45",
            },
        }
    },
    _,
    {
        Installed = "eft_mag_1911_tac",
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol", "eft_um3"},
        Pos = Vector(0, 1.9, 0.38),
        Ang = Angle(0, -90, 180),
    },
    _,
    {
        Installed = "eft_1911_slock_m45",
    },
    {
        Installed = "eft_1911_hammer_m45",
    },
    {
        Installed = "eft_1911_trigger_m45",
    },
    {
        Category = "eft_m45_pgrip",
        Installed = "eft_1911_pgrip_m45",
    },
}