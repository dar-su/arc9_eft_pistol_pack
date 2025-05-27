AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_usp45")
SWEP.Description = ARC9:GetPhrase("eft_weapon_usp45_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_hk",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_45acp",
    ["eft_trivia_act3"] = "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_germ",
    ["eft_trivia_year5"] = "1993"
}

SWEP.StandardPresets = {
    "[Match]XQAAAQCrAQAAAAAAAAA9iIIiM7tupQCpjtoZF0tx3T1+wANbEVpxCLNFlXOfGS2hRntytFH+J59lGDjqz6ZH4bg7HnPgSDqniyN73eDxQY3gQXhBu/6NaFIrFv+NdhfeYI+Bl9ZRA8D0g5laEF/5uFzZwi6fMtO9ySkn0C2VSs/oJ4NV0NaLoMnJ6zqEk5SHD+53ajCyQpHmaItEkTMcbtUtHdCPuTv0WKX/5mEJVAxuiUlvVv2fB4TZ/6+hZAA=",
    "[Expert]XQAAAQCDAQAAAAAAAAA9iIIiM7tupQCpjtoZF0tx3T1+wANbEVpxCLNFlXOfGS2hRlMhLkaWXM321ybYwD8rMCuZ+DU/zL9El3OZSnOUp9p1RWQifazXO48XfUOGWxa+sa2Kt3qLj8cW6rZrgqnIGOx08nVMzo4mNGLyWcXxfBbg0XdB0Z9Nb+xTwMFnQrICZ/+ZLijB0cqCcIEKoNH+oZqy91B1WR8KDNvRX0Kg8mend3EmAhHtAA==",
    "[Elite]XQAAAQCbAQAAAAAAAAA9iIIiM7tupQCpjtoZF0tx3T1+wANbEVpxCLNFlXOfGS2hSOvpy/r5k10K07HVq5kdigjd9zqBhfXxdWjYxcUL2tDjJT3U2Ut6aJhz9dgcdGLfdKBJLLvv6Z+TVdj554SK4DE3H9EfMr3/Pf0073v4P+0YQDNMzhWwLa2jWt6pyRLfS6jWu061IA1cjGS5t7y4vFKys2GjVpn/fwRl1iuoVnKHdeshvCE/LNl5QzkpAA==",
    "[Tactical]XQAAAQCmAQAAAAAAAAA9iIIiM7tupQCpjtoZF0tx3T1+wANbEVpxCLNFlXOfGS2hRp+kF73+n878ceITBBMgpdth8IbtOD4Mw/aLpBiV54LdaMHvq4AKCRFegnVZlXjnth2eHDz6YsLn0JarBrzg0SmGrdZ31j6ksAsB505wJvyLLKvLpd4cAjuHnC9af39AkdvMvINYihMU/WDYGzHHAg5WqxJYCtldGQGnHj0qXCiX/yqxckWAQ78+fbwCMagA",
}

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_usp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 8, -5), -- rpg
    TPIKAng = Angle(-10, 0, 180),
    Scale = 1,

    TPIKHolsterOffset = Vector(-2, -4, 1),
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 1.91),
    Ang = Angle(0, 0.1, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.5, -.45)
SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)
SWEP.CustomizePos = Vector(21.7, 40, 4)
SWEP.CustomizeSnapshotFOV = 35
SWEP.CustomizeRotateAnchor = Vector(21.7, -4.28, -5.23)
SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)

SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.HoldTypeHolstered = "normal"

if GetConVar("arc9_eft_nontpik_mode"):GetBool() then -- pistols
    SWEP.HoldType = "revolver"
    SWEP.HoldTypeSprint = "normal"
    SWEP.HoldTypeSights = "revolver"
    SWEP.HoldTypeCustomize = "passive"
end

-- this thing WILL one hand sprint always
SWEP.OneHandedSprint = true
SWEP.SprintAng = Angle(3, 33, -12)
SWEP.SprintPos = Vector(3, -7.1, -13)
SWEP.HoldTypeSprint = "normal"

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 9.97 * ARC9.MOAToAcc
SWEP.RPM = 450
SWEP.EFTErgo = 82
SWEP.BarrelLength = 16
SWEP.Ammo = "pistol"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.25 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.0   -- up recoil
SWEP.RecoilSide = 1.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.4 -- random up/down
SWEP.RecoilRandomSide = 0.5   -- random left/right

