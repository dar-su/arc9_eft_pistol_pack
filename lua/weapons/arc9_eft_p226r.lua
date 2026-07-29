AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_p226r")
SWEP.Description = ARC9:GetPhrase("eft_weapon_p226r_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_sig",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x19",
    ["eft_trivia_act3"]= "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_germ",
    ["eft_trivia_year5"] = "2011 ?"
}


SWEP.StandardPresets = false 

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_p226_2.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 6, -5), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 2.0),
    Ang = Angle(0, 0.07, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.5, -.45)
SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)
SWEP.CustomizePos = Vector(21.1, 40, 4)
SWEP.CustomizeSnapshotFOV = 35
SWEP.CustomizeRotateAnchor = Vector(21.1, -4.28, -5.23)
SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)

SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.HoldTypeHolstered = "normal"

if GetConVar("arc9_eft_nontpik_mode"):GetBool() then -- pistols
    SWEP.HoldType = "revolver"
    SWEP.HoldTypeSprint = "normal"
    SWEP.HoldTypeSights = "revolver"
    SWEP.HoldTypeCustomize = "passive"
    
    SWEP.WorldModelOffset = { -- some bitches turn on nontpik mode while keeping tpik on
        Pos = Vector(-16.25, 5.5, -4),
        Ang = Angle(-7, 0, 180),
        TPIKPos = Vector(-21, 6, -2), -- rpg
        TPIKAng = Angle(-11.5, 0, 180),
        Scale = 1,

        TPIKHolsterOffset = Vector(15, -2, 0),

        TPIKPosSightOffset = Vector(4, -6, -1),
    }
end

-- this thing WILL one hand sprint always
SWEP.OneHandedSprint = true
SWEP.SprintAng = Angle(3, 33, -12)
SWEP.SprintPos = Vector(3, -7.1, -13)
SWEP.HoldTypeSprint = "normal"

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 9.97 * ARC9.MOAToAcc
SWEP.RPM = 450
SWEP.EFTErgo = 80
SWEP.EFTWeight = 0.231
SWEP.BarrelLength = 16
SWEP.Ammo = "pistol"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 5 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 1.25   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 1.25   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 0.75 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 250  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 9 -- the less this is the more wobbly gun moves
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
SWEP.MalfunctionMeanShotsToFail = 700 * 1.5
SWEP.MalfunctionMeanShotsToFailMultHot = -1
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 2

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.5
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/p226/"
local pathgenericpistol = ")weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "p226_fire_close.ogg", path .. "p226_fire_close2.ogg" }
SWEP.ShootSoundIndoor = { path .. "pm_indoor_close1.wav", path .. "pm_indoor_close2.wav" }
SWEP.DistantShootSound = { path .. "p226_fire_distant.ogg", path .. "p226_fire_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "pm_indoor_distant1.wav", path .. "pm_indoor_distant2.wav" }

SWEP.ShootSoundSilenced = path .. "p226_fire_silenced_close.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "p226_fire_silenced_indoor_close.wav"
SWEP.DistantShootSoundSilenced = path .. "p226_fire_silenced_distant.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "p226_fire_silenced_indoor_distant.wav"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_p226_15.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)
SWEP.ReloadHideBonesFirstPerson = true

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",
    [6] = "patron_in_mag5",
    [10] = "patron_in_mag9",
    [12] = "patron_in_mag11",
    [16] = "patron_in_mag15",
    [20] = "patron_in_mag19"
}

SWEP.SuppressEmptySuffix = true
SWEP.EFT_HasTacReloads = true 

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["magdef"] then ending = 0 
    elseif elements["magext"] then ending = 1 
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
            
            if SERVER then
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
    elseif anim == "reload" then
        if swep.EFT_StartedTacReload then
            if SERVER then timer.Simple(0.3, function() if IsValid(swep) then swep:SetClip1(1) end end) end
            return "reload_tactical" .. ending
        end
        return anim .. (empty and "_empty" or "") .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 0, 4.99))

        if SERVER then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end

    if anim == "ready" then
        if !elements["eft_rs_p226_rmr"] and !elements["eft_rs_p226_mount"] then
            return "ready2"
        end
    end

    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
end


SWEP.Hook_TranslateSource = function(swep, anim)
    if anim == "checkchamber0" then
        local elements = swep:GetElements()

        local source = {
            "checkchamber0",
            "checkchamber1",
            "checkchamber2",
            "checkchamber3",
        }

        if elements["eft_mount_um3"] or elements["eft_mount_p226_bridge"] then
            table.RemoveByValue(source, "checkchamber1")
            table.RemoveByValue(source, "checkchamber2")
        end

        if elements["eft_rs_p226_rmr"] or elements["eft_rs_p226_mount"] then
            table.RemoveByValue(source, "checkchamber3")
        end

        return source[math.Round(util.SharedRandom("ARC9_animsource", 1, #source, CurTime()))]
    end
end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag5",
        "patron_in_mag9",
        "patron_in_mag11",
        "patron_in_mag15",
        "patron_in_mag19",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s = randspin, t = 0.05 },
    { s = randspin, t = 0.4 },
    { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.3 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 0.3},
    { s = randspin, t = 1.53 },
    { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.5  },
    { s = randspin, t = 2.4 },
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.25 },
    { s = randspin, t = 2.5 },
}

