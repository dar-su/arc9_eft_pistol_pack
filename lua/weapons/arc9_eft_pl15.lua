AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_pl15")
SWEP.Description = "eft_weapon_pl15_desc"

SWEP.Class = "eft_class_weapon_pist"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_kalash",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x19",
    ["eft_trivia_act3"]= "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_rus",
    ["eft_trivia_year5"] = "2016-2017"
}

SWEP.StandardPresets = false 

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_pl15.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 6, -5), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 2.24),
    Ang = Angle(0, 0.0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.5, -.45)
SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)
SWEP.CustomizePos = Vector(21.0, 25, 4)
SWEP.CustomizeSnapshotFOV = 70
SWEP.CustomizeRotateAnchor = Vector(21.6, -4.28, -5.23)

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
SWEP.EFTErgo = 93
SWEP.BarrelLength = 18
SWEP.Ammo = "pistol"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 5.5 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 1.25   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 1.25   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 0.75 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 350  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 9.5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 2 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.01 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.01 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.25 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -1.2)
SWEP.SubtleVisualRecoil = 0.35
SWEP.SubtleVisualRecoilHipFire = 7
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1

------------------------- |||           Damage            ||| -------------------------

-- default pst ghz

SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 700
SWEP.MalfunctionMeanShotsToFailMultHot = -1
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 0.75

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.8
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/pl15/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = path .. "pl_fire_close1.ogg"
SWEP.ShootSoundIndoor = path .. "pl_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "pl_fire_distant1.ogg"
SWEP.DistantShootSoundIndoor = path .. "pl_fire_indoor_distant.ogg"

SWEP.ShootSoundSilenced = path .. "pl_fire_silenced_close1.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "pl_fire_silenced_indoor_close.ogg"
SWEP.DistantShootSoundSilenced = path .. "pl_fire_silenced_distant1.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "pl_fire_silenced_indoor_distant.ogg"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pl15.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.55
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
}


SWEP.SuppressEmptySuffix = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["magdef"] then ending = 0 
    else nomag = true end

    local empty = swep:Clip1() == 0 and !nomag
    
    -- 0 looking
    -- 1 slide check  (!empty)
    -- 2 mag checking  (!nomag)
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        -- if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(false ) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then rand = 0 end
            ending = rand
        end

        return anim .. ending
    elseif anim == "reload" or anim == "reload_empty" then
        return anim .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end

    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}

local rst_single = {
    { s = randspin, t = 0.05 },
    { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.46 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 0.95},
    { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.64  },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 2.25 },
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.4 },
    { s = randspin, t = 2.67 },
}

local rst_def = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.28 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.37 },
    { s = pouchin, t = 1.1 },
    { s = pouchout, t = 1.4 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.95-0.2 },
    { s = randspin, t = 2.27 },
}

local rst_empty = {
    { s = randspin, t = 0.1 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.21 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.26 },
    { s =  randspin, t = 0.52 },
    { s =  randspin, t = 0.93 },
    { s = pouchout, t = 0.8 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.41-0.2 },
    { s = randspin, t = 1.65 },  
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 1.94 },
    { s = randspin, t = 2.22 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.55},
    {hide = 0, t = 1.0}
}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.29},
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.36 },
    { s = randspin, t = 1.11 },
    { s = randspin, t = 1.91 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 2.36-0.2 },
    { s = randspin, t = 2.7 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = "ready0",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.51 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 0.66 },
            { s = randspin, t = 1 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = pathgenericpistol .. "pm_trigger_hammer.ogg", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = pathgenericpistol .. "pm_catch_slider.ogg", t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_single
    },

    ["reload0"] = {
        Source = "reload",
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },

    ["reload_empty0"] = {
        Source = "reload_empty",
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.12 },
            { s = randspin, t = 0.6 },

            { s = slidelockgrab, t = 1.16 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.2 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 1.34 },
            { s =  path .. "generic_jam_slidelock_hit2.ogg", t = 1.61 },
            { s = randspin, t = 1.92 },
            { s = ARC9EFT.Shells9mm, t = 2.2 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.12 },
            { s = randspin, t = 0.6 },

            { s = slidelockgrab, t = 1.05 },
            { s = slidelockgrab, t = 1.24 },
            { s = slidelockgrab, t = 1.56 },
            { s = randspin, t = 1.83 },
            { s =  path .. "generic_jam_slidelock_hit2.ogg", t = 2.73 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 3.28 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.4 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 3.49 },
            { s = randspin, t = 3.69 },
        },
        EjectAt = 3.4
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.12 },
            { s = randspin, t = 0.6 },

            { s = slidelockgrab, t = 1.18 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 1.4 },
            { s = randspin, t = 1.74 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.79 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 1.97 },
            { s = randspin, t = 2.28 },
            { s = ARC9EFT.Shells9mm, t = 2.5 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.12 },
            { s = randspin, t = 0.6 },
            
            { s = slidelockgrab, t = 1.17 },
            { s = slidelockgrab, t = 1.37    },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 1.7 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.75 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 1.87 },
            { s = randspin, t = 2.05 },
        },
        EjectAt = 1.75
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },
    ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle_empty",
    },

    ["inspect1"] = {
        Source = "inspect",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 1.43 },
            { s = randspin, t = 2.68 },
        }
    },

    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 1.43 },
            { s = randspin, t = 2.68 },
        }
    },

    ["inspect_mag_0"] = {
        Source = "magcheck",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_0"] = {
        Source = "magcheck_empty",
        EventTable = rst_magcheck,
    },
    ["inspect0"] = {
        Source = "checkchamber",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.45 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 1.04 },
            { s = randspin, t = 1.42 },
        }
    },
    ["inspect_empty0"] = {
        Source = "checkchamber_empty",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.55 },
        }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBarrel", "HasSlide", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_barrel_pl15_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_barrel_pl15_thr"]    = { Bodygroups = { {1, 2} } },

    ["eft_slide_pl15_std"]    = { Bodygroups = { {2, 1} } },
    ["eft_mag_pl15_std"]    = { Bodygroups = { {6, 1} } },
    ["eft_sil_pl15"]    = { Bodygroups = { {5, 1} } },

    ["eft_fs_pl15_std"]    = { Bodygroups = { {3, 1} } },
    ["eft_fs_pl15_long"]    = { Bodygroups = { {3, 2} } },
    ["eft_rs_pl15_std"]    = { Bodygroups = { {4, 1} } },
    ["eft_rs_pl15_long"]    = { Bodygroups = { {4, 2} } },
}


SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_pl15_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0.0),
        Ang = Angle(0, 0, 0),
        Installed = "eft_barrel_pl15_std",
    },
    {
        PrintName = "Reciever",
        Category = "eft_pl15_slide",
        Bone = "mod_reciever",
        Pos = Vector(0, 1, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1.085, 0.185),
        Installed = "eft_slide_pl15_std",
        SubAttachments = {
            {
                Installed = "eft_fs_pl15_std",
            },
            {
                Installed = "eft_rs_pl15_std",
            },
        }
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -3),
    },
    {
        PrintName = "Magazine",
        Category = "eft_pl15_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_pl15_std"
    },    
    {
        PrintName = "Tactical",
        Bone = "mod_tactical",
        Category = {"eft_tactical_pistol", "eft_um3"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_pl15"},
        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}