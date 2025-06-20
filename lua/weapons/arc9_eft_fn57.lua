AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_fn57")
SWEP.Description = ARC9:GetPhrase("eft_weapon_fn57_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_fnherstal",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_57x28",
    ["eft_trivia_act3"] = "eft_trivia_act_blow",
    ["eft_trivia_country4"] = "eft_trivia_country_belg",
    ["eft_trivia_year5"] = "2013"
}

-- SWEP.StandardPresets = {
--     "[SBR]XQAAAQDkAQAAAAAAAAA9iIIiM7tupQCpjtoZF0tx3T1+wANbEVxqFZAByh6qhVZXVisPPGQ68+wxl6Clg2WdPpXisRhzTpf/iEt6Gg8zuohxxwnRMcCgIqexBZtQsepi2XBaxJ5hSzYt41kzK/9Z19V4tqcMdFINtbCRO1nykUf5Ffy9TI/cd2zCORP380hDAg6kqXhO5yfsw41mXPQIovzxjy0psESphcE5q25r9NzIQI/ycLJ2CA==",
--     "[CWDG]XQAAAQAuAgAAAAAAAAA9iIIiM7tupQCpjtoZF0tx3T1+wANbEVxqFZAByh6qhVZXVig8lqP9ajIpFq4QtXCdQZcMPH9a0d3jQpT2KU/HcIpbeMTNN/KEGHEWyi8E3qd5DFIi/R9mheHTmu1ixKNh8CnP8jDbIqx+0HBSdQlXRHA9mCCgX8a62i9XJX5d9PgmhsxMPoi+yElM5Bth9cdixYGlVfIKHaU5AGXkqK6F7P8HN7nd7DFzk7zEccKjeamv50x2PPQka9FtHzujI5y/CUs0AE45uEwAYA=="
-- }

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_fn57.mdl"
SWEP.WorldModel = "models/weapons/w_pist_fiveseven.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6.5, 6, -5), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1,

    TPIKHolsterOffset = Vector(0.5, -1, -1),
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 1.815),
    Ang = Angle(0, 0.01, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.1, -.45)
SWEP.CustomizePos = Vector(21.7, 40, 3.75)
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

SWEP.PeekMaxFOV = 60
-- SWEP.PeekPos = Vector(-1.5, 1, -4.5)
-- SWEP.PeekAng = Angle(0, 0.4, -35)
SWEP.PeekPosReloading = Vector(3, 3, -3)
SWEP.PeekAngReloading = Angle(0, 0, -10)

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 8.594 * ARC9.MOAToAcc
SWEP.RPM = 450
SWEP.EFTErgo = 86
SWEP.BarrelLength = 25
SWEP.Ammo = "pistol"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 7 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 1.25   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 1.25   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 600  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 10 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 2 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.1 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.25 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -1.2)
SWEP.SubtleVisualRecoil = 0.35
SWEP.SubtleVisualRecoilHipFire = 7
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1

------------------------- |||           Damage            ||| -------------------------

-- default ss190

SWEP.DamageMax = 49/2
SWEP.DamageMin = 32/2
SWEP.PhysBulletMuzzleVelocity = 715 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      37 *2.54/100/0.0254
SWEP.PenetrationDelta = 43/100
SWEP.ArmorPiercing =    43/100
SWEP.RicochetChance =   60/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    49  /2   },

    {   100 /0.0254, 
    44.69/2     },

    {   200 /0.0254, 
    40.28 /2    },

    {   300 /0.0254, 
    37.24/2     },

    {   400 /0.0254, 
    35.7 /2    },

    {   500 /0.0254, 
    34.71/2     },

    {   600 /0.0254, 
    33.95/2     },

    {   700 /0.0254, 
    33.33/2     },

    {   800 /0.0254, 
    32.78/2     },

    {   900 /0.0254, 
    32.3/2     },

    {   1000 /0.0254, 
    31.86/2    },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 700
SWEP.MalfunctionMeanShotsToFailMultHot = -20
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 80
SWEP.HeatDissipation = 4

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.4
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/57x28.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

SWEP.CustomizePosHook = function(wep, vec)
	local eles = wep:GetElements()

	if eles["eft_57_silencer"] then
		return vec + Vector(2.5, 4, 0)
	end
end

