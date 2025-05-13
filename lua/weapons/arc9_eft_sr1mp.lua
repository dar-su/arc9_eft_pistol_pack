AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_gyurza")
SWEP.Description = "eft_weapon_gyurza_desc"

SWEP.Class = "eft_class_weapon_pist"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_tsniitochmash",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x21",
    ["eft_trivia_act3"]= "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_ru",
    ["eft_trivia_year5"] = "2012"
}

SWEP.StandardPresets = {
    "[Tactical 1]XQAAAQDlAAAAAAAAAAA9iIIiM7tuo1AtT00OeFD3X0marJ1ZRQS4GC2Y+o3rtKYuQoE0eE2QXXCoVIYUbjA70tpp4u5T5kUHV+2vt0DZXJ+5s2hwuqPhvof1oCGvj6kr/RcOfjJatuuZEdGUxjleM5R/8vWJrkPpJQiSw6Mpbk0m",
    "[Tactical 2]XQAAAQADAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD3X0marJ1ZRQS4GC2fQM3rtKYuQoE0eE2QXXCoVIYUbjA70tpp4u5T5kUHV+2vt0DZXJOu4xFrIzgbQWmssQjYaLh9VEWv4xSo2op536w/4kIAHugDPK8MCpEWDejCDknIPG+vnqo="
}

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_sr1mp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 8, -5), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1,

    TPIKHolsterOffset = Vector(-2, -2, 0),
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 1.9),
    Ang = Angle(0, 0.08, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.5, -.6)
SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)
SWEP.CustomizePos = Vector(21.7, 25, 4.5)
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

SWEP.Spread = 7.563 * ARC9.MOAToAcc
SWEP.RPM = 450
SWEP.EFTErgo = 82
SWEP.BarrelLength = 16
SWEP.Ammo = "pistol"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.25 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 1.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 3.25 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 1.5   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 1.5   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 0.75 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 5 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
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

-- default pst ghz

SWEP.DamageMax = 49 * 0.5
SWEP.DamageMin = 28.75 * 0.5
SWEP.PhysBulletMuzzleVelocity = 410 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      35 *2.54/100/0.0254
SWEP.PenetrationDelta = 46/100
SWEP.ArmorPiercing =    46/100
SWEP.RicochetChance =   40/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    49 * 0.5     },

    {   100 /0.0254 * 1, 
    41.75 * 0.5     },

    {   200 /0.0254 * 1, 
    38.8 * 0.5     },

    {   300 /0.0254 * 1, 
    36.6 * 0.5     },

    {   400 /0.0254 * 1, 
    35 * 0.5     },

    {   500 /0.0254 * 1, 
    33.3 * 0.5     },

    {   600 /0.0254 * 1, 
    32 * 0.5     },

    {   700 /0.0254 * 1, 
    30.1 * 0.5     },

    {   800 /0.0254 * 1, 
    30 * 0.5     },

    {   900 /0.0254 * 1, 
    29.25 * 0.5     },

    {   1000 /0.0254 * 1, 
    28.75 * 0.5     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 666
SWEP.MalfunctionMeanShotsToFailMultHot = -2
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 2

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.3
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x21.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/sr1mp/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "gyrza_close1.ogg", path .. "gyrza_close2.ogg" }
SWEP.ShootSoundIndoor = { path .. "gyrza_indoor_close1.ogg", path .. "gyrza_indoor_close2.ogg" }
SWEP.DistantShootSound = { path .. "gyrza_distant1.ogg", path .. "gyrza_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "gyrza_indoor_distant1.ogg", path .. "gyrza_indoor_distant2.ogg" }

SWEP.ShootSoundSilenced = { path .. "gyrza_silenced_close1.ogg", path .. "gyrza_silenced_close2.ogg" }
SWEP.ShootSoundSilencedIndoor = { path .. "gyrza_silenced_indoor_close1.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "gyrza_distant1.ogg", path .. "gyrza_distant2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "gyrza_indoor_silenced_distant1.ogg" }

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr1mp.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.55*0.85
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
    [6] = "patron_in_mag4",
    [7] = "patron_in_mag5",
    [8] = "patron_in_mag6",
    [9] = "patron_in_mag7",
    [10] = "patron_in_mag8",
    [11] = "patron_in_mag9",
    [12] = "patron_in_mag10",
    [13] = "patron_in_mag11",
    [14] = "patron_in_mag12",
    [15] = "patron_in_mag13",
    [16] = "patron_in_mag14",
    [17] = "patron_in_mag15",
    [18] = "patron_in_mag16",
    [19] = "patron_in_mag17"
}