local rst_def = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.2 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.3 },
    { s = pouchin, t = 0.7 },
    { s = pouchout, t = 1.0 },
    -- { s = randspin, t = 1.1 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.5 },
    { s = randspin, t = 1.8 },
}
local rst_def2 = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.2 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.3 },
    { s = pouchin, t = 0.7 },
    { s = pouchout, t = 1.0+0.2 },
    -- { s = randspin, t = 1.1 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.5+0.3 },
    { s = randspin, t = 1.8+0.3 },
}

local rst_tac = {
    { s = randspin, t = 0.1 - 4/27 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.1 - 4/27 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.2 - 4/27 },
    { s =  randspin, t = 0.53 - 4/27 },
    { s = pouchout, t = 0.7 - 4/27 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.3 - 4/27 },
    { s = randspin, t = 1.7 - 4/27 }, 
    {hide = 0, t = 0},
    {hide = 1, t = 0.3},
    {hide = 0, t = 0.8}
}
local rst_tac2 = {
    { s = randspin, t = 0.1 - 4/27 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.1 - 4/27 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.2 - 4/27 },
    { s =  randspin, t = 0.53 - 4/27 },
    { s = pouchout, t = 0.7 - 4/27+0.2 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.3 - 4/27+0.25 },
    { s = randspin, t = 1.7 - 4/27+0.25 }, 
    {hide = 0, t = 0},
    {hide = 1, t = 0.3},
    {hide = 0, t = 0.8}
}