SWEP.CustomizeRotateAnchorHook = function(wep, vec)
	local eles = wep:GetElements()

	if eles["eft_57_silencer"] then
		return vec + Vector(2.5, 0, 0)
	end
end

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/57/"

SWEP.ShootSound = path .. "fiveseven_fire_close.ogg"
SWEP.ShootSoundIndoor = path .. "fiveseven_fire_indoor_close.wav"
SWEP.DistantShootSound = path .. "fiveseven_fire_distant.ogg"
SWEP.DistantShootSoundIndoor = path .. "fiveseven_fire_indoor_distant.wav"

SWEP.ShootSoundSilenced = path .. "fiveseven_fire_silenced_close.ogg"
SWEP.DistantShootSoundSilenced = path .. "fiveseven_fire_silenced_distant.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "fiveseven_fire_silenced_indoor_close.wav"
SWEP.DistantShootSoundSilencedIndoor = path .. "fiveseven_fire_silenced_indoor_distant.wav"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/57mag.mdl"
SWEP.DropMagazineAmount = 0
SWEP.DropMagazineTime = 0.6
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, -3, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, -40, 0)
SWEP.ReloadHideBonesFirstPerson = true

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2"
}

SWEP.SuppressEmptySuffix = true
SWEP.EFT_HasTacReloads = true 

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    
    local ending = ""

    local nomag = !elements["magdefault"]
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
            ending = (!empty and rand == 2) and 3 or 0 -- secret inspect
        end

        if SERVER and ending == 2 then -- mag check
            net.Start("arc9eftmagcheck")
            net.WriteBool(false) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
        end

        return anim .. ending
    end
    
    if anim == "reload" or anim == "reload_empty" then -- reload
        if swep.EFT_StartedTacReload and !empty then
            if SERVER then timer.Simple(0.3, function() if IsValid(swep) then swep:SetClip1(1) end end) end
            return "reload_tactical"
        end
		if nomag then return "reload_single" end
    end
    
    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 0, 4.99))
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
        "patron_in_mag2"
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    -- { s = randspin, t = 3/26 },    
    -- { s = "arc9_eft_shared/weap_handoff.ogg", t = 8/26 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 5/26 },
    -- { s = randspin, t = 17/26  },
    { s = path .. "fiveseven_slider_out_slow.ogg", t = 21/24 },
    { s = "arc9_eft_shared/generic_jam_shell_ remove_medium3.ogg", t = 43/26  },
    { s = randspin, t = 59/26 },
    { s =  path .. "fiveseven_slider_in_fast.ogg", t = 65/26 },
    { s = randspin, t = 74/26 },
}

local rst_def = {
    { s = randspin, t = 4/28 },    
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 7/28 },
    { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 14/28 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 16/28 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 21/28 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 25/28 },
    -- { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 35/28 },
    -- { s = "arc9_eft_shared/weap_mag_pullout.ogg", t = 46/24 },
    { s = pouchin, t = 1.08 },
    { s = pouchout, t = 1.55 },
    { s =  path .. "fiveseven_mag_rattle2.ogg", t = 56/28 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 62/28 },
    { s = randspin, t = 75/28 },
}

local rst_deft = {
    { s = randspin, t = 4/28 },    
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 7/28 - 0.25 },
    { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 14/28 - 0.25 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 16/28 - 0.3 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 21/28 - 0.5 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 25/28 - 0.5 },
    { s = pouchout, t = 1.55 - 0.8 },
    { s =  path .. "fiveseven_mag_rattle2.ogg", t = 56/28 - 0.8 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 62/28 - 0.8 },
    { s = randspin, t = 75/28 - 0.8 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.3},
    {hide = 0, t = 1.0}
}

