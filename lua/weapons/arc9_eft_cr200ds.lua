AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_cr200ds")
SWEP.Description = ARC9:GetPhrase("eft_weapon_cr200ds_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_revol")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_chiappa",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x19",
    ["eft_trivia_act3"]= "eft_trivia_act_revolver",
    ["eft_trivia_country4"] = "eft_trivia_country_italy",
    ["eft_trivia_year5"] = "2009"
}

SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_chiappa_rhino.mdl"
SWEP.DefaultBodygroups = "0000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-15.5, 5.5, -3.2),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-5, 5, -4), -- rpg
    -- TPIKPos = Vector(-18, 3, -4), -- rewolv
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.34, -8, 1.4),
    Ang = Angle(0, 0, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.7, -3.1, -.45)
SWEP.CustomizePos = Vector(21, 30, 2.8)
SWEP.CustomizeSnapshotFOV = 40
SWEP.CustomizeRotateAnchor = Vector(21, -4.28, -5.23)
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
SWEP.SprintAng = Angle(3, 33, -7)
SWEP.SprintPos = Vector(3, -7.1, -13)
SWEP.HoldTypeSprint = "normal"

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 9.63 * ARC9.MOAToAcc
SWEP.RPM = 450
SWEP.EFTErgo = 95
SWEP.BarrelLength = 12
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = 1, PPrintName = ARC9:GetPhrase("eft_fmode_doubleaction"), PoseParam = 1  },
    { Mode = 1, PrintName = ARC9:GetPhrase("eft_fmode_singleaction"), PoseParam = 0, EFTSingleAction = true, ManualAction = true, RPM = 300, TriggerDelay = false, TriggerStartFireAnim = false, RecoilKickMult = 0.75 },
}

SWEP.Slot = 1
SWEP.ReloadInSights = false

------------------------- |||           Recoil            ||| -------------------------


SWEP.Recoil = 1.0 -- general multiplier of main recoil

SWEP.RecoilUp   = 3   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 3 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.65 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 2   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 2   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = -0.3 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 9 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 2 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.01 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.25 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 15, -1.2)
SWEP.SubtleVisualRecoil = 0.25
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

SWEP.Malfunction = false
SWEP.Overheat = false

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 1
SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/rhino/"

SWEP.ShootSound = path .. "rhino_fire_close.ogg"
SWEP.ShootSoundIndoor = path .. "rhino_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "rhino_fire_distant.ogg"
SWEP.DistantShootSoundIndoor = path .. "rhino_fire_indoor_distant.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineTime = 0.9
SWEP.DropMagazineQCA = 10
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(-10, 0, 0)

------------------------- |||           Animations            ||| -------------------------

SWEP.NoShellEject = true
SWEP.ShellSmoke = false 
SWEP.EjectDelay = 1111111111

SWEP.ShotgunReload = true
-- SWEP.ShotgunReloadHook = function(swep, meow)
    -- if CLIENT then return end
    -- local eles = swep:GetElements()
    -- print("heyy!!")
    -- return false
    -- if (eles["eft_rhino_speedloader"] and (swep:Clip1() == 0 or eles["eft_rsh12_fastreload"])) or swep.nosgreload then return false end 
    -- print(swep:GetValue("EFTSpeedloader"))
    -- if swep:GetValue("EFTSpeedloader") then return false end 
--     return true
-- end

function SWEP:GetShouldShotgunReload() -- for some weird assss reason hooking shotgunreload not work reliably
    local eles = self:GetElements()
    return !((eles["eft_rhino_speedloader"] and (self:Clip1() == 0 or eles["eft_rsh12_fastreload"] or self.EFT_StartedTacReload)) or self.nosgreload)
end

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 0.1
SWEP.TriggerDelayCancellable = false
SWEP.TriggerStartFireAnim = true
SWEP.ShellVelocity = 0
SWEP.NoForceSetLoadedRoundsOnReload = true 
SWEP.ManualActionNoLastCycle = false
SWEP.ManualActionEjectAnyway = false

SWEP.BulletBones = {
    [1] = "patron_in_weapon_001",
    [2] = "patron_in_weapon_002",
    [3] = "patron_in_weapon_003",
    [4] = "patron_in_weapon_004",
    [5] = "patron_in_weapon_005",
    [6] = "patron_in_weapon_006",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_speedloader",
    },
}

SWEP.SuppressEmptySuffix = true

local delayedspin
local function spindelay(swep) -- setting nwint not in start of anim but while one before already started
    if delayedspin then return end
    delayedspin = true
    timer.Simple(0.1, function() -- wah wah
        if IsValid(swep) then
            local getcr = swep:GetNWInt("EFTRevolverCylRot", 0) + 1
            if getcr==6 then getcr = 0 end
            swep:SetNWInt("EFTRevolverCylRot", getcr)
            delayedspin = nil
        end
    end)
end

