AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_tt")
SWEP.Description = "eft_weapon_tt_desc"

SWEP.Class = "eft_class_weapon_pist"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_tula",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_762x25",
    ["eft_trivia_act3"]= "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_ussr",
    ["eft_trivia_year5"] = "1930"
}

SWEP.StandardPresets = {
    "[Brunner]XQAAAQAAAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD91Mu7gHhrEdLjEVXEIb1Qv/6x/ERrmPfkgHtGVs3aO/ZomanUH9xcN82LH6PqmSi6bXfh/c7ossVGDNve/Pf4uqKeQaptQZPgfiRDU/Wb3Kupa715/aPL5iHvZPFVwuuk5hwnWW4Q4nXfyp4xoqI=",
    "[Golden]XQAAAQD5AAAAAAAAAAA9iIIiM7tuo1AtT00OeFD91Mu7gHhrEdLjEVXEIb1ZX0TWz9Up4g5t23LFQwPmHndDmlmjQ9MN3bTRCRjovJcbJ3q5vc8+LDI/3wTaD2MZxl6wZM3WRDyQUKimbQ/4D9xgQiWLs8ajR2lviDuANrXOxuY95k1ofpBqIaSc"
}

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_tt33.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 8, -5), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1,

    TPIKHolsterOffset = Vector(-1, -2, 0),
}

SWEP.IronSights = {
    Pos = Vector(-4.35, -8, 1.97),
    Ang = Angle(0, 1.00, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.5, -.6)
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
end

-- this thing WILL one hand sprint always
SWEP.OneHandedSprint = true
SWEP.SprintAng = Angle(3, 33, -12)
SWEP.SprintPos = Vector(3, -7.1, -13)
SWEP.HoldTypeSprint = "normal"

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 7.563 * ARC9.MOAToAcc
SWEP.RPM = 450
SWEP.EFTErgo = 70
SWEP.BarrelLength = 18
SWEP.Ammo = "pistol"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.25 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 1.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.72   -- random left/right

SWEP.RecoilAutoControl = 3.3 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 2   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 2   --   when fullautoing
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

SWEP.RecoilKick = 0.5 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -1.2)
SWEP.SubtleVisualRecoil = 0.35
SWEP.SubtleVisualRecoilHipFire = 7
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1

------------------------- |||           Damage            ||| -------------------------

-- pst dmg

SWEP.DamageMax = 50 * 0.5
SWEP.DamageMin = 31.7 * 0.5
SWEP.PhysBulletMuzzleVelocity = 430 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      25 *2.54/100/0.0254
SWEP.PenetrationDelta = 36/100
SWEP.ArmorPiercing =    36/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    50 * 0.5     },

    {   100 /0.0254 * 1, 
    43.67 * 0.5     },

    {   200 /0.0254 * 1, 
    41 * 0.5     },

    {   300 /0.0254 * 1, 
    39 * 0.5     },

    {   400 /0.0254 * 1, 
    37.64 * 0.5     },

    {   500 /0.0254 * 1, 
    36.35 * 0.5     },

    {   600 /0.0254 * 1, 
    35.2 * 0.5     },

    {   700 /0.0254 * 1, 
    34.2 * 0.5     },

    {   800 /0.0254 * 1, 
    33.3 * 0.5     },

    {   900 /0.0254 * 1, 
    32.5 * 0.5     },

    {   1000 /0.0254 * 1, 
    31.7 * 0.5     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 700
SWEP.MalfunctionMeanShotsToFailMultHot = -1
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 2

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.35
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x25tt.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_tt33_gold"] then return ARC9:GetPhrase("eft_weapon_ttgold") end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_tt33_gold"] then return "eft_weapon_ttgold_desc" end
end

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/tt33/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "tt_fire_outdoor_close.ogg", path .. "tt_fire_outdoor_close2.ogg" }
SWEP.ShootSoundIndoor = { path .. "tt_fire_indoor_close.ogg", path .. "tt_fire_indoor_close2.ogg" }
SWEP.DistantShootSound = { path .. "tt_fire_outdoor_distant.ogg", path .. "tt_fire_outdoor_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "tt_fire_indoor_distant.ogg", path .. "tt_fire_indoor_distant2.ogg" }

SWEP.ShootSoundSilenced = path .. "pb_silenced_close1.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "pb_silenced_indoor_close1.ogg"
SWEP.DistantShootSoundSilenced = path .. "pb_silenced_far1.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "pb_silenced_indoor_distant1.ogg"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tt.mdl" -- Set to a string or table to drop this magazine when reloading.
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
}

