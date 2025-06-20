AddCSLuaFile() -- reuses p226 anims  so i reused p226 file too :-p
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_mp443")
SWEP.Description = ARC9:GetPhrase("eft_weapon_mp443_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_izhevsk",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x19",
    ["eft_trivia_act3"]= "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_rus",
    ["eft_trivia_year5"] = "2003"
}


SWEP.StandardPresets = false 

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_mp443.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-16.25, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 6, -5), -- rpg
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 2.15),
    Ang = Angle(0, -0.2, 0),
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
end

-- this thing WILL one hand sprint always
SWEP.OneHandedSprint = true
SWEP.SprintAng = Angle(3, 33, -12)
SWEP.SprintPos = Vector(3, -7.1, -13)
SWEP.HoldTypeSprint = "normal"

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 12.03 * ARC9.MOAToAcc
SWEP.RPM = 450
SWEP.EFTErgo = 79
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
SWEP.MalfunctionMeanShotsToFail = 444 -- trollface
SWEP.MalfunctionMeanShotsToFailMultHot = -20
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 2

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.5
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/mp443/"
local path2 = ")weapons/darsu_eft/p226/"
local pathgenericpistol = ")weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "grach_fire_outdoor_close.wav", path .. "grach_fire_outdoor_close2.wav" }
SWEP.ShootSoundIndoor = { path .. "grach_fire_indoor_close.wav", path .. "grach_fire_indoor_close2.wav" }
SWEP.DistantShootSound = { path .. "grach_fire_outdoor_distant.wav", path .. "grach_fire_outdoor_distant2.wav" }
SWEP.DistantShootSoundIndoor = { path .. "grach_fire_indoor_distant.wav", path .. "grach_fire_indoor_distant2.wav" }

SWEP.ShootSoundSilenced = path2 .. "p226_fire_silenced_close.ogg"
SWEP.ShootSoundSilencedIndoor = path2 .. "p226_fire_silenced_indoor_close.wav"
SWEP.DistantShootSoundSilenced = path2 .. "p226_fire_silenced_distant.ogg"
SWEP.DistantShootSoundSilencedIndoor = path2 .. "p226_fire_silenced_indoor_distant.wav"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp443.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.66*0.85
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
    [11] = "patron_in_mag10",
    [12] = "patron_in_mag11",
    [13] = "patron_in_mag12",
    [14] = "patron_in_mag13",
    [15] = "patron_in_mag14",
    [16] = "patron_in_mag15",
    [16] = "patron_in_mag16",
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
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER then
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
        "patron_in_mag10",
        "patron_in_mag11",
        "patron_in_mag12",
        "patron_in_mag13",
        "patron_in_mag14",
        "patron_in_mag15",
        "patron_in_mag16",
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
    { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.9 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.1},
    { s = randspin, t = 1.53 },
    { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 2.4  },
    { s = randspin, t = 2.4 },
    { s =  path .. "grach_catch_slider.ogg", t = 2.9 },
    { s = randspin, t = 3.08 },
}

local rst_def = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.46 }, -- eft devs redarded
    { s =  path .. "grach_mag_out.ogg", t = 0.55 },
    { s = pouchin, t = 1.2 },
    { s = pouchout, t = 1.6 },
    { s = randspin, t = 1.7 },
    { s =  path .. "grach_mag_in.ogg", t = 2.45 + 0.15 },
    { s = randspin, t = 3.12 },
}
local rst_def2 = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.46 }, -- eft devs redarded
    { s =  path .. "grach_mag_out.ogg", t = 0.55 },
    { s = pouchin, t = 1.2 },
    { s = pouchout, t = 1.6 },
    { s = randspin, t = 1.95 },
    { s =  path .. "grach_mag_in.ogg", t = 2.72 + 0.15 },
    { s = randspin, t = 3.4 },
}

local rst_tac = {
    { s = randspin, t = 0.1 - 4/24 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 - 4/24 }, -- eft devs redarded
    { s =  path .. "grach_mag_out.ogg", t = 0.4 - 4/24 },
    { s =  randspin, t = 0.53 - 4/24 },
    { s =  randspin, t = 1.04 - 4/24 },
    { s = pouchout, t = 1.15 - 4/24 },
    { s =  path .. "grach_mag_in.ogg", t = 1.8 + 0.15 - 4/24 },
    { s = randspin, t = 2.24 - 4/24 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 1.15}
}
local rst_tac2 = {
    { s = randspin, t = 0.1 - 4/24 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 - 4/24 }, -- eft devs redarded
    { s =  path .. "grach_mag_out.ogg", t = 0.4 - 4/24 },
    { s =  randspin, t = 0.53 - 4/24 },
    { s =  randspin, t = 1.04  - 4/24},
    { s = pouchout, t = 1.2  - 4/24},
    { s =  path .. "grach_mag_in.ogg", t = 2.2 + 0.15 - 4/24 },
    { s = randspin, t = 2.4 - 4/24 },  
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 1.15}
}