local infammo = GetConVar("arc9_infinite_ammo")
SWEP.EFT_HasTacReloads = true 
SWEP.EFT_HasTacReloadsAlways = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    local hasloader = elements["eft_rhino_speedloader"]

    local clip = swep:Clip1()
    local sa = swep:GetValue("EFTSingleAction")
    
    local cylrot = (5 - swep:GetNWInt("EFTRevolverCylRot", 0))
    
    if anim == "inspect" then        
        swep.EFTInspectBool = swep.EFTInspectBool or false
        if IsFirstTimePredicted() then
            swep.EFTInspectBool = !swep.EFTInspectBool
        end
        local inspect = swep.EFTInspectBool

        if !inspect then
            if SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
                net.WriteUInt(math.min(clip , swep:GetMaxClip1()) + 1, 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end

            return "mag_check__" .. cylrot
        else
            return "look__" .. cylrot
        end
    elseif anim == "idle" then   
        if swep.nocylrot then swep.nocylrot = nil end
        if swep.fistful then swep.fistful = nil end
        if swep.nosgreload then swep.nosgreload = nil end
    elseif anim == "ready" or anim == "draw" then   
        anim = "draw"
        timer.Simple(0.1, function() if IsValid(swep) then swep:SetLoadedRounds(swep:Clip1()) end end) -- wah wah
    elseif anim == "fire" then
        if sa then
            anim = "fire_sa"
        else
            anim = "fire_da"
            spindelay(swep)
        end
    elseif anim == "dryfire" then
        if sa then
            anim = "fire_dry"
            spindelay(swep)
        else
            anim = "fire_da_dry"
            spindelay(swep)
        end
    elseif anim == "cycle" and SERVER then
        anim = "cycle"
        spindelay(swep)
    elseif anim == "reload_start" then  
        swep.roundcount = swep.roundcount or 6
        if clip == 0 or swep:GetValue("EFTForceFastReload") or swep.EFT_StartedTacReload then 
            anim = "fistful_start" .. swep.roundcount
            swep.fistful = true
            if SERVER then swep:SetClip1(0) end -- animation.DumpAmmo unloads LoadedRounds too
        else            
            local cunt = (6 - (swep.roundcount - clip)) -- crazy fuck
            if clip > 0 and swep.roundcount > 0 and swep.roundcount < 6 and clip != swep.roundcount then -- crazy fuck
                cunt = (6-clip) .. "_offset" .. (6 - swep.roundcount) -- crazy fuck
            end

            anim = "sg_reload_start" .. cunt
        end

        swep.afterreloadstart = true
    elseif anim == "reload_insert" then
        if swep.afterreloadstart then
            swep.roundcount = clip
            local reserve = infammo:GetBool() and 6 or math.Clamp(swep:GetOwner():GetAmmoCount(swep.Ammo), 0, 6)
            if reserve == 0 then reserve = 6 end
            if swep.fistful then 
                swep.roundcount = reserve -- real ammo count in hand
            end
            swep:SetNWInt("EFTRevolverRoundCount", swep.roundcount)
            swep.afterreloadstart = nil
        end

        anim = swep.fistful and "fistful_insert".. (clip+1) or "sg_reload_insert" .. clip
        swep:SetNWInt("EFTRevolverCylRot", 0)
        swep.nocylrot = true

        if !swep.fistful then
            swep.roundcount = swep.roundcount + 1
            swep:SetNWInt("EFTRevolverRoundCount", swep.roundcount)
            swep:SetLoadedRounds(clip+1)
        else
            swep:SetLoadedRounds(6)
        end
    elseif anim == "reload_finish" then   
        anim = swep.fistful and "fistful_end_r" .. clip or "sg_reload_end"
        swep:SetNWInt("EFTRevolverCylRot", 5)
        swep.nocylrot = true
        local temproundcount = swep.roundcount
        swep.roundcount = clip
        swep:SetNWInt("EFTRevolverRoundCount", clip)
        
        if swep.fistful then 
            swep:SetNWInt("EFTRevolverRoundCount", temproundcount)

            timer.Simple(0.3, function() -- wah wah
                if IsValid(swep) then swep:SetNWInt("EFTRevolverRoundCount", clip) end
            end)
        end
    elseif anim == "reload" then
        swep.nosgreload = true
        if SERVER then swep:SetClip1(0) end -- animation.DumpAmmo unloads LoadedRounds too
        timer.Simple(2, function() -- wah wah
            if IsValid(swep) then 
                swep:SetNWInt("EFTRevolverCylRot", 5)
                local reserve = infammo:GetBool() and 6 or math.Clamp(swep:GetOwner():GetAmmoCount(swep.Ammo), 0, 6)
                if reserve == 0 then reserve = 6 end
                swep.roundcount = reserve
                swep:SetNWInt("EFTRevolverRoundCount", swep.roundcount)
            end
        end)
    end
    
    if !swep.nocylrot then
        -- print(anim .. "__" .. swep:GetNWInt("EFTRevolverCylRot", 0))
        return anim .. "__" .. (5 - swep:GetNWInt("EFTRevolverCylRot", 0))
    else
        -- print(anim)
        return anim
    end
end


local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
local switchi = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }

local shellout = { path .. "rhino_round_out1.ogg", path .. "rhino_round_out2.ogg", path .. "rhino_round_out3.ogg" }
local shellin = { path .. "rhino_round_in1.ogg", path .. "rhino_round_in2.ogg", path .. "rhino_round_in3.ogg" }

local magcheck = {
    { s = randspin, t = 0 },
    { s = path .. "rhino_drum_releasebutton.ogg", t = 0.05 },
    { s = path .. "rhino_drum_out.ogg", t = 6/26 },
    { s = randspin, t = 35/26 },
    { s = path .. "rhino_drum_in.ogg", t = 38/26 },
    { s = randspin, t = 50/26 },
}
local look = {
    { s = randspin, t = 0.05 },
    { s = randspin, t = 23/26 },
    -- { s = randspin, t = 37/26 },
    -- { s = randspin, t = 58/26 },
    { s = randspin, t = 60/26 },
}
local cock = {
    { s = randspin, t = 0 },
    { s = path .. "rhino_hammer_arm.ogg", t = 5/26 },
    { s = path .. "rhino_drum_releasebutton.ogg", t = 5/26 + 0.25 },
}

local sg_start1 = {
    { s = randspin, t = 0 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 2/26 },
    { s = path .. "rhino_drum_out.ogg", t = 4/26 },
    { s = randspin, t = 21/26 },  

    { s = shellout, t = 42/26 - 0.15 },
    { s = shellout, t = 72/26 - 0.15 },
    { s = shellout, t = 99/26 - 0.15 },
    { s = shellout, t = 133/26 - 0.15 },
    { s = shellout, t = 163/26 - 0.15 },

    {shelleject = true, att = 2, t = 42/26 + 0.2},
    {shelleject = true, att = 2, t = 72/26 + 0.2},
    {shelleject = true, att = 2, t = 99/26 + 0.2},
    {shelleject = true, att = 2, t = 133/26 + 0.2},
    {shelleject = true, att = 2, t = 163/26 + 0.2},
}