SWEP.SuppressEmptySuffix = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_tt33_mag_8"] then ending = 0 else nomag = true end

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
    elseif anim == "reload" or anim == "reload_empty" then
        return anim .. ending
    elseif anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    elseif anim == "draw" then
        if elements["eft_tt33_gold"] then return "draw_spin" end
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
    { s =  path .. "pm_mag_out.ogg", t = 0.35 },
    { s =  path .. "pm_mag_pullout.ogg", t = 0.4 },
    { s =  path .. "pm_mag_pullin.ogg", t = 2.45 },
    { s =  path .. "pm_mag_in.ogg", t = 2.8 },
    { s = randspin, t = 3.17 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "pm_slider_in.ogg", t = 0.55 },
            { s =  path .. "pm_slider_out.ogg", t = 0.71 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["draw_spin"] = {
        Source = "draw_spin",
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
            { s = path .. "pm_slider_in.ogg", t = 0.5 },
            { s = randspin, t = 1 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.0},
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.25  },
            -- { s = randspin, t = 2.21 },
            { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 1.95 },
            { s = randspin, t = 2.2 },
        },
        Mult = 1.1
    },

    ["reload0"] = {
        Source = "reload",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.22 }, -- eft devs redarded
            { s =  path .. "pm_mag_out.ogg", t = 0.26 },
            { s =  path .. "pm_mag_pullout.ogg", t = 0.4 },
            { s = pouchin, t = 1.21 },
            { s = pouchout, t = 1.53 },
            { s =  path .. "pm_mag_pullin.ogg", t = 2.1 },
            { s =  path .. "pm_mag_in.ogg", t = 2.4 },
            { s = randspin, t = 2.81 },
        },
        Mult = 1.0
    },

    ["reload_empty0"] = {
        Source = "reload_empty", 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.1 },    
            { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 }, -- eft devs redarded
            { s =  randspin, t = 0.36 },
            { s =  path .. "pm_mag_out.ogg", t = 0.26 },
            { s =  path .. "pm_mag_pullout.ogg", t = 0.4 },
            { s =  randspin, t = 0.71 },
            { s = pouchout, t = 0.94 },
            { s =  path .. "pm_mag_pullin.ogg", t = 1.4 },
            { s =  path .. "pm_mag_in.ogg", t = 1.6 },
            { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.17 },
            { s = randspin, t = 2.24 },
            { s = randspin, t = 2.54 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.55},
            {hide = 0, t = 0.9}
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
            { s = randspin, t = 0.0 },
            { s = randspin, t = 0.58 },
            { s = randspin, t = 1.28 },

            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 2.12  },
            { s = pathgenericpistol .. "kedr_fireselector_up.ogg", t = 2.3 },
            { s = randspin, t = 2.45 },
            { s = ARC9EFT.Shells9mm, t = 2.7 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.0 },
            { s = randspin, t = 0.58 },
            { s = randspin, t = 1.26 },

            { s = slidelockgrab, t = 1.89 },
            { s = slidelockgrab, t = 2.37 },
            { s = randspin, t = 2.76 },
            { s = slidelockgrab, t = 3.47 },
            { s = slidelockgrab, t = 4.05 },
            { s = path .. "pm_slider_in.ogg", t = 4.05 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 4.36 },
            { s =  path .. "pm_slider_out.ogg", t = 4.57 },
            { s = randspin, t = 4.68 },
        },
        EjectAt = 4.36
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.0 },
            { s = randspin, t = 0.58 },
            { s = randspin, t = 1.28 },

            { s = slidelockgrab, t = 1.85 },
            { s = path .. "pm_slider_in.ogg", t = 2.24 },
            { s = randspin, t = 2.56 },
            { s = randspin, t = 3.09 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.08 },
            { s =  path .. "pm_slider_out.ogg", t = 3.44 },
            { s = randspin, t = 3.55 },
            { s = ARC9EFT.Shells9mm, t = 3.65 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.0 },
            { s = randspin, t = 0.58 },
            { s = randspin, t = 1.28 },
            
            { s = slidelockgrab, t = 1.8 },
            { s = slidelockgrab, t = 2.21 },
            { s = path .. "pm_slider_in.ogg", t = 2.56 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.66 },
            { s =  path .. "pm_slider_out.ogg", t = 2.84 },
            { s = randspin, t = 3.03 },
        },
        EjectAt = 2.66
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "inspect",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 1.12 },
            { s = randspin, t = 2.28 },
        }
    },

    ["inspect1_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 1.12 },
            { s = randspin, t = 2.28 },
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
            { s = path .. "pm_slider_in.ogg", t = 0.6 },
            { s =  path .. "pm_slider_out.ogg", t = 1.09 },
            { s = randspin, t = 1.33 },
        }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBarrel", "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_tt33_barrel_116"]    = { Bodygroups = { {1, 1} } },
    ["eft_tt33_barrel_116g"]    = { Bodygroups = { {1, 2} } },
    ["eft_tt33_barrel_121"]    = { Bodygroups = { {1, 3} } },

    ["eft_tt33_asilencer"]    = { Bodygroups = { {2, 2} } },
    ["eft_tt33_dtk"]    = { Bodygroups = { {2, 1} } },
    
    ["eft_tt33_pg_hogue"]    = { Bodygroups = { {3, 5} } },
    ["eft_tt33_pg_razor"]    = { Bodygroups = { {3, 4} } },
    ["eft_tt33_pg_std"]    = { Bodygroups = { {3, 1} } },
    ["eft_tt33_pg_swag"]    = { Bodygroups = { {3, 2} } },
    ["eft_tt33_pg_206"]    = { Bodygroups = { {3, 3} } },

    ["eft_tt33_mag_8"]    = { Bodygroups = { {4, 1} } },

    ["eft_tt33_gold"]    = { Bodygroups = { {0, 1} } },
}


SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Bone = "mod_barrel",
        Category = {"eft_tt33_barrel"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_tt33_barrel_116"
    },
    {
        PrintName = "Muzzle",
        Bone = "mod_barrel",
        Category = {"eft_tt33_muzz"},
        Pos = Vector(0, 4, 0.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Pistol grip",
        Bone = "mod_pistol_grip",
        Category = {"eft_tt33_pg"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_tt33_pg_std"
    },
    {
        PrintName = "Tactical",
        Bone = "mod_tactical",
        Category = {"eft_tactical_tt33"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_tt33_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
        Installed = "eft_tt33_mag_8"
    },   
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_762x25tt",
        Integral = "eft_ammo_762x25tt_pst",
        Installed = "eft_ammo_762x25tt_pst",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2.5),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_tt33"},
        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}