SWEP.SuppressEmptySuffix = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["magdef"] then ending = 0 else nomag = true end

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
        if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
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
        return anim .. (empty and "_empty" or "") .. ending
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
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5",
        "patron_in_mag6",
        "patron_in_mag7",
        "patron_in_mag8",
        "patron_in_mag9",
        "patron_in_mag10",
        "patron_in_mag11",
        "patron_in_mag12",
        "patron_in_mag13",
        "patron_in_mag14",
        "patron_in_mag15",
        "patron_in_mag16",
        "patron_in_mag17",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.32},
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.38 },
    { s =  path .. "fiveseven_mag_rattle2.ogg", t = 1.83 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 2.78 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 2.99 },
    { s = randspin, t = 3.17 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "gyrza_slide_out.ogg", t = 0.55 },
            { s = path .. "gyrza_slide_in.ogg", t = 0.71 },
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
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.4 },
            { s = path .. "gyrza_slide_out.ogg", t = 0.5 },
            { s = randspin, t = 1 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.25},
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.79  },
            { s = randspin, t = 2.21 },
            { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.66 },
            { s = randspin, t = 3.05 },
        }
    },

    ["reload0"] = {
        Source = "reload",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.22 }, -- eft devs redarded
            { s =  path .. "fiveseven_mag_out.ogg", t = 0.33 },
            { s = pouchin, t = 1.21 },
            { s = pouchout, t = 1.53 },
            { s =  path .. "fiveseven_mag_rattle3.ogg", t = 1.94 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 2.16 },
            { s = randspin, t = 2.81 },
        }
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0", "reload_empty1", "reload_empty2"}, 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.1 },    
            { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 }, -- eft devs redarded
            { s =  randspin, t = 0.36 },
            { s =  path .. "fiveseven_mag_out.ogg", t = 0.38 },
            { s =  randspin, t = 0.71 },
            { s = pouchout, t = 0.94 },
            { s =  path .. "fiveseven_mag_rattle3.ogg", t = 1.52 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 1.93 },
            { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.17 },
            { s = randspin, t = 2.24 },
            { s = randspin, t = 2.54 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.55},
            {hide = 0, t = 1.15}
        }
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
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },

            { s = slidelockgrab, t = 1.65 },
            { s = randspin, t = 1.92 },
            { s = randspin, t = 2.41 },
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 2.44  },
            { s = path .. "gyrza_slide_in_check.ogg", t = 2.79 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },

            { s = slidelockgrab, t = 1.5 },
            { s = slidelockgrab, t = 1.75 },
            { s = slidelockgrab, t = 2.02 },
            { s = slidelockgrab, t = 2.45 },
            { s = randspin, t = 2.78 },
            { s =  path .. "gyrza_slide_in.ogg", t = 3.63 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.72 },
            { s =  path .. "gyrza_slide_out.ogg", t = 3.87 },
            { s = randspin, t = 4.23 },
        },
        EjectAt = 3.72
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },

            { s = slidelockgrab, t = 1.61 },
            { s =  path .. "gyrza_slide_in.ogg", t = 2.14 },
            { s = randspin, t = 2.42 },
            { s = randspin, t = 2.85 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.88 },
            { s = randspin, t = 3.23 },
            { s =  path .. "gyrza_slide_out.ogg", t = 3.51 },
            { s = randspin, t = 3.85 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },
            
            { s = slidelockgrab, t = 1.6 },
            { s =  path .. "gyrza_slide_in.ogg", t = 2.08 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.2 },
            { s =  path .. "gyrza_slide_out.ogg", t = 2.33 },
            { s = randspin, t = 2.61 },
        },
        EjectAt = 2.2
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
            { s = randspin, t = 0.11 },
            { s = randspin, t = 1.57 },
            { s = randspin, t = 2.87 },
        }
    },

    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 1.57 },
            { s = randspin, t = 2.87 },
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
            { s = path .. "gyrza_slide_out_check.ogg", t = 0.55 },
            { s = path .. "gyrza_slide_in_check.ogg", t = 1.13 },
            { s = randspin, t = 1.4 },
        }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_mag_sr1mp_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_mount_sr1mp_1x"]    = { Bodygroups = { {2, 1} } },
    ["eft_mount_sr1mp_4x"]    = { Bodygroups = { {2, 2} } },
    ["eft_mount_sr1mp_sil"]    = { Bodygroups = { {3, 1} } },
    ["eft_silencer_sr1mp"]    = { Bodygroups = { {4, 1} } },

    ["eft_ammo_9x21_bt"] = { Skin = 3 },
    ["eft_ammo_9x21_ps"] = { Skin = 0 },
    ["eft_ammo_9x21_p"] = { Skin = 1 },
    ["eft_ammo_9x21_pe"] = { Skin = 2 },
}

SWEP.Attachments = { 
    {
        PrintName = "Tactical",
        Bone = "weapon",
        Category = {"eft_mount_sr1mp"},
        Pos = Vector(0, 23.3, -0.3),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_sr1mp_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_sr1mp_std"
    },   
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x21",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x21_p",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -3),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_sr1mp"},

        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}