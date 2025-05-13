
-- owewwides pm with diwwewent twiwia anwd atts uwu

AddCSLuaFile()

SWEP.Base = "arc9_eft_pm"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Slot = 1
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_pb.mdl"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_pb")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_tsniitochmash",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x18",
    ["eft_trivia_act3"]= "eft_trivia_act_blow",
    ["eft_trivia_country4"] = "eft_trivia_country_ussr",
    ["eft_trivia_year5"] = "1967"
}

SWEP.Description = "eft_weapon_pb_desc"

SWEP.IronSights = {
    Pos = Vector(-4.265, -8, 2.05),
    Ang = Angle(0, -0.28, 0),
}

local path = "weapons/darsu_eft/pm/"
SWEP.ShootSound = { path .. "pb_close1.ogg", path .. "pb_close1.ogg" }
SWEP.ShootSoundIndoor = { path .. "pb_indoor_close1.ogg", path .. "pb_indoor_close1.ogg" }
SWEP.DistantShootSound = { path .. "pb_distant1.ogg", path .. "pb_distant1.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "pb_indoor_distant1.ogg", path .. "pb_indoor_distant1.ogg" }

SWEP.RecoilAutoControl = 3.25 -- autocompenstaion, could be cool if set to high but it also affects main recoil
SWEP.RecoilUp   = 2.3   -- up recoil
SWEP.VisualRecoil = 0.5 -- general multiplier for it

SWEP.DefaultElements = {"eft_pb", "pmmallowed"} 

SWEP.Attachments = {
    { 
        Slide = "Muzzle", 
        Pos = Vector(0, 5, 0), 
        Category = "eft_pb_sil", 
        Installed = "eft_pb_silencer",
        SubAttachments = {
            {
                Installed = nil
            },
        }
    },
    { 
        Category = "eft_pb_pg", 
        Installed = "eft_pb_pg_std" 
    }
} -- overide


SWEP.HookP_NameChange = function(self, name) end

SWEP.HookP_DescriptionChange = function(self, desc) end
SWEP.EFTErgo = 80