AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_deaglel6")
SWEP.Description = "eft_weapon_deaglel6_desc"

SWEP.Class = "eft_class_weapon_pist"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_magnumresearch",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_50ae",
    ["eft_trivia_act3"]= "eft_trivia_act_gas",
    ["eft_trivia_country4"] = "eft_trivia_country_usa",
    ["eft_trivia_year5"] = "2013 ?"
}

SWEP.StandardPresets = false

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_deagle.mdl"
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 8, -5), -- rpg
    TPIKAng = Angle(-10, 0, 180),
    Scale = 1,

    TPIKHolsterOffset = Vector(-2, -3, 1),
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 1.67),
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
SWEP.CustomizePos = Vector(22.2, 40, 4)
SWEP.CustomizeSnapshotFOV = 35
SWEP.CustomizeRotateAnchor = Vector(22.2, -4.28, -5.23)
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
SWEP.EFTErgo = 64
SWEP.BarrelLength = 25
SWEP.Ammo = "357"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.25 -- general multiplier of main recoil

SWEP.RecoilUp   = 5   -- up recoil
SWEP.RecoilSide = 1.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 1.5 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 2 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 8.5   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 8.5   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 0.75 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 5 -- same but in sights only

SWEP.VisualRecoilDampingConst = 45  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 4 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 1.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.01 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = 0.01 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 3.1 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -4.2)
SWEP.SubtleVisualRecoil = 1.4
SWEP.SubtleVisualRecoilHipFire = 2
SWEP.SubtleVisualRecoilDirection = 8
SWEP.SubtleVisualRecoilSpeed = 0.25

------------------------- |||           Damage            ||| -------------------------

-- default pst ghz

SWEP.DamageMax = 85/2
SWEP.DamageMin = 85/2
SWEP.PhysBulletMuzzleVelocity = 440 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      40 *2.54/100/0.0254
SWEP.PenetrationDelta = 50/100
SWEP.ArmorPiercing =    50/100
SWEP.RicochetChance =   5/100


------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 700
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.MalfunctionMeanShotsToFailMultHot = -1
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 0.75

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.8
SWEP.MuzzleParticle = "muzzleflash_pistol_deagle" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/50ae.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellSounds = ARC9EFT.ShellsHeavy

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_slide_deagle_l6_wts"] then return ARC9:GetPhrase("eft_weapon_deaglel6wts_alt") end
    if elements["eft_slide_deagle_l5"] then return ARC9:GetPhrase("eft_weapon_deaglel550ae_alt") end
    if elements["eft_slide_deagle_l5_357"] then return ARC9:GetPhrase("eft_weapon_deaglel5357_alt") end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_slide_deagle_l6_wts"] then return "eft_weapon_deaglel6wts_desc" end
    if elements["eft_slide_deagle_l5"] then return "eft_weapon_deaglel550ae_desc" end
end

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/deagle/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = path .. "deagle_outdoor_close.ogg"
SWEP.ShootSoundIndoor = path .. "deagle_indoor_close.ogg"
SWEP.DistantShootSound = path .. "deagle_outdoor_distant.ogg"
SWEP.DistantShootSoundIndoor = path .. "deagle_indoor_distant.ogg"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_deagle_7.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.37
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
    [5] = "patron_in_mag4",
    [6] = "patron_in_mag5",
    [7] = "patron_in_mag6",
    [8] = "patron_in_mag7",
    [9] = "patron_in_mag8",
    [10] = "patron_in_mag9",
}

SWEP.SuppressEmptySuffix = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end
    
    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["hasmag"] then ending = 0 
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
                net.WriteBool(true ) -- accurate or not based on mag type
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
        if anim == "reload" and empty then anim = "reload_empty" end
        return anim .. ending
    end

    if anim == "draw" or anim == "draw_empty" then
        local rand2 = math.Truncate(util.SharedRandom("hi", 0, 1.99)) -- 0, 1
        if rand2 == 1 then
            return anim .. "_speen"
        end
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
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5",
        "patron_in_mag6",
        "patron_in_mag7",
        "patron_in_mag8",
        "patron_in_mag9",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s = randspin, t = 0.05 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 0.1},
    { s = path .. "deagle_chamber_out.ogg", t = 0.95 },
    { s =  path .. "generic_jam_shell_ remove_medium3.ogg", t = 2.08  },
    { s =  path .. "deagle_catch.ogg", t = 2.87 },
    { s = randspin, t = 3.42 },
}