SWEP.RecoilAutoControl = 3.25 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.25 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 1.5   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 1.5   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 0.75 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 5 -- same but in sights only

SWEP.VisualRecoilDampingConst = 300  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 9 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 2 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.01 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.01 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.4 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -1.2)
SWEP.SubtleVisualRecoil = 0.35
SWEP.SubtleVisualRecoilHipFire = 7
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1

------------------------- |||           Damage            ||| -------------------------

-- default fmj
SWEP.DamageMax = 72 * 0.5
SWEP.DamageMin = 47.93 * 0.5
SWEP.PhysBulletMuzzleVelocity = 340  /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      25 *2.54/100/0.0254
SWEP.PenetrationDelta = 36/100
SWEP.ArmorPiercing =    36/100
SWEP.RicochetChance =   6.5/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    72 * 0.5     },

    {   100 /0.0254 * 1, 
    66.36 * 0.5     },

    {   200 /0.0254 * 1, 
    62.8 * 0.5     },

    {   300 /0.0254 * 1, 
    60 * 0.5     },

    {   400 /0.0254 * 1, 
    57.63 * 0.5     },

    {   500 /0.0254 * 1, 
    55.53 * 0.5     },

    {   600 /0.0254 * 1, 
    53.66 * 0.5     },

    {   700 /0.0254 * 1, 
    51.97 *0.5     },

    {   800 /0.0254 * 1, 
    50.47 * 0.5     },

    {   900 /0.0254 * 1, 
    49.12* 0.5     },

    {   1000 /0.0254 * 1, 
    47.93 * 0.5     },
}
------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 666
SWEP.MalfunctionMeanShotsToFailMultHot = -2
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 0.75

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.8
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/45acp.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

local expertoffset, expertangoffset = Vector(0, 0, 0.255), Angle(0, -0.5, 0)
local eliteoffset, eliteangoffset = Vector(0, 0, 0.23), Angle(0, -0.46, 0)
local tacsightoffset, tacsightangoffset = Vector(0.014, 0, -0.19), Angle(0, 0.05, 0)

function SWEP:GetSightPositions() -- different slides different ironsights have different ironsight positions
    local s = self:GetSight()
    local e = self:GetElements()

    if self:GetValue("FoldSights") then return s.Pos, s.Ang end

    local rst, fst = e["eft_rs_usp_tac"], e["eft_fs_usp_tac"]

    if e["eft_slide_usp_expert"] then
        if rst and fst then return s.Pos + expertoffset + tacsightoffset, s.Ang + expertangoffset + tacsightangoffset end
        return s.Pos + expertoffset, s.Ang + expertangoffset
    elseif e["eft_slide_usp_elite"] then
        if rst and fst then return s.Pos + eliteoffset + tacsightoffset, s.Ang + eliteangoffset + tacsightangoffset end
        return s.Pos + eliteoffset, s.Ang + eliteangoffset
    elseif rst and fst then
        return s.Pos + tacsightoffset, s.Ang + tacsightangoffset
    end

    return s.Pos, s.Ang
end

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/usp/"
local pathgenericpistol = ")weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "usp_fire_close.ogg" }
SWEP.ShootSoundIndoor = path .. "usp_fire_indoor_close.wav"
SWEP.DistantShootSound = { path .. "usp_fire_distant.ogg" }
SWEP.DistantShootSoundIndoor = path .. "usp_fire_indoor_distant.wav"

SWEP.ShootSoundSilenced = { path .. "usp_fire_silenced_close.ogg" }
SWEP.ShootSoundSilencedIndoor = path .. "usp_fire_silenced_indoor_close.wav"
SWEP.DistantShootSoundSilenced = path .. "usp_fire_silenced_distant.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "usp_fire_silenced_indoor_distant.wav"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_m9a3.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.6*0.9
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)
SWEP.ReloadHideBonesFirstPerson = true

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
    [6] = "uwu",
    [7] = "patron_in_mag5",
    [8] = "uwu",
    [9] = "patron_in_mag7",
    [10] = "uwu",
    [11] = "patron_in_mag9",
    [12] = "uwu",
    [13] = "patron_in_mag11"
}