local sg_start0 = sg_start1
local sg_start2 = sg_start1
local sg_start3 = sg_start1
local sg_start4 = sg_start1
local sg_start5 = sg_start1

local sg_insert1 = {
    { s = randspin, t = 0/26 },
    { s = shellin, t = 12/26 },
}
local sg_insert2 = {
    { s = shellin, t = 12/26 },
}
local sg_insert3 = {
    { s = randspin, t = 0/26 },
    { s = shellin, t = 12/26 },
}
local sg_insert4 = {
    { s = shellin, t = 11/26 },
}
local sg_insert5 = {
    { s = shellin, t = 11/26 },
}
local sg_end = {
    { s = randspin, t = 6/26 },
    { s = path .. "rhino_drum_in.ogg", t = 5/26 },
    { s = randspin, t = 22/26 },
}

local ff_start6 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rhino_drum_out.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rhino_drum_purge_all.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
    {shelleject = true, att = 2, t = 1.75},
    {shelleject = true, att = 2, t = 1.8},
    {shelleject = true, att = 2, t = 1.85},
}
local ff_start5 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rhino_drum_out.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rhino_drum_purge_all.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
    {shelleject = true, att = 2, t = 1.75},
    {shelleject = true, att = 2, t = 1.8},
}
local ff_start4 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rhino_drum_out.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rhino_drum_purge_all.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
    {shelleject = true, att = 2, t = 1.75},
}
local ff_start3 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rhino_drum_out.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rhino_drum_purge_all.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
}
local ff_start2 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rhino_drum_out.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rhino_drum_purge_all.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
}
local ff_start1 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rhino_drum_out.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rhino_drum_purge_all.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
}
local ff_insert1 = {
    { s = randspin, t = 0/30 },
    { s = shellin, t = 17/30 },
}
local ff_insert2 = {
    { s = shellin, t = 6/30 },
}
local ff_insert3 = {
    { s = shellin, t = 7/30  },
}
local ff_insert4 = {
    { s = shellin, t = 7/30 },
}
local ff_insert5 = {
    { s = shellin, t = 8/30 },
}
local ff_insert6 = {
    { s = shellin, t = 5/30 },
}
local ff_end1 = {
    { s = randspin, t = 3/26 },
    { s = path .. "rhino_drum_in.ogg", t = 20/26 },
    { s = randspin, t = 41/26 },
}
local ff_end6 = {
    { s = path .. "rhino_drum_in.ogg", t = 6.5/26 },
    { s = randspin, t = 24/26 },
}

local sloader = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rhino_drum_out.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rhino_drum_purge_all.ogg", t = 27/26 },
    { s = path .. "m203_hand_out_tube.ogg", t = 61/26 },
    { s = path .. "mts255_round_extract1.ogg", t = 66/26 },
    { s = path .. "rhino_drum_releasebutton.ogg", t = 72/26 },
    { s = randspin, t = 38/26 },
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 44/26 },
    { s = path .. "rhino_drum_in.ogg", t = 88/26 },
    { s = randspin, t = 97/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
    {shelleject = true, att = 2, t = 1.75},
    {shelleject = true, att = 2, t = 1.8},
    {shelleject = true, att = 2, t = 1.85},

    {hide = 1, t = 0},
    {hide = 0, t = 48/26},
    {hide = 1, t = 86/26},
}

local drawa = { { s = "arc9_eft_shared/pm_draw.ogg", t = 0 } }
local holstera = { { s = "arc9_eft_shared/pm_holster.ogg", t = 0 } }
local fireda = { { s = path .. "rhino_hammer_release.ogg", t = 0.06 } }
local firesa = { { s = path .. "rhino_hammer_release.ogg", t = 0 } }
local firedadry = { { s = path .. "rhino_hammer_release.ogg", t = 0.0 } }
local firesadry = { 
    { s = path .. "rhino_hammer_release.ogg", t = 0 },
    { s = randspin, t = 0.25 },
    { s = path .. "rhino_hammer_arm.ogg", t = 0.25+5/24 },
    { s = path .. "rhino_drum_releasebutton.ogg", t = 0.5+5/24 },
}

local enterbip = {
    { s = { "weapons/darsu_eft/bipod/bipod_atlas_unfold_1.ogg", "weapons/darsu_eft/bipod/bipod_atlas_unfold_2.ogg", "weapons/darsu_eft/bipod/bipod_atlas_unfold_3.ogg" }, t = 0.0 },
    { s = { "weapons/darsu_eft/bipod/bipod_stand_on_1.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_2.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_3.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_4.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_5.ogg" }, t = 0.2 },
}
local exitbip = {
    { s = { "weapons/darsu_eft/bipod/bipod_atlas_fold_1.ogg", "weapons/darsu_eft/bipod/bipod_atlas_fold_2.ogg", "weapons/darsu_eft/bipod/bipod_atlas_fold_3.ogg" }, t = 0.0 },
}