local rst_def = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.3 }, -- eft devs redarded
    { s = path .. "deagle_mag_out.ogg", t = 0.41 },
    { s = pouchin, t = 1.2 },
    { s = pouchout, t = 1.5 },
    { s = path .. "deagle_mag_in.ogg", t = 1.95 },
    { s = randspin, t = 2.66 },
}

local rst_empty = {
    { s = randspin, t = 0.03 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.15 }, -- eft devs redarded
    { s = path .. "deagle_mag_out_all.ogg", t = 0.19 },
    { s =  randspin, t = 0.5 },
    { s = pouchout, t = 0.73 },
    { s = path .. "deagle_mag_in.ogg", t = 1.38 },
    { s = randspin, t = 1.65 },  
    { s = path .. "deagle_catch.ogg", t = 2.46 },
    { s = randspin, t = 2.74 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.37},
    {hide = 0, t = 1.0}
}

local rst_magcheck = {
    { s = randspin, t = 0.05 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.24},
    { s = path .. "deagle_mag_out.ogg", t = 0.28 },
    { s = randspin, t = 0.7 },
    { s = path .. "deagle_mag_in.ogg", t = 2.74 },
    { s = randspin, t = 3.05 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        -- Time = 1000, -- REMOVE AFTER DONE PLEEEASE
    },

    ["ready"] = {
        Source = "ready0",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.0 },
            { s = path .. "deagle_chamber_out.ogg", t = 0.46 },
            { s = path .. "deagle_chamber_in.ogg", t = 0.62 },
            { s = randspin, t = 0.85 },
        },
    },

    ["draw"] = {
        Source = "draw",
        MinProgress = 0.9,
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.0 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        MinProgress = 0.9,
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.0 },
        }
    },
    ["draw_speen"] = {
        Source = "draw_speen",
        MinProgress = 0.9,
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.0 },
            { s = path .. "deagle_spin.ogg", t = 0.00 },
        }
    },
    ["draw_empty_speen"] = {
        Source = "draw_speen_empty",
        MinProgress = 0.9,
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.0 },
            { s = path .. "deagle_spin.ogg", t = 0.05 },
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
            { s = pathgenericpistol .. "pm_trigger_hammer.ogg", t = 0 },
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
        Source = {"reload_empty0", "reload_empty1", "reload_empty2"},
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
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.75 },

            { s = path .. "deagle_rustle_4.ogg", t = 1.05 },

            { s = slidelockgrab, t = 1.49 },
            -- { s = path .. "generic_jam_shell_ remove_medium2.ogg", t = 2 },
            -- { s = path .. "deagle_chamber_check_in.ogg", t = 2.11 },
            { s = path .. "pistol_jam_shell_remove3.ogg", t = 2.01 },
            { s = randspin, t = 2.33 },
            { s = ARC9EFT.Shells9mm, t = 2.8 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.75 },

            { s = randspin, t = 1.1 },

            { s = slidelockgrab, t = 1.6 },
            { s = slidelockgrab, t = 2.03 },
            { s = slidelockgrab, t = 2.65 },
            { s = randspin, t = 3.28 },
            { s = randspin, t = 3.85 },
            { s =  path .. "pistol_jam_slidelock_grab2.ogg", t = 4.51 },
            { s =  path .. "deagle_chamber_out.ogg", t = 4.66 },
            { s =  path .. "deagle_jam_feed_3.ogg", t = 4.71 },
            { s =  path .. "deagle_chamber_in.ogg", t = 4.93 },
            { s = randspin, t = 5.06 },
        },
        EjectAt = 4.79
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.75 },

            { s = randspin, t = 1.1 },

            { s =  path .. "pistol_jam_slidelock_grab2.ogg", t = 1.57 },
            { s =  path .. "deagle_jam_feed_1.ogg", t = 1.69 },
            { s =  path .. "deagle_jam_feed_2.ogg", t = 2.25 },
            { s =  path .. "deagle_jam_feed_3.ogg", t = 2.63 },
            { s =  path .. "deagle_chamber_in.ogg", t = 2.96 },
            { s = randspin, t = 3.29 },
            { s = ARC9EFT.Shells9mm, t = 3.3 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.75 },

            { s = randspin, t = 1.08 },

            { s =  path .. "pistol_jam_slidelock_grab2.ogg", t = 1.41 },
            { s = slidelockgrab, t = 1.62    },
            { s = slidelockgrab, t = 2.02    },
            { s = slidelockgrab, t = 2.82    },
            -- { s =  path .. "deagle_jam_feed_3.ogg", t = 2.82 },
            { s =  path .. "deagle_chamber_check_out.ogg", t = 2.86 },
            { s =  path .. "generic_jam_shell_ remove_medium2.ogg", t = 2.96 },
            { s =  path .. "deagle_chamber_in.ogg", t = 3.08 },
            { s = randspin, t = 3.35 },
        },
        EjectAt = 2.97
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
            { s = randspin, t = 0.05 },
            { s = path .. "deagle_rustle_1.ogg", t = 1.42 },
            { s = randspin, t = 2.55 },
        }
    },

    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = path .. "deagle_rustle_1.ogg", t = 1.42 },
            { s = randspin, t = 2.55 },
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
            { s = path .. "deagle_chamber_check_out.ogg", t = 0.62 },
            { s = path .. "deagle_chamber_check_in.ogg", t = 1.11 },
            { s = randspin, t = 1.47 },
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
    ["eft_barrel_deagle_l5_50ae"]    = { Bodygroups = { {2, 3} } },
    ["eft_barrel_deagle_l5_357"]    = { Bodygroups = { {2, 4} } },
    ["eft_barrel_deagle_l6_50ae"]    = { Bodygroups = { {2, 1} } },
    ["eft_barrel_deagle_l6_wts"]    = { Bodygroups = { {2, 2} } },
    ["eft_barrel_deagle_xix"]    = { Bodygroups = { {2, 5} } },

    ["eft_pg_deagle_std"]    = { Bodygroups = { {4, 1} } },
    ["eft_pg_deagle_ergo"]    = { Bodygroups = { {4, 2} } },
    ["eft_mag_deagle_7"]    = { Bodygroups = { {7, 1} } },
    ["eft_mag_deagle_9"]    = { Bodygroups = { {7, 2} } },  

    ["eft_fs_deagle_std"]    = { Bodygroups = { {5, 1} } }, --
    ["eft_rs_deagle_std"]    = { Bodygroups = { {6, 1} } },

    ["eft_slide_deagle_l5"]    = { Bodygroups = { {3, 3} } },
    ["eft_slide_deagle_l5_357"]    = { Bodygroups = { {3, 4}, {1, 3} } },
    ["eft_slide_deagle_l6"]    = { Bodygroups = { {3, 1} } },
    ["eft_slide_deagle_l6_wts"]    = { Bodygroups = { {3, 2}, {1, 1} } },
    ["eft_slide_deagle_xix"]    = { Bodygroups = { {3, 5} } },

    ["eft_ammo_50ae_fmj"]    = { Bodygroups = { {8, 0} } },
    ["eft_ammo_50ae_copper"]    = { Bodygroups = { {8, 1} } },
    ["eft_ammo_50ae_jsp"]    = { Bodygroups = { {8, 3} } },
    ["eft_ammo_50ae_jhp"]    = { Bodygroups = { {8, 2} } },

    ["eft_ammo_357_fmj"]    = { Bodygroups = { {8, 4} } },
    ["eft_ammo_357_jhp"]    = { Bodygroups = { {8, 6} } },
    ["eft_ammo_357_hp"]    = { Bodygroups = { {8, 5} } },
    ["eft_ammo_357_sp"]    = { Bodygroups = { {8, 7} } },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model

    if eles["eft_fs_deagle_std"] then 
        if eles["eft_barrel_deagle_l5_50ae"] or eles["eft_barrel_deagle_l5_357"] then mdl:SetBodygroup(5, 2) end
        if eles["eft_barrel_deagle_xix"] then mdl:SetBodygroup(5, 3) end
    end