SWEP.SuppressEmptySuffix = true
SWEP.EFT_HasTacReloads = true 

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    
    local ending = ""

    local nomag = !elements["hasmag"]
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 mag check  (!nomag)
    -- 2 slide checking  (!empty)
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        
        ending = rand

        if nomag then
            ending = 0
        end

        if SERVER and ending == 2 then -- mag check
            net.Start("arc9eftmagcheck")
            net.WriteBool(true) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
        end

        return anim .. ending
    end
    
    if (anim == "reload" or anim == "reload_empty") and nomag then -- reload
        return "reload_single"
    end

    if anim == "reload" and swep.EFT_StartedTacReload then
        if SERVER then timer.Simple(0.3, function() if IsValid(swep) then swep:SetClip1(1) end end) end
        return "reload_tactical"
    end
    
    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- 0 = misfire, 1 = eject, 2 = feed, 3 = bolt, 4 = bolt
        if SERVER then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end
        
        return "jam" .. rand
    end
end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag5",
        "patron_in_mag7",
        "patron_in_mag9",
        "patron_in_mag11"
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    -- { s = randspin, t = 3/26 },    
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.12 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 0.01 },
    { s = randspin, t = 0.58  },
    { s = path .. "1911_slide_in_fast.ogg", t = 1 },
    { s = randspin, t = 1.28  },
    { s = path .. "generic_jam_shell_ remove_medium3.ogg", t = 1.93  },
    { s = randspin, t = 2.38 },
    { s = pathgenericpistol .. "grach_catch_button.ogg", t = 2.79+0.02 },
    { s = path .. "1911_slide_out.ogg", t = 2.92-0.05 },
    -- { s = "arc9_eft_shared/weap_handoff.ogg", t = 3.33 },
    { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.44 },
}

local rst_def = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.1 },
    { s = randspin, t = 0.34 },    
    { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 0.58 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.79 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 0.97 },
    { s = randspin, t = 1.15 },    
    { s = pouchin, t = 1.49 },
    { s = pouchout, t = 1.63 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 2.15 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 2.49-0.08 },
    { s = randspin, t = 2.92 },    
    { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.2 },
}

local rst_empty = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.06 },
    { s = randspin, t = 0.16 },    
    { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 0.32 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.38 },
    { s =  randspin, t = 0.44 },
    { s = pouchout, t = 0.87 },
    { s =  randspin, t = 1.12 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 1.44 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 1.79-0.08 },
    { s = randspin, t = 2.3 },  
    { s = pathgenericpistol .. "grach_catch_button.ogg", t = 2.71+0.02 },
    { s = path .. "1911_slide_out.ogg", t = 2.85-0.05 },
    { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.3 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.6},
    {hide = 0, t = 1.1}
    
}

local rst_tac = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.06 - 2/24 },
    { s = randspin, t = 0.16 - 2/24 },    
    { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 0.32 - 2/24 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.38 - 2/24 },
    { s =  randspin, t = 0.44 - 2/24 },
    { s = pouchout, t = 0.87 - 2/24 },
    { s =  randspin, t = 1.12 - 2/24 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 1.44 - 2/24 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 1.79-0.08 - 2/24 },
    { s = randspin, t = 2.3 - 2/24 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.6},
    {hide = 0, t = 1.1}
    
}

