AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_pm")
SWEP.Description = ARC9:GetPhrase("eft_weapon_pm_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_izhevsk",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x18",
    ["eft_trivia_act3"]= "eft_trivia_act_blow",
    ["eft_trivia_country4"] = "eft_trivia_country_ussr",
    ["eft_trivia_year5"] = "1951"
}

SWEP.StandardPresets = false 

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_pm.mdl"
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
    Pos = Vector(-4.265, -8, 2.25),
    Ang = Angle(0, 0.00, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.5, -.6)
SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)
SWEP.CustomizePos = Vector(20.85, 35, 4)
SWEP.CustomizeSnapshotFOV = 35
SWEP.CustomizeRotateAnchor = Vector(20.85, -4.28, -5.23)
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
SWEP.EFTErgo = 85
SWEP.BarrelLength = 16
SWEP.Ammo = "pistol"
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 1

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 1.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 3.8 -- autocompenstaion, could be cool if set to high but it also affects main recoil

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

SWEP.RecoilKick = 0.3 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -1.2)
SWEP.SubtleVisualRecoil = 0.35
SWEP.SubtleVisualRecoilHipFire = 7
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1

------------------------- |||           Damage            ||| -------------------------

-- pst dmg

SWEP.DamageMax = 50 * 0.5
SWEP.DamageMin = 31.45 * 0.5
SWEP.PhysBulletMuzzleVelocity = 298 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      12 *2.54/100/0.0254
SWEP.PenetrationDelta = 26/100
SWEP.ArmorPiercing =    26/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    50 * 0.5     },

    {   100 /0.0254 * 1, 
    46 * 0.5     },

    {   200 /0.0254 * 1, 
    43 * 0.5     },

    {   300 /0.0254 * 1, 
    40.75 * 0.5     },

    {   400 /0.0254 * 1, 
    38.73 * 0.5     },

    {   500 /0.0254 * 1, 
    37 * 0.5     },

    {   600 /0.0254 * 1, 
    35.4 * 0.5     },

    {   700 /0.0254 * 1, 
    34 * 0.5     },

    {   800 /0.0254 * 1, 
    33 * 0.5     },

    {   900 /0.0254 * 1, 
    32 * 0.5     },

    {   1000 /0.0254 * 1, 
    31.45 * 0.5     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 600
SWEP.MalfunctionMeanShotsToFailMultHot = -2
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 200
SWEP.HeatDissipation = 2

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.8
SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x18pm.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_pm_thread"] then return ARC9:GetPhrase("eft_weapon_pmt") end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_pm_thread"] then return "eft_weapon_pmt_desc" end
end

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/pm/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "pm_close1.ogg", path .. "pm_close2.ogg" }
SWEP.ShootSoundIndoor = { path .. "pm_indoor_close1.ogg", path .. "pm_indoor_close2.ogg" }
SWEP.DistantShootSound = { path .. "pm_distant1.ogg", path .. "pm_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "pm_indoor_distant1.ogg", path .. "pm_indoor_distant2.ogg" }

SWEP.ShootSoundSilenced = path .. "pb_silenced_close1.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "pb_silenced_indoor_close1.ogg"
SWEP.DistantShootSoundSilenced = path .. "pb_silenced_far1.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "pb_silenced_indoor_distant1.ogg"

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pm_8.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.86*1.1
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
SWEP.EFT_HasTacReloads = true 

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_pm_mag_8"] or elements["eft_pm_hasmag"] then ending = 0 
    elseif elements["eft_pm_mag_84"] or elements["eft_pm_hasdrum"] then ending = 1
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
            
            if elements["eft_pm_pg_fab"] or elements["eft_pm_pg_fab_od"] or elements["eft_pm_pg_laser"] then ending = ending .. "_fab" end

            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(!elements["eft_pm_mag_84"]) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then rand = 0 end
            ending = rand
            if rand == 1 and elements["eft_pm_mag_84"] then ending = ending .. "_drum" end
        end

        return anim .. (empty and "_empty" or "") .. ending
    elseif anim == "reload" or anim == "reload_empty" then
        if elements["eft_pm_pg_fab"] or elements["eft_pm_pg_fab_od"] or elements["eft_pm_pg_laser"] then ending = ending .. "_fab" end
        if swep.EFT_StartedTacReload then
            if SERVER then swep:SetClip1(1) end
            return "reload_tactical" .. ending
        end
        return anim .. (empty and "_empty" or "") .. ending
    elseif anim == "fix" then
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
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s = randspin, t = 0.21 },
    { s =  path .. "pm_mag_button.ogg", t = 0.44 },
    { s =  path .. "pm_mag_out.ogg", t = 0.53 },
    { s =  path .. "pm_mag_pullout.ogg", t = 0.83 },
    { s = randspin, t = 1.17 },
    { s =  path .. "ppsh_mag_pullout3.ogg", t = 1.78 },
    { s = randspin, t = 2.44 },
    { s =  path .. "pm_mag_pullin.ogg", t = 2.7 },
    { s =  path .. "pm_mag_in.ogg", t = 3.0 },
    { s = randspin, t = 3.35 },
}