end

SWEP.Attachments = {
    {
        Category = "eft_deagle_barrel_l6",
        Installed = "eft_barrel_deagle_l6_50ae",
        PrintName = "Barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0.0),
        Ang = Angle(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_fs_deagle_std",
            },
        }
    },
    {
        Category = "eft_deagle_slide_l6",
        Installed = "eft_slide_deagle_l6",
        PrintName = "Slide",
        Bone = "mod_reciever",
        Pos = Vector(0, 1, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1.085, 0.185),
        SubAttachments = {
            {
                Installed = "eft_rs_deagle_std",
            },
        }
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_50ae",
        Bone = "mod_magazine",
        Integral = "eft_ammo_50ae_fmj",
        Installed = "eft_ammo_50ae_fmj",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -3),
        ExcludeElements = {"eft_slide_deagle_l5_357"}
    },
    {
        PrintName = "Magazine",
        Category = "eft_deagle_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_deagle_7"
    },  
    {
        PrintName = "Grip",
        Category = "eft_deagle_pg",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 2),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_pg_deagle_ergo"
    },    
    {
        PrintName = "Tactical",
        Bone = "mod_tactical",
        Category = {"eft_tactical"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExcludeElements = {"eft_xix", "eft_l5"}
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_deagle"},
        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}