local rst_empty = {
    { s = randspin, t = 0.1 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 }, -- eft devs redarded
    { s =  path .. "grach_mag_out.ogg", t = 0.4 },
    { s =  randspin, t = 0.53 },
    { s =  randspin, t = 1.04 },
    { s = pouchout, t = 1.15 },
    { s =  path .. "grach_mag_in.ogg", t = 1.8 + 0.15 },
    { s = randspin, t = 2.24 },  
    { s =  path .. "grach_catch_slider.ogg", t = 2.75 },
    { s = randspin, t = 2.95 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.66},
    {hide = 0, t = 1.15}
}
local rst_empty2 = {
    { s = randspin, t = 0.1 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 }, -- eft devs redarded
    { s =  path .. "grach_mag_out.ogg", t = 0.4 },
    { s =  randspin, t = 0.53 },
    { s =  randspin, t = 1.04 },
    { s = pouchout, t = 1.2 },
    { s =  path .. "grach_mag_in.ogg", t = 2.2 + 0.15 },
    { s = randspin, t = 2.4 },  
    { s =  path .. "grach_catch_slider.ogg", t = 3.1 },
    { s = randspin, t = 3.15 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.66},
    {hide = 0, t = 1.15}
}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.23},
    { s =  path .. "grach_mag_out.ogg", t = 0.33 },
    { s = randspin, t = 0.48 },
    { s = randspin, t = 0.98 },
    { s =  path .. "grach_mag_in.ogg", t = 2.8 - 0.05 },
    { s = randspin, t = 3.3 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        RareSource = {"too_idle1","too_idle2","too_idle3"},
        RareSourceChance = 0.0015,
    },
    ["idle_sights"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.58 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 0.75 },
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
            { s = pathgenericpistol .. "pm_trigger_hammer.wav", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = path .. "grach_catch_slider.ogg", t = 0.05 },
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
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_def2
    },
    ["reload_tactical0"] = {
        Source = "reload0t",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_tac,

        DropMagAt = 0.5,
    },
    ["reload_tactical1"] = {
        Source = "reload1t",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_tac2,

        DropMagAt = 0.5,
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1"}, 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },
    ["reload_empty1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1"}, 
        MinProgress = 0.9,
        Mult = 0.85,
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



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },

            { s = slidelockgrab, t = 2 },
            { s = randspin, t = 2.3 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.39 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.65 },
            { s = randspin, t = 3 },
            { s = ARC9EFT.Shells9mm, t = 3.1 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },

            { s = slidelockgrab, t = 1.92 },
            { s = slidelockgrab, t = 2.28 },
            { s = slidelockgrab, t = 2.7 },
            { s = randspin, t = 2.94 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 3.87 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.95 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 4.14 },
            { s = randspin, t = 4.51 },
        },
        EjectAt = 3.95
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },

            { s = slidelockgrab, t = 1.95 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.33 },
            { s = randspin, t = 2.75 },
            { s = randspin, t = 2.95 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.16 },
            { s = randspin, t = 3.58 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 3.76 },
            { s = randspin, t = 4.13 },
            { s = ARC9EFT.Shells9mm, t = 4.3 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },
            
            { s = slidelockgrab, t = 1.97 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.38 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.44 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 2.62 },
            { s = randspin, t = 2.97 },
        },
        EjectAt = 2.44
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
        Source = "magcheck0_empty",
        EventTable = rst_magcheck,
    },
    ["inspect_mag_1"] = {
        Source = "magcheck1",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_1"] = {
        Source = "magcheck1_empty",
        EventTable = rst_magcheck,
    },

    ["inspect0"] = {
        Source = "checkchamber",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.56 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 1.16 },
            { s = randspin, t = 1.38 },
        }
    },
    ["inspect_empty0"] = {
        Source = "checkchamber_empty",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 1.0 },
        }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_grip_mp443_std"]    = { Bodygroups = { {1, 1} } },

    ["eft_mag_mp443_std"]    = { Bodygroups = { {2, 1} } },

    ["eft_mount_mp443_rail"]    = { Bodygroups = { {3, 1} } },
}

SWEP.Attachments = {
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
        Category = "eft_mp443_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_mp443_std"
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Bone = "weapon",
        Category = {"eft_mp443_tac"},
        Pos = Vector(0, 23.23, -0.48),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Bone = "mod_pistol_grip",
        Category = "eft_mp443_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_grip_mp443_std"
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_mp443"},

        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}