local rst_empty = {
    { s = randspin, t = 3/28 },    
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 6/28 },
    { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 9/28 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 12/28 },
    { s = pouchout, t = 0.95 },
    { s =  randspin, t = 35/28 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 41/28 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 46/28 },
    { s = randspin, t = 59/28 },  
    { s =  path .. "fiveseven_slider_in_fast.ogg", t = 68/28 },
    { s = randspin, t = 75/28 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.6},
    {hide = 0, t = 0.9}
    
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
            { s = path .. "fiveseven_slider_in_fast.ogg", t = 16/24 },
            { s = path .. "fiveseven_slider_out_fast.ogg", t = 20/24 },
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
        EventTable = {
            { s = ")arc9_eft_shared/weap_trigger_hammer.wav", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = path .. "fiveseven_slider_out_fast.ogg", t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload_single"] = {
        Source = "reload_single",
        RefillProgress = 0.8,
        PeekProgress = 0.925,
        MinProgress = 0.975,
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
        RefillProgress = 0.825,
        PeekProgress = 0.95,
        MinProgress = 0.975,
        FireASAP = true,
        EventTable = rst_def,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_tactical"] = {
        Source = "reloadt",
        RefillProgress = 0.825,
        PeekProgress = 0.95,
        MinProgress = 0.975,
        FireASAP = true,
        DropMagAt = 0.2,
        EventTable = rst_deft,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = {"reload_empty0", "reload_empty1", "reload_empty2"}, 
        RefillProgress = 0.85,
        PeekProgress = 0.975,
        MinProgress = 0.99,
        FireASAP = true,
        EventTable = rst_empty,
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
            { s = randspin, t = 0.05 },
            { s = slidelock, t = 0.42 },
            { s = slidelock, t = 0.9 },
            { s = slidelock, t = 1.3 },
            { s = slidelockgrab, t = 1.6 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.65 },
            { s =  path .. "fiveseven_slider_out_fast.ogg", t = 2.1 },
            { s = randspin, t = 2.51 },
        },
        EjectAt = 1.6,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0},
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },        
    
    ["jam3"] = {
        Source = "jam_hard",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = slidelockgrab, t = 0.65 },
            { s = slidelockgrab, t = 1 },
            { s = slidelockgrab, t = 1.42 },
            { s = slidelockgrab, t = 1.6 },
            { s =  path .. "fiveseven_slider_out_fast.ogg", t = 2.63 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.75 },
            { s =  path .. "fiveseven_slider_in_fast.ogg", t = 2.89 },
            { s = randspin, t = 3.24 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0},
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.75
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = slidelockgrab, t = 0.59 },
            { s = slidelockgrab, t = 0.92 },
            { s = slidelock, t = 1.2 },
            { s =  path .. "fiveseven_slider_out_slow.ogg", t = 1.29 },
            { s = randspin, t = 1.64 },
            { s = randspin, t = 1.92 },
            { s = randspin, t = 2.3 },
            { s = randspin, t = 2.53 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.59 },
            { s =  path .. "fiveseven_slider_in_fast.ogg", t = 3.05 },
            { s = randspin, t = 3.42 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0},
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.59
    },        
    
    ["jam4"] = {
        Source = "jam_soft",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = slidelockgrab, t = 0.66 },
            { s = slidelockgrab, t = 0.92 },
            { s =  path .. "fiveseven_slider_out_slow.ogg", t = 0.96 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.04 },
            { s =  path .. "fiveseven_slider_in_fast.ogg", t = 1.21 },
            { s = randspin, t = 1.55 },
            { s = randspin, t = 1.73 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0},
            { t = 0.75, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 1.04
    },    
    
    ["jam0"] = {
        Source = {"misfire1", "misfire2", "misfire3"},
        EventTable = {
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.55 },
            { s = slidelockgrab, t = 0.71 },
            { s =  path .. "fiveseven_slider_out_slow.ogg", t = 0.74 },
            { s =  path .. "fiveseven_slider_in_fast.ogg", t = 0.87 },
            { s = randspin, t = 1.17 },
            { s = randspin, t = 1.37 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.4, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "inspect0",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.1 },
            { s = randspin, t = 0.5 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1 },
            { s = randspin, t = 1.5 },
            { s = randspin, t = 2.5 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect2"] = {
        Source = "inspect1",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05 },
            { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 7/24 },
            { s =  path .. "fiveseven_mag_out.ogg", t = 10/24 },
            { s = randspin, t = 16/24 },
            { s =  path .. "fiveseven_mag_rattle2.ogg", t = 24/24 },
            { s = randspin, t = 29/24 },
            -- { s =  path .. "fiveseven_mag_rattle3.ogg", t = 42/24 },
            { s = randspin, t = 57/24 },
            { s =  path .. "fiveseven_mag_rattle.ogg", t = 60/24 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 73/24 },
            { s = randspin, t = 85/24 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect0"] = {
        Source = "inspect2",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05 },
            { s = randspin, t = 10/24 },
            { s = path .. "fiveseven_slider_out_slow.ogg", t = 19/24 },
            { s = randspin, t = 26/24 },
            { s = path .. "fiveseven_slider_in_slow.ogg", t = 35/24 },
            { s = randspin, t = 48/24 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    
    ["inspect3"] = {
        Source = "inspect3",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05 },
            { s = randspin, t = 0.55 },
            { s = path .. "fiveseven_slider_out_slow.ogg", t = 0.87 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 0.97 },
            { s = randspin, t = 1.2 },
            { s = "arc9_eft_shared/weap_round_in_chamber_hand.ogg", t = 1.44 },
            { s = randspin, t = 1.83 },
            { s = randspin, t = 2.3 },
            { s =  "arc9_eft_shared/generic_jam_shell_ remove_medium3.ogg", t = 2.7  },
            { s = randspin, t = 3.2 },
            { s =  path .. "fiveseven_slider_in_fast.ogg", t = 3.54 },
            { s = randspin, t = 3.9 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect_empty0"] = {
        Source = "inspect0_empty",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.1 },
            { s = randspin, t = 0.5 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1 },
            { s = randspin, t = 1.5 },
            { s = randspin, t = 2.5 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect_empty2"] = {
        Source = "inspect1_empty",
        MinProgress = 0.95,
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05 },
            { s =  path .. "fiveseven_mag_releasebutton.ogg", t = 7/24 },
            { s =  path .. "fiveseven_mag_out.ogg", t = 10/24 },
            { s = randspin, t = 16/24 },
            { s =  path .. "fiveseven_mag_rattle2.ogg", t = 24/24 },
            { s = randspin, t = 29/24 },
            -- { s =  path .. "fiveseven_mag_rattle3.ogg", t = 42/24 },
            { s = randspin, t = 57/24 },
            { s =  path .. "fiveseven_mag_rattle.ogg", t = 60/24 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 73/24 },
            { s = randspin, t = 85/24 },
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

SWEP.EFTRequiredAtts = { "HasBarrel", "HasSlide", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_57_rec"]    = { Bodygroups = { {1, 1} } },
    ["eft_57_mag"]    = { Bodygroups = { {2, 1} } },
    ["eft_57_fs"]     = { Bodygroups = { {3, 1} } },
    ["eft_57_rs"]     = { Bodygroups = { {4, 1} } },
    ["eft_57_rs_rmr"] = { Bodygroups = { {4, 2} } },
    ["eft_57_barrel"] = { Bodygroups = { {5, 1} } },
    ["eft_57_barrel_threaded"] = { Bodygroups = { {5, 2} } },
    ["eft_57_silencer"] = { Bodygroups = { {6, 1} } },
    ["eft_57_fde"] = { Skin = 1 },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_57_muzzle",
        Bone = "mod_barrel",
        Pos = Vector(0, 4.1, 0.7),
        Ang = Angle(0, 0, 0),
        RequireElements = {"eft_57_barrel_threaded"},
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_57_barrell",
        Bone = "mod_barrel",
        Pos = Vector(0, 1, 0.5),
        Ang = Angle(0, 0, 0),
        Installed = "eft_57_barrel"
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Category = "eft_57_rec",
        Bone = "weapon_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Installed = "eft_57_rec"
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_57_rs",
        Bone = "weapon_reciever",
        Pos = Vector(0, -1.3, 0.7),
        Ang = Angle(0, 0, 0),
        RequireElements = {"eft_57_rec"},
        Installed = "eft_57_rs"
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_57_fs",
        Bone = "weapon_reciever",
        Pos = Vector(0, 5.45, 0.7),
        Ang = Angle(0, 0, 0),
        RequireElements = {"eft_57_rec"},
        Installed = "eft_57_fs"
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_57",
        Bone = "mod_magazine",
        Integral = "eft_ammo_57_ss190",
        Installed = "eft_ammo_57_ss190",
        Pos = Vector(0, 0, 0.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_57_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Installed = "eft_57_mag",
		Icon_Offset = Vector(0, 0.75, 0.5),
    },    
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Bone = "weapon",
        Category = {"eft_tactical_pistol", "eft_um3"},
        Pos = Vector(0, 23.8, -0.47),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Category = "eft_57_color",
        Bone = "weapon_reciever",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_slot_fn57"},
        Bone = "weapon_reciever",
        Pos = Vector(0, -3, -2),
        Ang = Angle(0, 0, 0),
        -- CosmeticOnly = true,
    },
}