local rst_empty = {
    { s = randspin, t = 0.1 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.1 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.2 },
    { s =  randspin, t = 0.53 },
    { s = pouchout, t = 0.7 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.3 },
    { s = randspin, t = 1.7 },  
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.1 },
    { s = randspin, t = 2.95 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.4},
    {hide = 0, t = 1.0}
}
local rst_empty2 = {
    { s = randspin, t = 0.1 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.1 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.2 },
    { s =  randspin, t = 0.53 },
    { s = pouchout, t = 0.7+0.2 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.3+0.25 },
    { s = randspin, t = 1.7+0.25 },  
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.1+0.25 },
    { s = randspin, t = 2.95+0.25 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.4},
    {hide = 0, t = 1.0}
}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.15},
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.3 },
    { s = randspin, t = 0.48 },
    { s = randspin, t = 0.98 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 2.4 },
    { s = randspin, t = 2.6 },
}
local rst_magcheck_empty = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.1},
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.2 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.35 },
    { s = randspin, t = 1.4 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sights"] = {
        Source = "idle",
    },
    ["idle_sights_empty"] = {
        Source = "idle_empty",
    },

    ["ready"] = {
        Source = {"ready0", "ready1"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.32 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 0.53 },
        },
    },
    ["ready2"] = {
        Source = {"ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.32 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 0.53 },
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
            { s = pathgenericpistol .. "pm_trigger_hammer.wav", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = pathgenericpistol .. "pm_catch_slider.ogg", t = 0, v = 0.5 },
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
        Source = "reload0",
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_def2
    },
    ["reload_tactical0"] = {
        Source = {"reload0t_0", "reload0t_1", "reload0t_2"},
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_tac,

        DropMagAt = 0.3,
    },
    ["reload_tactical1"] = {
        Source = {"reload1t_0", "reload1t_1", "reload1t_2"},
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_tac2,

        DropMagAt = 0.3,
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1", "reload_empty0_2"}, 
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },
    ["reload_empty1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1", "reload_empty1_2"}, 
        MinProgress = 0.9,
        -- Mult = 0.85,
        FireASAP = true,
        EventTable = rst_empty2
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



    
    ["jam0"] = {
        Source = "jam_misfire",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.91 },
            { s = randspin, t = 1.24 },

            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 1.7 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.77 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 1.84 },
            { s = randspin, t = 2 },
        },
        EjectAt = 1.79
    },        
    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.91 },
            { s = randspin, t = 1.24 },

            { s = slidelockgrab, t = 1.65 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.01 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.48 },
            { s = randspin, t = 2.61 },
            { s = ARC9EFT.Shells9mm, t = 3.1 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.91 },
            { s = randspin, t = 1.24 },

            { s = slidelockgrab, t = 1.67 },
            { s = slidelockgrab, t = 2.01 },
            { s = slidelockgrab, t = 2.55 },
            { s = randspin, t = 2.9 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 3.86 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.95 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 4.06 },
            { s = randspin, t = 4.13 },
        },
        EjectAt = 3.95
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.91 },
            { s = randspin, t = 1.24 },

            { s = slidelockgrab, t = 1.65 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.11 },
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 2.15  },
            { s = randspin, t = 2.3 },
            { s = randspin, t = 2.56 },
            { s = randspin, t = 2.8 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.9 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 3.72 },
            { s = randspin, t = 3.9 },
            { s = ARC9EFT.Shells9mm, t = 4.3 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.91 },
            { s = randspin, t = 1.24 },

            { s = slidelockgrab, t = 1.7 },
            { s = slidelockgrab, t = 2.0 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.63 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.71 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 2.8 },
            { s = randspin, t = 2.9 },
        },
        EjectAt = 2.71
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },
    ["inspect1"] = {
        Source = "inspect",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 1.44 },
            { s = randspin, t = 2.76 },
        }
    },

    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 1.44 },
            { s = randspin, t = 2.76 },
        }
    },

    ["inspect_mag_0"] = {
        Source = "magcheck0",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_0"] = {
        Source = "magcheck_empty",
        EventTable = rst_magcheck_empty,
    },
    ["inspect_mag_1"] = {
        Source = "magcheck1",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_1"] = {
        Source = "magcheck_empty",
        EventTable = rst_magcheck_empty,
    },

    ["inspect0"] = {
        -- Source = {"checkchamber0", "checkchamber1", "checkchamber2", "checkchamber3" },
        Source = {"checkchamber0" },
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.27 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 0.9 },
            { s = randspin, t = 1.0 },
        }
    },
    ["inspect_empty0"] = {
        Source = "checkchamber_empty",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.7 },
        }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBarrel", "HasSlide", "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_slide_p226_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_slide_p226_emp"]    = { Bodygroups = { {1, 4} } },
    ["eft_slide_p226_leg"]    = { Bodygroups = { {1, 3} } },
    ["eft_slide_p226_stain"]    = { Bodygroups = { {1, 2} } },
    ["eft_slide_p226_axel"]    = { Bodygroups = { {1, 5} } },

    ["eft_grip_p226_std"]    = { Bodygroups = { {4, 1} } },
    ["eft_grip_p226_axel"]    = { Bodygroups = { {4, 6} } },
    ["eft_grip_p226_emp"]    = { Bodygroups = { {4, 3} } },
    ["eft_grip_p226_hog"]    = { Bodygroups = { {4, 4} } },
    ["eft_grip_p226_fde"]    = { Bodygroups = { {4, 7} } },
    ["eft_grip_p226_stain"]    = { Bodygroups = { {4, 2} } },
    ["eft_grip_p226_g10"]    = { Bodygroups = { {4, 5} } },

    ["eft_barrel_p226_std"]    = { Bodygroups = { {2, 1} } },
    ["eft_barrel_p226_thr"]    = { Bodygroups = { {2, 2} } },
    ["eft_muzzle_p226_std"]    = { Bodygroups = { {3, 1} } },
    ["eft_muzzle_p226_tjs"]    = { Bodygroups = { {3, 2} } },

    ["eft_rs_p226_std"]    = { Bodygroups = { {5, 1} } },
    ["eft_rs_p226_merp"]    = { Bodygroups = { {5, 2} } },
    ["eft_rs_p226_mount"]    = { Bodygroups = { {5, 3} } },
    ["eft_rs_p226_rmr"]    = { Bodygroups = { {5, 4} } },
    ["eft_fs_p226_std"]    = { Bodygroups = { {6, 1} } },
    ["eft_fs_p226_merp"]    = { Bodygroups = { {6, 2} } },

    ["eft_mag_p226_15"]    = { Bodygroups = { {7, 1}, {10, 0} } },
    ["eft_mag_p226_20"]    = { Bodygroups = { {7, 2}, {10, 1} } },

    ["eft_mount_p226_bridge"]    = { Bodygroups = { {8, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_p226_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0.5),
        Ang = Angle(0, 0, 0),
        Installed = "eft_barrel_p226_std",
        -- SubAttachments = {
        --     {
        --         Installed = "eft_muzzle_m9a3_std",
        --     },
        -- }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Category = "eft_p226_slide",
        Bone = "mod_reciever",
        Pos = Vector(0, 2.9, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1.085, 0.185),
        Installed = "eft_slide_p226_std",
        SubAttachments = {
            {
                Installed = "eft_fs_p226_std",
            },
            {
                Installed = "eft_rs_p226_std",
            },
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -3),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_p226_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_p226_15"
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Bone = "weapon",
        Category = {"eft_tactical_pistol", "eft_um3", "eft_p226_tac"},
        Pos = Vector(0, 23.23, -0.48),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Bone = "mod_pistol_grip",
        Category = "eft_p226_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_grip_p226_std"
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_p226"},

        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}