-- new fab check mag do sound table plz

local rst_magcheckfab = {
    { s = randspin, t = 0.21 },
    { s =  path .. "pm_mag_button.ogg", t = 0.44 },
    { s =  path .. "pm_mag_out.ogg", t = 0.53 },
    { s =  path .. "pm_mag_pullout.ogg", t = 0.83 },
    { s = randspin, t = 1.17 },
    { s =  path .. "ppsh_mag_pullout3.ogg", t = 1.78 },
    { s = randspin, t = 2.44 },
    { s =  path .. "pm_mag_pullin.ogg", t = 2.7 },
    { s =  path .. "pm_mag_in.ogg", t = 3.0 },
    { s = randspin, t = 3.35 },
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
            { s = path .. "pm_slider_in.ogg", t = 0.5 },
            { s = path .. "pm_slider_out.ogg", t = 0.75 },
            { s = randspin, t = 1.1 },
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
            { s = path .. "pm_slider_in.ogg", t = 0.31 },
            { s = randspin, t = 0.79 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.2},
            { s = randspin, t = 1.44 },
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.99  },
            { s = path .. "pm_slider_jammed.ogg", t = 2.63 },
            { s = path .. "pm_slider_out.ogg", t = 2.79 },
            { s = randspin, t = 3.05 },
        },
        -- Mult = 1.1
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.29 },
            { s =  path .. "pm_mag_button.ogg", t = 0.52 },
            { s =  path .. "pm_mag_out.ogg", t = 0.7 },
            { s =  path .. "pm_mag_pullout.ogg", t = 1.03 },
            { s = randspin, t = 1.29 },
            { s = pouchin, t = 1.4 },
            { s = pouchout, t = 1.58 },
            { s =  path .. "pm_mag_pullin.ogg", t = 2.15 },
            { s =  path .. "pm_mag_in.ogg", t = 2.46 },
            { s = randspin, t = 2.75 },
        },
        Mult = 1.1
    },
    ["reload_tactical0"] = {
        Source = "reload0t",
        MinProgress = 0.9,
        Mult = 0.85,
        DropMagAt = 0.86,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.08  - 1/28},
            { s =  path .. "pm_mag_button.ogg", t = 0.28  - 1/28},
            { s =  path .. "pm_mag_out.ogg", t = 0.44 - 1/28 },
            { s =  path .. "pm_mag_pullout.ogg", t = 0.67  - 1/28},
            { s = randspin, t = 0.69  - 1/28},
            { s = randspin, t = 1.09 - 1/28 },
            { s = pouchout, t = 1.2  - 1/28},
            { s =  path .. "pm_mag_pullin.ogg", t = 1.64 - 1/28 },
            { s =  path .. "pm_mag_in.ogg", t = 1.92 - 1/28 },
            { s = randspin, t = 2.19  - 1/28},

            {hide = 0, t = 0},
            {hide = 1, t = 0.86},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },

    ["reload_empty0"] = {
        Source = "reload_empty0", 
        MinProgress = 0.9,
        Mult = 0.85,
        MagSwapTime = 1.3,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.08 },
            { s =  path .. "pm_mag_button.ogg", t = 0.28 },
            { s =  path .. "pm_mag_out.ogg", t = 0.44 },
            { s =  path .. "pm_mag_pullout.ogg", t = 0.67 },
            { s = randspin, t = 0.69 },
            { s = randspin, t = 1.09 },
            { s = pouchout, t = 1.2 },
            { s =  path .. "pm_mag_pullin.ogg", t = 1.64 },
            { s =  path .. "pm_mag_in.ogg", t = 1.92 },
            { s = randspin, t = 2.19 },
            { s =  path .. "pm_catch_button.ogg", t = 2.64 },
            { s =  path .. "pm_catch_slider.ogg", t = 2.68 },
            { s = randspin, t = 3.1 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.86},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },

    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.29 },
            { s =  path .. "pm_mag_button.ogg", t = 0.52 },
            { s =  path .. "ppsh_mag_out.ogg", t = 0.7 },
            { s =  path .. "pm_mag_pullout.ogg", t = 1.07 },
            { s = randspin, t = 1.29 },
            { s = pouchin, t = 1.4 },
            { s = pouchout, t = 1.9 },
            { s =  path .. "pm_mag_pullin.ogg", t = 2.65 },
            { s =  path .. "ppsh_mag_in.ogg", t = 3.01 - 0.3 },
            { s = randspin, t = 3.31 },
        },
        Mult = 1.1
    },
    ["reload_tactical1"] = {
        Source = "reload1t",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        DropMagAt = 0.7,
        EventTable = {
            { s = randspin, t = 0.08 - 1/28 },
            { s =  path .. "pm_mag_button.ogg", t = 0.32  - 1/28},
            { s =  path .. "ppsh_mag_out.ogg", t = 0.55  - 1/28},
            { s =  path .. "pm_mag_pullout.ogg", t = 0.64 - 1/28 },
            { s = randspin, t = 0.94 - 1/28 },
            { s = pouchout, t = 1.36 - 1/28 },
            { s =  path .. "pm_mag_pullin.ogg", t = 2.25 - 1/28 },
            { s =  path .. "ppsh_mag_in.ogg", t = 2.57 - 0.3 - 1/28  },
            { s = randspin, t = 2.87 - 1/28 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.7},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },

    ["reload_empty1"] = {
        Source = "reload_empty1", 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        MagSwapTime = 1.3,
        EventTable = {
            { s = randspin, t = 0.08 },
            { s =  path .. "pm_mag_button.ogg", t = 0.32 },
            { s =  path .. "ppsh_mag_out.ogg", t = 0.55 },
            { s =  path .. "pm_mag_pullout.ogg", t = 0.64 },
            { s = randspin, t = 0.94 },
            { s = pouchout, t = 1.36 },
            { s =  path .. "pm_mag_pullin.ogg", t = 2.25 },
            { s =  path .. "ppsh_mag_in.ogg", t = 2.57 - 0.3  },
            { s = randspin, t = 2.87 },
            { s =  path .. "pm_catch_button.ogg", t = 3.25 },
            { s =  path .. "pm_catch_slider.ogg", t = 3.36 },
            { s = randspin, t = 3.72 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.86},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },


    -- new fucking reloads pls sound tables

    -- only magout is different

    ["reload0_fab"] = {
        Source = "reload0fab",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {

            -- -0.321 on magin and rest

            { s = randspin, t = 4/28 },
            { s =  path .. "pm_mag_button.ogg", t = 12/28 },
            { s =  path .. "pm_mag_out.ogg", t = 15/28 },
            { s =  path .. "pm_mag_pullout.ogg", t = 20/28 },
            { s = randspin, t = 23/28 },
            { s = pouchin, t = 26/28 },
            { s = pouchout, t = 30/28 },
            { s =  path .. "pm_mag_pullin.ogg", t = 55/28 },
            { s =  path .. "pm_mag_in.ogg", t = 62/28 },
            { s = randspin, t = 69/28 },
        },
        Mult = 1.1
    },

    ["reload_tactical0_fab"] = {
        Source = "reload0fabt",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        DropMagAt = 0.7,
        EventTable = {
            { s = randspin, t = 4/28 - 1/28 },
            { s =  path .. "pm_mag_button.ogg", t = 12/28  - 1/28},
            { s =  path .. "pm_mag_out.ogg", t = 15/28  - 1/28},
            { s =  path .. "pm_mag_pullout.ogg", t = 20/28 - 1/28 },
            { s = randspin, t = 23/28  - 1/28},
            { s = randspin, t = 26/28  - 1/28},
            { s = pouchout, t = 30/28  - 1/28},
            { s =  path .. "pm_mag_pullin.ogg", t = 55/28 - 1/28  - 6/28 },
            { s =  path .. "pm_mag_in.ogg", t = 62/28  - 1/28  - 6/28},
            { s = randspin, t = 69/28  - 1/28},

            {hide = 0, t = 0},
            {hide = 1, t = 0.7},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },

    ["reload_empty0_fab"] = {
        Source = {"reload_empty0fab", "reload_empty0fab1"}, 
        MinProgress = 0.9,
        Mult = 0.85,
        MagSwapTime = 1.3,
        FireASAP = true,
        EventTable = {

            -- same length

            { s = randspin, t = 4/28 },
            { s =  path .. "pm_mag_button.ogg", t = 12/28 },
            { s =  path .. "pm_mag_out.ogg", t = 15/28 },
            { s =  path .. "pm_mag_pullout.ogg", t = 20/28 },
            { s = randspin, t = 23/28 },
            { s = randspin, t = 26/28 },
            { s = pouchout, t = 30/28 },
            { s =  path .. "pm_mag_pullin.ogg", t = 55/28  - 6/28 },
            { s =  path .. "pm_mag_in.ogg", t = 62/28  - 6/28 },
            { s = randspin, t = 69/28 },
            { s =  path .. "pm_catch_button.ogg", t = 75/28 },
            { s =  path .. "pm_catch_slider.ogg", t = 78/28 },
            { s = randspin, t = 81/28 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.86},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },

    ["reload1_fab"] = {
        Source = "reload1fab",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {

            -- -0.214 on magin and rest

            { s = randspin, t = 11/28 },
            { s =  path .. "pm_mag_button.ogg", t = 19/28 },
            { s =  path .. "ppsh_mag_out.ogg", t = 24/28 },
            { s =  path .. "pm_mag_pullout.ogg", t = 25/28 },
            { s = randspin, t = 32/28 },
            { s = pouchin, t = 35/28 },
            { s = pouchout, t = 44/28 },
            { s =  path .. "pm_mag_pullin.ogg", t = 69/28 },
            { s =  path .. "ppsh_mag_in.ogg", t = 75/28 },
            { s = randspin, t = 92/28 },
        },
        Mult = 1.1
    },
    ["reload_tactical1_fab"] = {
        Source = "reload1fabt",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        DropMagAt = 0.5,
        EventTable = {
            { s = randspin, t = 5/28 - 1/28 },
            { s =  path .. "pm_mag_button.ogg", t = 7/28 - 1/28 },
            { s =  path .. "ppsh_mag_out.ogg", t = 10/28  - 1/28},
            { s =  path .. "pm_mag_pullout.ogg", t = 15/28 - 1/28 },
            { s = randspin, t = 20/28 - 1/28 },
            { s = pouchout, t = 42/28 - 1/28 },
            { s =  path .. "pm_mag_pullin.ogg", t = 63/28 - 1/28 },
            { s =  path .. "ppsh_mag_in.ogg", t = 69/28 - 1/28  },
            { s = randspin, t = 81/28 - 1/28 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.5},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },

    ["reload_empty1_fab"] = {
        Source = "reload_empty1fab", 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        MagSwapTime = 1.3,
        EventTable = {

            -- same length

            { s = randspin, t = 5/28 },
            { s =  path .. "pm_mag_button.ogg", t = 7/28 },
            { s =  path .. "ppsh_mag_out.ogg", t = 10/28 },
            { s =  path .. "pm_mag_pullout.ogg", t = 15/28 },
            { s = randspin, t = 20/28 },
            { s = pouchout, t = 42/28 },
            { s =  path .. "pm_mag_pullin.ogg", t = 63/28 },
            { s =  path .. "ppsh_mag_in.ogg", t = 69/28  },
            { s = randspin, t = 81/28 },
            { s =  path .. "pm_catch_button.ogg", t = 94/28 },
            { s =  path .. "pm_catch_slider.ogg", t = 97/28 },
            { s = randspin, t = 99/28 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.86},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },


    -- end of new stuff



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
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.16 },

            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.65  },
            { s = path .. "pm_shell_jammed.ogg", t = 1.87 },
            { s = randspin, t = 2.05 },
            { s = ARC9EFT.Shells9mm, t = 2.4 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hard",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.16 },

            { s = slidelockgrab, t = 1.62 },
            { s = slidelockgrab, t = 1.91 },
            { s = path .. "pm_slider_jammed.ogg", t = 2.31 },
            { s = randspin, t = 2.61 },
            { s = randspin, t = 3.12 },
            { s = path .. "pm_slider_in.ogg", t = 3.39 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.49 },
            { s = path .. "pm_slider_out.ogg", t = 3.57 },
            { s = randspin, t = 3.8 },
        },
        EjectAt = 3.49
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.16 },

            { s = path .. "pm_slider_in.ogg", t = 1.5 },
            { s = randspin, t = 1.53 },
            { s = randspin, t = 1.71 },
            { s = randspin, t = 2.19 },
            { s = randspin, t = 2.78 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.84 },
            { s = randspin, t = 3.25 },
            { s = path .. "pm_slider_out.ogg", t = 3.53 },
            { s = ARC9EFT.Shells9mm, t = 3.4 },
            { s = randspin, t = 3.81 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_soft",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.16 },

            { s = path .. "pm_slider_jammed.ogg", t = 1.58 },
            { s = path .. "pm_slider_in.ogg", t = 2.07 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.15 },
            { s = path .. "pm_slider_out.ogg", t = 2.24 },
            { s = randspin, t = 2.51 },
        },
        EjectAt = 2.15
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 0.16 },
            { s = randspin, t = 1.53 },
            { s = randspin, t = 2.44 },
        }
    },

    ["inspect_empty1"] = {
        Source = "look_empty",
        EventTable = {
            { s = randspin, t = 0.16 },
            { s = randspin, t = 1.53 },
            { s = randspin, t = 2.44 },
        }
    },

    ["inspect1_drum"] = {
        Source = "look_drum",
        EventTable = {
            { s = randspin, t = 0.32 },
            { s = randspin, t = 1.11 },
            { s = randspin, t = 1.4 },
            { s = randspin, t = 2.0 },
            { s = randspin, t = 2.91 },
        }
    },

    ["inspect_empty1_drum"] = {
        Source = "look_drum_empty",
        EventTable = {
            { s = randspin, t = 0.32 },
            { s = randspin, t = 1.11 },
            { s = randspin, t = 1.4 },
            { s = randspin, t = 2.0 },
            { s = randspin, t = 2.91 },
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



    ["inspect_mag_0_fab"] = {
        Source = "magcheck0fab",
        EventTable = rst_magcheckfab,
    },
    ["inspect_empty_mag_0_fab"] = {
        Source = "magcheck0_emptyfab",
        EventTable = rst_magcheckfab,
    },

    ["inspect_mag_1_fab"] = {
        Source = "magcheck1fab",
        EventTable = rst_magcheckfab,
    },
    ["inspect_empty_mag_1_fab"] = {
        Source = "magcheck1_emptyfab",
        EventTable = rst_magcheckfab,
    },



    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = path .. "pm_slider_in.ogg", t = 0.46 },
            { s =  path .. "pm_slider_out.ogg", t = 1.25 },
            { s = randspin, t = 1.49 },
        }
    },
    ["inspect_empty0"] = {
        Source = "check_chamber_empty",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.7 },
        }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasReciever", "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_pm_thread"]    = { Bodygroups = { {1, 1} } },
    ["eft_pm_rec_std"]    = { Bodygroups = { {2, 1} } },
    ["eft_pm_rs_std"]    = { Bodygroups = { {4, 1} } },

    ["eft_pm_pg_std"]    = { Bodygroups = { {5, 1} } },
    ["eft_pm_pg_fab"]    = { Bodygroups = { {5, 2} } },
    ["eft_pm_pg_fab_od"]    = { Bodygroups = { {5, 3} } },
    ["eft_pm_pg_tk"]    = { Bodygroups = { {5, 4} } },
    ["eft_pm_pg_laser"]    = { Bodygroups = { {5, 5} } },

    ["eft_pm_mag_8"]    = { Bodygroups = { {3, 1} } },
    ["eft_pm_mag_84"]    = { Bodygroups = { {3, 2} } },

    -- pb mdl
    ["eft_pb_pg_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_pb_silencer"]    = { Bodygroups = { {2, 1} } },
}

SWEP.DefaultElements = {"pmmallowed"}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Bone = "mod_reciever",
        Category = {"eft_pm_rec"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_pm_rec_std",
        SubAttachments = {
            {
                Installed = "eft_pm_rs_std"
            },
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Bone = "mod_pistolgrip",
        Category = {"eft_pm_pg"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_pm_pg_std"
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_pm_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
        Installed = "eft_pm_mag_8"
    },   
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Bone = "mod_pistolgrip",
        Category = {"eft_9mm_muzzle"},
        RequireElements = {"eft_pm_thread"},
        Pos = Vector(-0.08, 5.15, 2.7),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_9x18",
        Integral = "eft_ammo_9x18_pst",
        Installed = "eft_ammo_9x18_pst",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2.5),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_pm"},
        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}