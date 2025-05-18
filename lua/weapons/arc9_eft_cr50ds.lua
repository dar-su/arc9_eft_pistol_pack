
--copy of cr200ds but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_cr200ds"

SWEP.Spawnable = true

SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_cr50ds")
SWEP.Description = "eft_weapon_cr50ds_desc"

SWEP.Trivia = {
    _,
    ["eft_trivia_cal2"] = "eft_trivia_calibr_357",
}

SWEP.DefaultBodygroups = "1200000000000"

SWEP.IronSights = {
    Pos = Vector(-4.34, -8, 1.3),
    Ang = Angle(0, 0, 0),
}


SWEP.CustomizePos = Vector(22.25, 30, 2.8)
SWEP.CustomizeRotateAnchor = Vector(22.25, -4.28, -5.23)

SWEP.Spread = 5.16 * ARC9.MOAToAcc
SWEP.EFTErgo = 80

------------------------- |||           Damage            ||| -------------------------
--          Damage

SWEP.DamageMax = 70 * 0.5
SWEP.DamageMin = 48 * 0.5
SWEP.PhysBulletMuzzleVelocity = 385 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      35 *2.54/100/0.0254
SWEP.PenetrationDelta = 43/100
SWEP.ArmorPiercing =    43/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    70 * 0.5     },

    {   100 /0.0254 * 1, 
    64 * 0.5     },

    {   200 /0.0254 * 1, 
    60.64 * 0.5     },

    {   300 /0.0254 * 1, 
    58.22 * 0.5     },

    {   400 /0.0254 * 1, 
    56.22 * 0.5     },

    {   500 /0.0254 * 1, 
    54.5 * 0.5     },

    {   600 /0.0254 * 1, 
    53 * 0.5     },

    {   700 /0.0254 * 1, 
    51.6 * 0.5     },

    {   800 /0.0254 * 1, 
    50.3 * 0.5     },

    {   900 /0.0254 * 1, 
    49 * 0.5     },

    {   1000 /0.0254 * 1, 
    48 * 0.5     },
}


------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.0 -- general multiplier of main recoil

SWEP.RecoilUp   = 3   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 3 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 2 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 3   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 3   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = -0.0 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 9 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 2 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.01 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.25 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -1.2)
SWEP.SubtleVisualRecoil = 0.5
SWEP.SubtleVisualRecoilHipFire = 7
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1


SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/357.mdl"

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_rhino_barrel_40ds"] then return "CR 40DS .357"
    elseif elements["eft_rhino_barrel_60ds"] then return "CR 60DS .357" end
end

SWEP.Attachments = {
    {
        Category = "eft_ammo_357",
        Integral = "eft_ammo_357_fmj",
        Installed = "eft_ammo_357_fmj",
    },
    _,
    _,
    {
        Pos = Vector(-0.078, 25.51, 1.85),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_rhino_rs",
        Bone = "weapon",
        Installed = "eft_rhino_rs_std",
        Pos = Vector(-0.078, 19.36, 1.89),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Barrel",
        Category = "eft_rhino357_barrel",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 5, 1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Bone = "weapon",
        Pos = Vector(-0.078, 25.5, -0.22),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_rhino", "eft_custom_slot_revolver"},
        Bone = "weapon",
        Pos = Vector(0, 15, -2),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}