SWEP.Animations = {
    ["idle"] = { Source = "idle__0" },
    ["idle__0"] = { Source = "idle__0" },
    ["idle__1"] = { Source = "idle__1" },
    ["idle__2"] = { Source = "idle__2" },
    ["idle__3"] = { Source = "idle__3" },
    ["idle__4"] = { Source = "idle__4" },
    ["idle__5"] = { Source = "idle__5" },

    ["draw"] = { Source = "draw__0", EventTable = drawa },
    ["holster"] = { Source = "holster__0", EventTable = holstera },

    ["draw__0"] = { Source = "draw__0", EventTable = drawa },
    ["draw__1"] = { Source = "draw__1", EventTable = drawa },
    ["draw__2"] = { Source = "draw__2", EventTable = drawa },
    ["draw__3"] = { Source = "draw__3", EventTable = drawa },
    ["draw__4"] = { Source = "draw__4", EventTable = drawa },
    ["draw__5"] = { Source = "draw__5", EventTable = drawa },

    ["holster__0"] = { Source = "holster__0", EventTable = holstera },
    ["holster__1"] = { Source = "holster__1", EventTable = holstera },
    ["holster__2"] = { Source = "holster__2", EventTable = holstera },
    ["holster__3"] = { Source = "holster__3", EventTable = holstera },
    ["holster__4"] = { Source = "holster__4", EventTable = holstera },
    ["holster__5"] = { Source = "holster__5", EventTable = holstera },


    ["fire_da__0"] = { Source = "fire_da__5", EventTable = fireda },
    ["fire_da__1"] = { Source = "fire_da__0", EventTable = fireda },
    ["fire_da__2"] = { Source = "fire_da__1", EventTable = fireda },
    ["fire_da__3"] = { Source = "fire_da__2", EventTable = fireda },
    ["fire_da__4"] = { Source = "fire_da__3", EventTable = fireda },
    ["fire_da__5"] = { Source = "fire_da__4", EventTable = fireda },

    ["fire_sa__0"] = { Source = "fire_sa__5", EventTable = firesa, NoIdle = true },
    ["fire_sa__1"] = { Source = "fire_sa__0", EventTable = firesa, NoIdle = true },
    ["fire_sa__2"] = { Source = "fire_sa__1", EventTable = firesa, NoIdle = true },
    ["fire_sa__3"] = { Source = "fire_sa__2", EventTable = firesa, NoIdle = true },
    ["fire_sa__4"] = { Source = "fire_sa__3", EventTable = firesa, NoIdle = true },
    ["fire_sa__5"] = { Source = "fire_sa__4", EventTable = firesa, NoIdle = true },

    ["fire_da_dry__0"] = { Source = "fire_da_dry__5", EventTable = firedadry },
    ["fire_da_dry__1"] = { Source = "fire_da_dry__0", EventTable = firedadry },
    ["fire_da_dry__2"] = { Source = "fire_da_dry__1", EventTable = firedadry },
    ["fire_da_dry__3"] = { Source = "fire_da_dry__2", EventTable = firedadry },
    ["fire_da_dry__4"] = { Source = "fire_da_dry__3", EventTable = firedadry },
    ["fire_da_dry__5"] = { Source = "fire_da_dry__4", EventTable = firedadry },

    ["fire_dry__0"] = { Source = "fire_dry__5", EventTable = firesadry },
    ["fire_dry__1"] = { Source = "fire_dry__0", EventTable = firesadry },
    ["fire_dry__2"] = { Source = "fire_dry__1", EventTable = firesadry },
    ["fire_dry__3"] = { Source = "fire_dry__2", EventTable = firesadry },
    ["fire_dry__4"] = { Source = "fire_dry__3", EventTable = firesadry },
    ["fire_dry__5"] = { Source = "fire_dry__4", EventTable = firesadry },

    ["cycle__0"] = { Source = "cock__5", EventTable = cock, Mult = 0.9 },
    ["cycle__1"] = { Source = "cock__0", EventTable = cock, Mult = 0.9 },
    ["cycle__2"] = { Source = "cock__1", EventTable = cock, Mult = 0.9 },
    ["cycle__3"] = { Source = "cock__2", EventTable = cock, Mult = 0.9 },
    ["cycle__4"] = { Source = "cock__3", EventTable = cock, Mult = 0.9 },
    ["cycle__5"] = { Source = "cock__4", EventTable = cock, Mult = 0.9 },


    ["sg_reload_start1__0"] = { Source = "sg_reload_start1__0", EventTable = sg_start0 },
    ["sg_reload_start1__1"] = { Source = "sg_reload_start1__1", EventTable = sg_start1 },
    ["sg_reload_start1__2"] = { Source = "sg_reload_start1__2", EventTable = sg_start2 },
    ["sg_reload_start1__3"] = { Source = "sg_reload_start1__3", EventTable = sg_start3 },
    ["sg_reload_start1__4"] = { Source = "sg_reload_start1__4", EventTable = sg_start4 },
    ["sg_reload_start1__5"] = { Source = "sg_reload_start1__5", EventTable = sg_start5 },

    ["sg_reload_start2__0"] = { Source = "sg_reload_start2__0", EventTable = sg_start0 },
    ["sg_reload_start2__1"] = { Source = "sg_reload_start2__1", EventTable = sg_start1 },
    ["sg_reload_start2__2"] = { Source = "sg_reload_start2__2", EventTable = sg_start2 },
    ["sg_reload_start2__3"] = { Source = "sg_reload_start2__3", EventTable = sg_start3 },
    ["sg_reload_start2__4"] = { Source = "sg_reload_start2__4", EventTable = sg_start4 },
    ["sg_reload_start2__5"] = { Source = "sg_reload_start2__5", EventTable = sg_start5 },

    ["sg_reload_start3__0"] = { Source = "sg_reload_start3__0", EventTable = sg_start0 },
    ["sg_reload_start3__1"] = { Source = "sg_reload_start3__1", EventTable = sg_start1 },
    ["sg_reload_start3__2"] = { Source = "sg_reload_start3__2", EventTable = sg_start2 },
    ["sg_reload_start3__3"] = { Source = "sg_reload_start3__3", EventTable = sg_start3 },
    ["sg_reload_start3__4"] = { Source = "sg_reload_start3__4", EventTable = sg_start4 },
    ["sg_reload_start3__5"] = { Source = "sg_reload_start3__5", EventTable = sg_start5 },

    ["sg_reload_start4__0"] = { Source = "sg_reload_start4__0", EventTable = sg_start0 },
    ["sg_reload_start4__1"] = { Source = "sg_reload_start4__1", EventTable = sg_start1 },
    ["sg_reload_start4__2"] = { Source = "sg_reload_start4__2", EventTable = sg_start2 },
    ["sg_reload_start4__3"] = { Source = "sg_reload_start4__3", EventTable = sg_start3 },
    ["sg_reload_start4__4"] = { Source = "sg_reload_start4__4", EventTable = sg_start4 },
    ["sg_reload_start4__5"] = { Source = "sg_reload_start4__5", EventTable = sg_start5 },

    ["sg_reload_start5__0"] = { Source = "sg_reload_start5__0", EventTable = sg_start0 },
    ["sg_reload_start5__1"] = { Source = "sg_reload_start5__1", EventTable = sg_start1 },
    ["sg_reload_start5__2"] = { Source = "sg_reload_start5__2", EventTable = sg_start2 },
    ["sg_reload_start5__3"] = { Source = "sg_reload_start5__3", EventTable = sg_start3 },
    ["sg_reload_start5__4"] = { Source = "sg_reload_start5__4", EventTable = sg_start4 },
    ["sg_reload_start5__5"] = { Source = "sg_reload_start5__5", EventTable = sg_start5 },

    ["sg_reload_start6__0"] = { Source = "sg_reload_start6__0", EventTable = sg_start0 },
    ["sg_reload_start6__1"] = { Source = "sg_reload_start6__1", EventTable = sg_start1 },
    ["sg_reload_start6__2"] = { Source = "sg_reload_start6__2", EventTable = sg_start2 },
    ["sg_reload_start6__3"] = { Source = "sg_reload_start6__3", EventTable = sg_start3 },
    ["sg_reload_start6__4"] = { Source = "sg_reload_start6__4", EventTable = sg_start4 },
    ["sg_reload_start6__5"] = { Source = "sg_reload_start6__5", EventTable = sg_start5 },

    -- 1/6 fine
    ["sg_reload_start5_offset1__0"] = { Source = "sg_reload_start4_offset1__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start5_offset1__1"] = { Source = "sg_reload_start4_offset1__1", EventTable = sg_start1 },
    ["sg_reload_start5_offset1__2"] = { Source = "sg_reload_start4_offset1__2", EventTable = sg_start2 },
    ["sg_reload_start5_offset1__3"] = { Source = "sg_reload_start4_offset1__3", EventTable = sg_start3 },
    ["sg_reload_start5_offset1__4"] = { Source = "sg_reload_start4_offset1__4", EventTable = sg_start4 },
    ["sg_reload_start5_offset1__5"] = { Source = "sg_reload_start4_offset1__5", EventTable = sg_start5 },

    ["sg_reload_start5_offset2__0"] = { Source = "sg_reload_start4_offset2__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start5_offset2__1"] = { Source = "sg_reload_start4_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start5_offset2__2"] = { Source = "sg_reload_start4_offset2__2", EventTable = sg_start2 },
    ["sg_reload_start5_offset2__3"] = { Source = "sg_reload_start4_offset2__3", EventTable = sg_start3 },
    ["sg_reload_start5_offset2__4"] = { Source = "sg_reload_start4_offset2__4", EventTable = sg_start4 },
    ["sg_reload_start5_offset2__5"] = { Source = "sg_reload_start4_offset2__5", EventTable = sg_start5 },

    ["sg_reload_start5_offset3__0"] = { Source = "sg_reload_start4_offset3__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start5_offset3__1"] = { Source = "sg_reload_start4_offset3__1", EventTable = sg_start1 },
    ["sg_reload_start5_offset3__2"] = { Source = "sg_reload_start4_offset3__2", EventTable = sg_start2 },
    ["sg_reload_start5_offset3__3"] = { Source = "sg_reload_start4_offset3__3", EventTable = sg_start3 },
    ["sg_reload_start5_offset3__4"] = { Source = "sg_reload_start4_offset3__4", EventTable = sg_start4 },
    ["sg_reload_start5_offset3__5"] = { Source = "sg_reload_start4_offset3__5", EventTable = sg_start5 },

    ["sg_reload_start5_offset4__0"] = { Source = "sg_reload_start4_offset4__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start5_offset4__1"] = { Source = "sg_reload_start4_offset4__1", EventTable = sg_start1 },
    ["sg_reload_start5_offset4__2"] = { Source = "sg_reload_start4_offset4__2", EventTable = sg_start2 },
    ["sg_reload_start5_offset4__3"] = { Source = "sg_reload_start4_offset4__3", EventTable = sg_start3 },
    ["sg_reload_start5_offset4__4"] = { Source = "sg_reload_start4_offset4__4", EventTable = sg_start4 },
    ["sg_reload_start5_offset4__5"] = { Source = "sg_reload_start4_offset4__5", EventTable = sg_start5 },
    

    -- 2/6 good
    ["sg_reload_start4_offset1__0"] = { Source = "sg_reload_start3_offset1__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start4_offset1__1"] = { Source = "sg_reload_start3_offset1__1", EventTable = sg_start1 },
    ["sg_reload_start4_offset1__2"] = { Source = "sg_reload_start3_offset1__2", EventTable = sg_start2 },
    ["sg_reload_start4_offset1__3"] = { Source = "sg_reload_start3_offset1__3", EventTable = sg_start3 },
    ["sg_reload_start4_offset1__4"] = { Source = "sg_reload_start3_offset1__4", EventTable = sg_start4 },
    ["sg_reload_start4_offset1__5"] = { Source = "sg_reload_start3_offset1__5", EventTable = sg_start5 },

    ["sg_reload_start4_offset2__0"] = { Source = "sg_reload_start3_offset2__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start4_offset2__1"] = { Source = "sg_reload_start3_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start4_offset2__2"] = { Source = "sg_reload_start3_offset2__2", EventTable = sg_start2 },
    ["sg_reload_start4_offset2__3"] = { Source = "sg_reload_start3_offset2__3", EventTable = sg_start3 },
    ["sg_reload_start4_offset2__4"] = { Source = "sg_reload_start3_offset2__4", EventTable = sg_start4 },
    ["sg_reload_start4_offset2__5"] = { Source = "sg_reload_start3_offset2__5", EventTable = sg_start5 },

    ["sg_reload_start4_offset3__0"] = { Source = "sg_reload_start3_offset3__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start4_offset3__1"] = { Source = "sg_reload_start3_offset3__1", EventTable = sg_start1 },
    ["sg_reload_start4_offset3__2"] = { Source = "sg_reload_start3_offset3__2", EventTable = sg_start2 },
    ["sg_reload_start4_offset3__3"] = { Source = "sg_reload_start3_offset3__3", EventTable = sg_start3 },
    ["sg_reload_start4_offset3__4"] = { Source = "sg_reload_start3_offset3__4", EventTable = sg_start4 },
    ["sg_reload_start4_offset3__5"] = { Source = "sg_reload_start3_offset3__5", EventTable = sg_start5 },


    -- 3/6 hoo
    ["sg_reload_start3_offset1__0"] = { Source = "sg_reload_start2_offset1__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start3_offset1__1"] = { Source = "sg_reload_start2_offset1__1", EventTable = sg_start1 },
    ["sg_reload_start3_offset1__2"] = { Source = "sg_reload_start2_offset1__2", EventTable = sg_start2 },
    ["sg_reload_start3_offset1__3"] = { Source = "sg_reload_start2_offset1__3", EventTable = sg_start3 },
    ["sg_reload_start3_offset1__4"] = { Source = "sg_reload_start2_offset1__4", EventTable = sg_start4 },
    ["sg_reload_start3_offset1__5"] = { Source = "sg_reload_start2_offset1__5", EventTable = sg_start5 },

    ["sg_reload_start3_offset2__0"] = { Source = "sg_reload_start2_offset2__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start3_offset2__1"] = { Source = "sg_reload_start2_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start3_offset2__2"] = { Source = "sg_reload_start2_offset2__2", EventTable = sg_start2 },
    ["sg_reload_start3_offset2__3"] = { Source = "sg_reload_start2_offset2__3", EventTable = sg_start3 },
    ["sg_reload_start3_offset2__4"] = { Source = "sg_reload_start2_offset2__4", EventTable = sg_start4 },
    ["sg_reload_start3_offset2__5"] = { Source = "sg_reload_start2_offset2__5", EventTable = sg_start5 },

    -- 4/6
    ["sg_reload_start2_offset1__0"] = { Source = "sg_reload_start1_offset2__0", EventTable = sg_start0 }, -- good
    ["sg_reload_start2_offset1__1"] = { Source = "sg_reload_start1_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start2_offset1__2"] = { Source = "sg_reload_start1_offset2__2", EventTable = sg_start2 },
    ["sg_reload_start2_offset1__3"] = { Source = "sg_reload_start1_offset2__3", EventTable = sg_start3 },
    ["sg_reload_start2_offset1__4"] = { Source = "sg_reload_start1_offset2__4", EventTable = sg_start4 },
    ["sg_reload_start2_offset1__5"] = { Source = "sg_reload_start1_offset2__5", EventTable = sg_start5 },






    ["sg_reload_insert1"] = { Source = "sg_reload_insert1", EventTable = sg_insert1 },
    ["sg_reload_insert2"] = { Source = "sg_reload_insert2", EventTable = sg_insert2 },
    ["sg_reload_insert3"] = { Source = "sg_reload_insert3", EventTable = sg_insert3 },
    ["sg_reload_insert4"] = { Source = "sg_reload_insert4", EventTable = sg_insert4 },
    ["sg_reload_insert5"] = { Source = "sg_reload_insert5", EventTable = sg_insert5 },

    ["sg_reload_end"] = { Source = "sg_reload_end", EventTable = sg_end },

    ["fistful_start1__0"] = { Source = "fistful_start__0", EventTable = ff_start1, NoMagSwap = true },
    ["fistful_start1__1"] = { Source = "fistful_start__1", EventTable = ff_start1, NoMagSwap = true },
    ["fistful_start1__2"] = { Source = "fistful_start__2", EventTable = ff_start1, NoMagSwap = true },
    ["fistful_start1__3"] = { Source = "fistful_start__3", EventTable = ff_start1, NoMagSwap = true },
    ["fistful_start1__4"] = { Source = "fistful_start__4", EventTable = ff_start1, NoMagSwap = true },
    ["fistful_start1__5"] = { Source = "fistful_start__5", EventTable = ff_start1, NoMagSwap = true },
    ["fistful_start2__0"] = { Source = "fistful_start__0", EventTable = ff_start2, NoMagSwap = true },
    ["fistful_start2__1"] = { Source = "fistful_start__1", EventTable = ff_start2, NoMagSwap = true },
    ["fistful_start2__2"] = { Source = "fistful_start__2", EventTable = ff_start2, NoMagSwap = true },
    ["fistful_start2__3"] = { Source = "fistful_start__3", EventTable = ff_start2, NoMagSwap = true },
    ["fistful_start2__4"] = { Source = "fistful_start__4", EventTable = ff_start2, NoMagSwap = true },
    ["fistful_start2__5"] = { Source = "fistful_start__5", EventTable = ff_start2, NoMagSwap = true },
    ["fistful_start3__0"] = { Source = "fistful_start__0", EventTable = ff_start3, NoMagSwap = true },
    ["fistful_start3__1"] = { Source = "fistful_start__1", EventTable = ff_start3, NoMagSwap = true },
    ["fistful_start3__2"] = { Source = "fistful_start__2", EventTable = ff_start3, NoMagSwap = true },
    ["fistful_start3__3"] = { Source = "fistful_start__3", EventTable = ff_start3, NoMagSwap = true },
    ["fistful_start3__4"] = { Source = "fistful_start__4", EventTable = ff_start3, NoMagSwap = true },
    ["fistful_start3__5"] = { Source = "fistful_start__5", EventTable = ff_start3, NoMagSwap = true },
    ["fistful_start4__0"] = { Source = "fistful_start__0", EventTable = ff_start4, NoMagSwap = true },
    ["fistful_start4__1"] = { Source = "fistful_start__1", EventTable = ff_start4, NoMagSwap = true },
    ["fistful_start4__2"] = { Source = "fistful_start__2", EventTable = ff_start4, NoMagSwap = true },
    ["fistful_start4__3"] = { Source = "fistful_start__3", EventTable = ff_start4, NoMagSwap = true },
    ["fistful_start4__4"] = { Source = "fistful_start__4", EventTable = ff_start4, NoMagSwap = true },
    ["fistful_start4__5"] = { Source = "fistful_start__5", EventTable = ff_start4, NoMagSwap = true },
    ["fistful_start5__0"] = { Source = "fistful_start__0", EventTable = ff_start5, NoMagSwap = true },
    ["fistful_start5__1"] = { Source = "fistful_start__1", EventTable = ff_start5, NoMagSwap = true },
    ["fistful_start5__2"] = { Source = "fistful_start__2", EventTable = ff_start5, NoMagSwap = true },
    ["fistful_start5__3"] = { Source = "fistful_start__3", EventTable = ff_start5, NoMagSwap = true },
    ["fistful_start5__4"] = { Source = "fistful_start__4", EventTable = ff_start5, NoMagSwap = true },
    ["fistful_start5__5"] = { Source = "fistful_start__5", EventTable = ff_start5, NoMagSwap = true },
    ["fistful_start6__0"] = { Source = "fistful_start__0", EventTable = ff_start6, NoMagSwap = true },
    ["fistful_start6__1"] = { Source = "fistful_start__1", EventTable = ff_start6, NoMagSwap = true },
    ["fistful_start6__2"] = { Source = "fistful_start__2", EventTable = ff_start6, NoMagSwap = true },
    ["fistful_start6__3"] = { Source = "fistful_start__3", EventTable = ff_start6, NoMagSwap = true },
    ["fistful_start6__4"] = { Source = "fistful_start__4", EventTable = ff_start6, NoMagSwap = true },
    ["fistful_start6__5"] = { Source = "fistful_start__5", EventTable = ff_start6, NoMagSwap = true },
    ["fistful_insert1"] = { Source = "fistful_insert1", EventTable = ff_insert1, NoMagSwap = true, Mult = 30/26 },
    ["fistful_insert2"] = { Source = "fistful_insert2", EventTable = ff_insert2, NoMagSwap = true, Mult = 30/26 },
    ["fistful_insert3"] = { Source = "fistful_insert3", EventTable = ff_insert3, NoMagSwap = true, Mult = 30/26 },
    ["fistful_insert4"] = { Source = "fistful_insert4", EventTable = ff_insert4, NoMagSwap = true, Mult = 30/26 },
    ["fistful_insert5"] = { Source = "fistful_insert5", EventTable = ff_insert5, NoMagSwap = true, Mult = 30/26 },
    ["fistful_insert6"] = { Source = "fistful_insert6", EventTable = ff_insert6, NoMagSwap = true, Mult = 30/26 },
    ["fistful_end_r1"] = { Source = "fistful_end_r1", EventTable = ff_end1 },
    ["fistful_end_r2"] = { Source = "fistful_end_r2", EventTable = ff_end1 },
    ["fistful_end_r3"] = { Source = "fistful_end_r3", EventTable = ff_end1 },
    ["fistful_end_r4"] = { Source = "fistful_end_r4", EventTable = ff_end1 },
    ["fistful_end_r5"] = { Source = "fistful_end_r5", EventTable = ff_end1 },
    ["fistful_end_r6"] = { Source = "fistful_end_r6", EventTable = ff_end6 },

    -- ["dryfire"] = { Source = "fire_dry" },

    ["reload__0"] = { Source = "speedloader_reload__0", EventTable = sloader, NoMagSwap = true, DropMagAt = 86/26 },
    ["reload__1"] = { Source = "speedloader_reload__1", EventTable = sloader, NoMagSwap = true, DropMagAt = 86/26 },
    ["reload__2"] = { Source = "speedloader_reload__2", EventTable = sloader, NoMagSwap = true, DropMagAt = 86/26 },
    ["reload__3"] = { Source = "speedloader_reload__3", EventTable = sloader, NoMagSwap = true, DropMagAt = 86/26 },
    ["reload__4"] = { Source = "speedloader_reload__4", EventTable = sloader, NoMagSwap = true, DropMagAt = 86/26 },
    ["reload__5"] = { Source = "speedloader_reload__5", EventTable = sloader, NoMagSwap = true, DropMagAt = 86/26 },

    ["inspect"] = { -- shutup arc9 we have inspect
        Source = "idle",
        Time = 0.05,
    },

    ["look__0"] = { Source = "look__0", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__1"] = { Source = "look__1", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__2"] = { Source = "look__2", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__3"] = { Source = "look__3", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__4"] = { Source = "look__4", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__5"] = { Source = "look__5", MinProgress = 0.95, FireASAP = true, EventTable = look },

    ["mag_check__0"] = { Source = "mag_check__0", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__1"] = { Source = "mag_check__1", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__2"] = { Source = "mag_check__2", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__3"] = { Source = "mag_check__3", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__4"] = { Source = "mag_check__4", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__5"] = { Source = "mag_check__5", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },

    ["toggle__0"] = {        Source = "mod_switch__0", EventTable = switchi },
    ["switchsights__0"] = {  Source = "mod_switch__0", EventTable = switchi },
    ["toggle__1"] = {        Source = "mod_switch__1", EventTable = switchi },
    ["switchsights__1"] = {  Source = "mod_switch__1", EventTable = switchi },
    ["toggle__2"] = {        Source = "mod_switch__2", EventTable = switchi },
    ["switchsights__2"] = {  Source = "mod_switch__2", EventTable = switchi },
    ["toggle__3"] = {        Source = "mod_switch__3", EventTable = switchi },
    ["switchsights__3"] = {  Source = "mod_switch__3", EventTable = switchi },
    ["toggle__4"] = {        Source = "mod_switch__4", EventTable = switchi },
    ["switchsights__4"] = {  Source = "mod_switch__4", EventTable = switchi },
    ["toggle__5"] = {        Source = "mod_switch__4", EventTable = switchi },
    ["switchsights__5"] = {  Source = "mod_switch__4", EventTable = switchi },


    -- ["firemode_1"] = { Source = "cocko__0", EventTable = cock },
    -- ["firemode_1__0"] = { Source = "cocko__0", EventTable = cock },
    -- ["firemode_1__1"] = { Source = "cocko__1", EventTable = cock },
    -- ["firemode_1__2"] = { Source = "cocko__2", EventTable = cock },
    -- ["firemode_1__3"] = { Source = "cocko__3", EventTable = cock },
    -- ["firemode_1__4"] = { Source = "cocko__4", EventTable = cock },
    -- ["firemode_2"] = { Source = "cocko__0", EventTable = cock },
    -- ["firemode_2__0"] = { Source = "cocko__0", Reverse = true, EventTable = cock },
    -- ["firemode_2__1"] = { Source = "cocko__1", Reverse = true, EventTable = cock },
    -- ["firemode_2__2"] = { Source = "cocko__2", Reverse = true, EventTable = cock },
    -- ["firemode_2__3"] = { Source = "cocko__3", Reverse = true, EventTable = cock },
    -- ["firemode_2__4"] = { Source = "cocko__4", Reverse = true, EventTable = cock },

    
    -- ["enter_bipod__0"] = { Source = "action__0", EventTable = enterbip },
    -- ["exit_bipod__0"] = { Source = "action__0", EventTable = exitbip },
    -- ["enter_bipod__1"] = { Source = "action__1", EventTable = enterbip },
    -- ["exit_bipod__1"] = { Source = "action__1", EventTable = exitbip },
    -- ["enter_bipod__2"] = { Source = "action__2", EventTable = enterbip },
    -- ["exit_bipod__2"] = { Source = "action__2", EventTable = exitbip },
    -- ["enter_bipod__3"] = { Source = "action__3", EventTable = enterbip },
    -- ["exit_bipod__3"] = { Source = "action__3", EventTable = exitbip },
    -- ["enter_bipod__4"] = { Source = "action__4", EventTable = enterbip },
    -- ["exit_bipod__4"] = { Source = "action__4", EventTable = exitbip },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasMag", "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_rhino_pgrip_std"] = { Bodygroups = { {4, 2} } },
    ["eft_rhino_pgrip_poly"] = { Bodygroups = { {4, 1} } },
    ["eft_rhino_mag_std"] = { Bodygroups = { {2, 1} } },
    -- ["eft_rhino_speedloader"] = { Bodygroups = { {3, 1} } },

    ["eft_rhino_barrel_40ds"] = { 
        Bodygroups = { {1, 1} },
        AttPosMods = {
            [4] = { Pos = Vector(-0.078, 24.48, 1.85) },
            [7] = { Pos = Vector(-0.078, 24.6, -0.22) },
        }
    },
    ["eft_rhino_barrel_60ds"] = { 
        Bodygroups = { {1, 3} },
        AttPosMods = {
            [4] = { Pos = Vector(-0.078, 26.53, 1.85) },
            [7] = { Pos = Vector(-0.078, 26.6, -0.22) },
        }
    },
}

local roundbgs = {
    ["eft_ammo_9x19"] = 1,
    ["eft_ammo_357_fmj"] = 2,
    ["eft_ammo_357_jhp"] = 4,
    ["eft_ammo_357_hp"] = 3,
    ["eft_ammo_357_sp"] = 5,
}

SWEP.Hook_ModifyBodygroups = function(swep, data)
    local eles = data.elements
    local mdl = data.model
    
    local hasmag, hasloader = eles["eft_rhino_mag_std"], eles["eft_rhino_speedloader"]
    if hasloader and swep:GetReloading() and !swep:GetShouldShotgunReload() then mdl:SetBodygroup(3, 1) else mdl:SetBodygroup(3, 0) end

    local rc = swep:GetNWInt("EFTRevolverRoundCount", 6) or 6
    
    local ammotype = 0
    for k, v in pairs(roundbgs) do
        if eles[k] then ammotype = v break end 
    end

    if rc > 0 and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end -- prob could be better but h
    if rc > 1 and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    if rc > 2 and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end
    if rc > 3 and hasmag then mdl:SetBodygroup(8, ammotype) else mdl:SetBodygroup(8, 0) end
    if rc > 4 and hasmag then mdl:SetBodygroup(9, ammotype) else mdl:SetBodygroup(9, 0) end
    if rc > 5 and hasmag then mdl:SetBodygroup(10, ammotype) else mdl:SetBodygroup(10, 0) end
end

SWEP.Hook_HideBones = function(swep, bons)
    local loaded = swep:GetLoadedRounds()

    bons["shellport_001"] = loaded > 0
    bons["shellport_002"] = loaded > 1
    bons["shellport_003"] = loaded > 2
    bons["shellport_004"] = loaded > 3
    bons["shellport_005"] = loaded > 4
    bons["shellport_006"] = loaded > 5

    return bons
end

SWEP.ExtraSightDistanceNoRT = true

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = "eft_ammo_9x19_pst_gzh",
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -4, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_rhino_mag",
        Bone = "mod_magazine",
        Installed = "eft_rhino_mag_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Category = "eft_rhino_pgrip",
        Bone = "mod_pistol_grip",
        Installed = "eft_rhino_pgrip_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_rhino_fs",
        Bone = "weapon",
        Installed = "eft_rhino_fs_std",
        Pos = Vector(-0.078, 22.52, 1.77),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    -- {
    --     PrintName = ARC9:GetPhrase("eft_cat_tactical"),
    --     Category = {"eft_tactical", "eft_tactical_top", "eft_tactical_top_big", "eft_rsh12_tacticalslot", "eft_bipod"},
    --     RejectAttachments = { ["eft_tactical_raptar"] = true },
    --     Bone = "mod_tactical",
    --     Pos = Vector(0, 0, 0),
    --     Ang = Angle(0, -90, 0),
    --     Icon_Offset = Vector(0, 0, 0),
    -- },
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_slot_rhino", "eft_custom_slot_revolver"},
        Bone = "weapon",
        Pos = Vector(0, 15, -2),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
        -- CosmeticOnly = true,
    },
}