local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0 },
            { s = path .. "1911_slide_in_fast.ogg", t = 0.59 },
            { s = path .. "1911_slide_out.ogg", t = 0.87 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 1.41 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.6, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0 },
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s = "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
        Mult = 1,
        EventTable = {
            { s = "arc9_eft_shared/weap_trigger_hammer.wav", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = "arc9_eft_shared/weap_trigger_hammer.wav", t = 0 },
            -- { s = path .. "1911_slide_out.ogg", t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
        EventTable = {
            { s = "arc9_eft_shared/weap_trigger_hammer.wav", t = 0 },
            -- { s = path .. "1911_slide_out.ogg", t = 0.05 },
        }
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
        EventTable = {
            { s = "arc9_eft_shared/weap_trigger_hammer.wav", t = 0 },
            -- { s = path .. "1911_slide_out.ogg", t = 0.05 },
        }
    },

    ["reload_single"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_single,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_single"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_single,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["reload"] = {
        Source = "reload",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def,
        Mult = 0.85, -- we are TACTICAL
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_tactical"] = {
        Source = "reloadt",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_tac,
        DropMagAt = 0.6,
        Mult = 0.85, -- we are TACTICAL
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = {"reload_empty0", "reload_empty1", "reload_empty2"}, 
        -- Source = {"reload_empty2"}, 
        MinProgress = 0.85,
        MagSwapTime = 1.0,
        FireASAP = true,
        EventTable = rst_empty,
        Mult = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },
    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.21 },
            { s = randspin, t = 0.86 },
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.24 },
            
            { s = slidelock, t = 1.76 },
            { s = slidelockgrab, t = 2.1 },
            { s = randspin, t = 2.38 },
            { s = randspin, t = 2.76 },
            { s = path .. "generic_jam_shell_ remove_medium3.ogg", t = 2.84 },
            { s =  path .. "fiveseven_slider_in_slow.ogg", t = 3.38 },
            { s = randspin, t = 3.59 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.84 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.3, lhik = 1},
            { t = 0.4, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 1.6 + 1.292
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.21 },
            { s = randspin, t = 0.86 },
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.26 },

            { s = randspin, t = 1.36 },
            { s = slidelockgrab, t = 1.89 },
            { s = slidelockgrab, t = 2.21 },
            { s = slidelockgrab, t = 2.64 },
            { s = randspin, t = 2.93 },
            { s =  path .. "1911_slide_out.ogg", t = 3.84 },
            { s = path .. "generic_jam_shell_ remove_medium3.ogg", t = 3.95 },
            { s =  path .. "1911_slide_in_fast.ogg", t = 4.09 },
            { s = randspin, t = 4.42 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 4.6 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 1},
            { t = 0.4, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 3.95
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.21 },
            { s = randspin, t = 0.86 },
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.28 },

            { s = randspin, t = 1.41 },
            { s = slidelockgrab, t = 1.82 },
            { s = slidelockgrab, t = 2.13 },
            { s =  path .. "fiveseven_slider_out_slow.ogg", t = 2.52 },
            { s = randspin, t = 2.83 },
            { s = randspin, t = 3.23 },
            { s = randspin, t = 3.66 },
            { s = path .. "generic_jam_shell_ remove_medium3.ogg", t = 3.8 },
            { s = randspin, t = 4.04 },
            { s =  path .. "1911_slide_in_fast.ogg", t = 4.31 },
            { s = randspin, t = 4.63 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 4.74 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 1},
            { t = 0.4, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 2.59 + 1.292
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.21 },
            { s = randspin, t = 0.86 },
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.26 },

            { s = randspin, t = 1.35 },
            { s = slidelockgrab, t = 1.84 },
            { s =  path .. "fiveseven_slider_out_slow.ogg", t = 2.17 },
            { s = path .. "generic_jam_shell_ remove_medium3.ogg", t = 2.25 },
            { s =  path .. "1911_slide_in_fast.ogg", t = 2.42 },
            { s = randspin, t = 2.76 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 2.94 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.4, lhik = 1},
            { t = 0.5, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.25
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "inspect",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.15 },
            { s = randspin, t = 0.28 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.62 },
            { s = randspin, t = 2.96 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.25 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect2"] = {
        Source = "magcheck",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05 },
            { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 0.21 },
            { s =  path .. "fiveseven_mag_out.ogg", t = 0.33 },
            { s = randspin, t = 0.8 },
            { s =  path .. "fiveseven_mag_rattle2.ogg", t = 1.47 },
            { s = randspin, t = 2.3 },
            { s =  path .. "fiveseven_mag_rattle.ogg", t = 2.73 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 3.03 },
            { s = randspin, t = 3.42 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.5 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect0"] = {
        Source = "checkchamber",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.07 },
            { s = randspin, t = 0.21 },
            { s = path .. "fiveseven_slider_in_slow.ogg", t = 0.71 },
            { s = path .. "fiveseven_slider_out_slow.ogg", t = 1.49 },
            { s = randspin, t = 1.86 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 2.15 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect_empty0"] = {
        Source = "inspect_empty",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.15 },
            { s = randspin, t = 0.28 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.62 },
            { s = randspin, t = 2.96 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.25 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect_empty2"] = {
        Source = "magcheck_empty",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05 },
            { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 0.21 },
            { s =  path .. "fiveseven_mag_out.ogg", t = 0.33 },
            { s = randspin, t = 0.8 },
            { s =  path .. "fiveseven_mag_rattle2.ogg", t = 1.47 },
            { s = randspin, t = 2.3 },
            { s =  path .. "fiveseven_mag_rattle.ogg", t = 2.73 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 3.03 },
            { s = randspin, t = 3.42 },
            { s = "arc9_eft_shared/weapon_generic_rifle_spin2.ogg", t = 3.5 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBarrel", "HasLock", "HasHammer", "HasTrigger", "HasSlide", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_barrel_usp_std"]    = { Bodygroups = { {4, 1} } },
    ["eft_barrel_usp_elite"]    = { Bodygroups = { {4, 4} } },
    ["eft_barrel_usp_expert"]    = { Bodygroups = { {4, 3} } },
    ["eft_barrel_usp_match"]    = { Bodygroups = { {4, 5} } },
    ["eft_barrel_usp_tac"]    = { Bodygroups = { {4, 2} } },

    ["eft_usp_slock_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_usp_hammer_std"]    = { Bodygroups = { {2, 1} } },
    ["eft_usp_trigger_std"]    = { Bodygroups = { {3, 1} } },

    ["eft_slide_usp_std"]    = { Bodygroups = { {5, 1} } },
    ["eft_slide_usp_elite"]    = { Bodygroups = { {5, 4} } },
    ["eft_slide_usp_expert"]    = { Bodygroups = { {5, 3} } },
    ["eft_slide_usp_match"]    = { Bodygroups = { {5, 5} } },
    ["eft_slide_usp_tac"]    = { Bodygroups = { {5, 2} } },

    ["eft_muzzle_usp_cap"]    = { Bodygroups = { {7, 1} } },

    ["eft_mount_usp_rail"]    = { Bodygroups = { {6, 3} } },
    ["eft_mount_usp_elite"]    = { Bodygroups = { {6, 1} } },
    ["eft_mount_usp_match"]    = { Bodygroups = { {6, 2} } },

    ["eft_ammo_45acp_fmj"]    = { Bodygroups = { {8, 0} } },
    ["eft_ammo_45acp_ap"]    = { Bodygroups = { {8, 1} } },
    ["eft_ammo_45acp_hydra"]    = { Bodygroups = { {8, 2} } },
    ["eft_ammo_45acp_laser"]    = { Bodygroups = { {8, 3} } },
    ["eft_ammo_45acp_rip"]    = { Bodygroups = { {8, 4} } },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_usp_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0.5),
        Ang = Angle(0, 0, 0),
        Installed = "eft_barrel_usp_std",
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Category = "eft_usp_slide",
        Bone = "mod_reciever",
        Pos = Vector(0, 1, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1.085, 0.185),
        Installed = "eft_slide_usp_std",
        SubAttachments = {
            {
                Installed = "eft_fs_usp_std",
            },
            {
                Installed = "eft_rs_usp_std",
            },
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_45acp",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_45acp_fmj",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -3),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_usp_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_usp_std"
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Bone = "weapon",
        Category = {"eft_usp_tac"},
        Pos = Vector(0, 23.3, -0.3),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_catch"),
        Category = "eft_usp_slock",
        Bone = "mod_catch",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Installed = "eft_usp_slock_std",
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_hammer"),
        Category = "eft_usp_hammer",
        Bone = "mod_hammer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Installed = "eft_usp_hammer_std",
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_trigger"),
        Category = "eft_usp_trigger",
        Bone = "mod_trigger",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Installed = "eft_usp_trigger_std",
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_usp"},
        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}
