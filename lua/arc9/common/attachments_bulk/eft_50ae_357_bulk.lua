local ATT = {}

local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local mult9 = GetConVar("arc9_eft_mult_pistol"):GetFloat() or 0.5

-- i don't have actual damage on distance stats for 50ae
-- https://tarkov-ballistics.com/charts/damage_by_distance.html

///////////////////////////////////////      eft_ammo_50ae_copper


ATT = {}

ATT.PrintName = ".50 AE Copper Solid"
ATT.CompactName = "Copper"
ATT.Icon = Material("entities/eft_deagle_attachments/50c.png", "mips smooth")
ATT.Description = [[A .50 Action Express Hawk Copper Solid cartridge (12.7x33mm) with a 400 grain precision bullet, designed to direct a tremendous amount of energy into the target. One of the most powerful unitary pistol cartridges in the world and has a significant lethality.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".50 AE Copper Solid"

ATT.DamageMax = 94 * mult9
ATT.DamageMin = 94 * 0.163 * mult9
ATT.PhysBulletMuzzleVelocity = 460 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.95
ATT.RecoilMult = 1.08
ATT.VisualRecoilMult = 1.08
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      33 *2.54/100/0.0254
ATT.PenetrationDelta = 56/100
ATT.ArmorPiercing =    56/100
ATT.RicochetChance =   10/100

-- ATT.DamageLookupTable = {
--     {   10/0.0254 * dmgrange, 
--     65 * mult9     },

--     {   100 /0.0254 * dmgrange, 
--     57 * mult9     },

--     {   200 /0.0254 * dmgrange, 
--     50.3 * mult9     },

--     {   300 /0.0254 * dmgrange, 
--     47.55 * mult9     },

--     {   400 /0.0254 * dmgrange, 
--     46 * mult9     },

--     {   500 /0.0254 * dmgrange, 
--     44.7 * mult9     },

--     {   600 /0.0254 * dmgrange, 
--     43.72 * mult9     },

--     {   700 /0.0254 * dmgrange, 
--     42.9 * mult9     },

--     {   800 /0.0254 * dmgrange, 
--     42.1 * mult9     },

--     {   900 /0.0254 * dmgrange, 
--     41.1 * mult9     },

--     {   1000 /0.0254 * dmgrange, 
--     40.77 * mult9     },
-- }

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 57.02	50.3	47.54	45.93	44.71	43.72	42.86	42.1	41.41	40.77


ATT.Category = {"eft_ammo_50ae"}


ARC9.LoadAttachment(ATT, "eft_ammo_50ae_copper")


///////////////////////////////////////      eft_ammo_50ae_fmj

ATT = {}

ATT.PrintName = ".50 AE FMJ"
ATT.CompactName = "FMJ"
ATT.Icon = Material("entities/eft_deagle_attachments/50fmj.png", "mips smooth")
ATT.Description = [[A .50 Action Express FMJ cartridge (12.7x33mm) with a 300 grain flat-nose bullet, which provides an enormous stopping power. One of the most powerful unitary pistol cartridges in the world and has a significant lethality.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".50 AE FMJ"

ATT.DamageMax = 85 * mult9
ATT.DamageMin = 85 * 0.131 * mult9
ATT.PhysBulletMuzzleVelocity = 440 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 0.9
ATT.RecoilMult = 1.1
ATT.VisualRecoilMult = 1.1
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      40 *2.54/100/0.0254
ATT.PenetrationDelta = 50/100
ATT.ArmorPiercing =    50/100
ATT.RicochetChance =   5/100

-- ATT.DamageLookupTable = {
--     {   10/0.0254 * dmgrange, 
--     45 * mult9     },

--     {   100 /0.0254 * dmgrange, 
--     44.1 * mult9     },

--     {   200 /0.0254 * dmgrange, 
--     43.3 * mult9     },

--     {   300 /0.0254 * dmgrange, 
--     42.56 * mult9     },

--     {   400 /0.0254 * dmgrange, 
--     41.9 * mult9     },

--     {   500 /0.0254 * dmgrange, 
--     41.26 * mult9     },

--     {   600 /0.0254 * dmgrange, 
--     40.66 * mult9     },

--     {   700 /0.0254 * dmgrange, 
--     40.1 * mult9     },

--     {   800 /0.0254 * dmgrange, 
--     39.6 * mult9     },

--     {   900 /0.0254 * dmgrange, 
--     39.1 * mult9     },

--     {   1000 /0.0254 * dmgrange, 
--     38.64 * mult9     },
-- }

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 44.09	43.3	42.56	41.88	41.26	40.66	40.11	39.59	39.1	38.64


ATT.Category = {"eft_ammo_50ae"}

ARC9.LoadAttachment(ATT, "eft_ammo_50ae_fmj")

///////////////////////////////////////      eft_ammo_50ae_jsp

ATT = {}

ATT.PrintName = ".50 AE Hawk JSP"
ATT.CompactName = "Hawk JSP"
ATT.Icon = Material("entities/eft_deagle_attachments/50jsp.png", "mips smooth")
ATT.Description = [[A .50 Action Express Hawk JSP cartridge (12.7x33mm) with a 400 grain jacketed soft point bullet, designed to penetrate and direct a tremendous amount of energy into the target. One of the most powerful unitary pistol cartridges in the world and has a significant lethality.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".50 AE Hawk JSP"

ATT.DamageMax = 122 * mult9
ATT.DamageMin = 122 * 0.166 * mult9
ATT.PhysBulletMuzzleVelocity = 465 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 1.05
ATT.RecoilMult = 1.02
ATT.VisualRecoilMult = 1.02
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      26 *2.54/100/0.0254
ATT.PenetrationDelta = 28/100
ATT.ArmorPiercing =    28/100
ATT.RicochetChance =   10/100

-- ATT.DamageLookupTable = {
--     {   10/0.0254 * dmgrange, 
--     46 * mult9     },

--     {   100 /0.0254 * dmgrange, 
--     44.1 * mult9     },

--     {   200 /0.0254 * dmgrange, 
--     43.3 * mult9     },

--     {   300 /0.0254 * dmgrange, 
--     42.56 * mult9     },

--     {   400 /0.0254 * dmgrange, 
--     41.9 * mult9     },

--     {   500 /0.0254 * dmgrange, 
--     41.26 * mult9     },

--     {   600 /0.0254 * dmgrange, 
--     40.66 * mult9     },

--     {   700 /0.0254 * dmgrange, 
--     40.1 * mult9     },

--     {   800 /0.0254 * dmgrange, 
--     39.6 * mult9     },

--     {   900 /0.0254 * dmgrange, 
--     39.1 * mult9     },

--     {   1000 /0.0254 * dmgrange, 
--     38.64 * mult9     },
-- }

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 44.09	43.3	42.56	41.88	41.26	40.66	40.11	39.59	39.1	38.64


ATT.Category = {"eft_ammo_50ae"}

ARC9.LoadAttachment(ATT, "eft_ammo_50ae_jsp")

///////////////////////////////////////      eft_ammo_50ae_jhp

ATT = {}

ATT.PrintName = ".50 AE JHP"
ATT.CompactName = "JHP"
ATT.Icon = Material("entities/eft_deagle_attachments/50jhp.png", "mips smooth")
ATT.Description = [[A .50 Action Express JHP cartridge (12.7x33mm) with a 300 grain jacketed hollow-point bullet, which provides an enormous stopping power. One of the most powerful unitary pistol cartridges in the world and has a significant lethality.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".50 AE JHP"

ATT.DamageMax = 147 * mult9
ATT.DamageMin = 147 * 0.122 * mult9
ATT.PhysBulletMuzzleVelocity = 440 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 1.1
ATT.RecoilMult = 1.05
ATT.VisualRecoilMult = 1.05
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      12 *2.54/100/0.0254
ATT.PenetrationDelta = 23/100
ATT.ArmorPiercing =    23/100
ATT.RicochetChance =   10/100

-- ATT.DamageLookupTable = {
--     {   10/0.0254 * dmgrange, 
--     43 * mult9     },

--     {   100 /0.0254 * dmgrange, 
--     38.25 * mult9     },

--     {   200 /0.0254 * dmgrange, 
--     34.75 * mult9     },

--     {   300 /0.0254 * dmgrange, 
--     33 * mult9     },

--     {   400 /0.0254 * dmgrange, 
--     32 * mult9     },

--     {   500 /0.0254 * dmgrange, 
--     31.15 * mult9     },

--     {   600 /0.0254 * dmgrange, 
--     30.5 * mult9     },

--     {   700 /0.0254 * dmgrange, 
--     29.9 * mult9     },

--     {   800 /0.0254 * dmgrange, 
--     29.4 * mult9     },

--     {   900 /0.0254 * dmgrange, 
--     29 * mult9     },

--     {   1000 /0.0254 * dmgrange, 
--     28.54 * mult9     },
-- }

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 38.25	34.75	33.03	31.94	31.15	30.48	29.91	29.41	28.95	28.54


ATT.Category = {"eft_ammo_50ae"}


ARC9.LoadAttachment(ATT, "eft_ammo_50ae_jhp")









-- 357


///////////////////////////////////////      eft_ammo_357_fmj

ATT = {}

ATT.PrintName = ".357 Magnum FMJ"
ATT.CompactName = "FMJ"
ATT.Icon = Material("entities/eft_deagle_attachments/357fmj.png", "mips smooth")
ATT.Description = [[An American-made high-power .357 Magnum revolver cartridge manufactured by Smith & Wesson.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".357 Magnum FMJ"

ATT.DamageMax = 70 * mult9
ATT.DamageMin = 48 * mult9
ATT.PhysBulletMuzzleVelocity = 385 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 1.1
ATT.RecoilMult = 1.12
ATT.VisualRecoilMult = 1.12
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      35 *2.54/100/0.0254
ATT.PenetrationDelta = 43/100
ATT.ArmorPiercing =    43/100
ATT.RicochetChance =   10/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    70 * mult9     },

    {   100 /0.0254 * dmgrange, 
    64 * mult9     },

    {   200 /0.0254 * dmgrange, 
    60.64 * mult9     },

    {   300 /0.0254 * dmgrange, 
    58.22 * mult9     },

    {   400 /0.0254 * dmgrange, 
    56.22 * mult9     },

    {   500 /0.0254 * dmgrange, 
    54.5 * mult9     },

    {   600 /0.0254 * dmgrange, 
    53 * mult9     },

    {   700 /0.0254 * dmgrange, 
    51.6 * mult9     },

    {   800 /0.0254 * dmgrange, 
    50.3 * mult9     },

    {   900 /0.0254 * dmgrange, 
    49 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    48 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 64.02 	60.64 	58.22 	56.22 	54.49 	52.98 	51.59 	50.31 	49.14 	48.09


ATT.Category = {"eft_ammo_357"}


ARC9.LoadAttachment(ATT, "eft_ammo_357_fmj")

///////////////////////////////////////      eft_ammo_357_jhp

ATT = {}

ATT.PrintName = ".357 Magnum JHP"
ATT.CompactName = "JHP"
ATT.Icon = Material("entities/eft_deagle_attachments/357jhp.png", "mips smooth")
ATT.Description = [[A .357 Magnum (9x33mm R) JHP cartridge with an 8 gram lead core hollow-point bullet with a bimetallic jacket in a steel case, produced by Smith & Wesson. The bullet in this cartridge is designed to expand shortly after impacting the target, allowing it to pierce through basic ballistic body protections and provide a considerable stopping power effect, as well as being able to cause severe adverse effects on the target after impact.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".357 Magnum JHP"

ATT.DamageMax = 88 * mult9
ATT.DamageMin = 58.66 * mult9
ATT.PhysBulletMuzzleVelocity = 425 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.85
ATT.RecoilMult = 1.08
ATT.VisualRecoilMult = 1.08
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      24 *2.54/100/0.0254
ATT.PenetrationDelta = 28/100
ATT.ArmorPiercing =    28/100
ATT.RicochetChance =   10/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    88 * mult9     },

    {   100 /0.0254 * dmgrange, 
    78.3 * mult9     },

    {   200 /0.0254 * dmgrange, 
    74 * mult9     },

    {   300 /0.0254 * dmgrange, 
    71 * mult9     },

    {   400 /0.0254 * dmgrange, 
    68.41 * mult9     },

    {   500 /0.0254 * dmgrange, 
    66.3 * mult9     },

    {   600 /0.0254 * dmgrange, 
    64.5 * mult9     },

    {   700 /0.0254 * dmgrange, 
    63 * mult9     },

    {   800 /0.0254 * dmgrange, 
    61.3 * mult9     },

    {   900 /0.0254 * dmgrange, 
    60 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    58.66 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 78.27 	73.93 	70.83 	68.41 	66.33 	64.47 	62.81 	61.29 	59.91 	58.66


ATT.Category = {"eft_ammo_357"}


ARC9.LoadAttachment(ATT, "eft_ammo_357_jhp")

///////////////////////////////////////      eft_ammo_357_hp

ATT = {}

ATT.PrintName = ".357 Magnum HP"
ATT.CompactName = "HP"
ATT.Icon = Material("entities/eft_deagle_attachments/357hp.png", "mips smooth")
ATT.Description = [[A .357 Magnum (9x33mm R) Hollow Point cartridge with a 9 gram bullet made of solid copper in a brass case; intended for hunting and home defense, produced by Smith & Wesson. The bullet in this cartridge has an outstanding stopping power effect thanks to its exceptional ability to expand upon impact, as well as being able to cause severe adverse effects on the target after impact. Likewise, its design increases its penetration capabilities against some models of basic ballistic body protection.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".357 Magnum HP"

ATT.DamageMax = 99 * mult9
ATT.DamageMin = 61.53 * mult9
ATT.PhysBulletMuzzleVelocity = 481 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.85
ATT.RecoilMult = 1.15
ATT.VisualRecoilMult = 1.15
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      18 *2.54/100/0.0254
ATT.PenetrationDelta = 20/100
ATT.ArmorPiercing =    20/100
ATT.RicochetChance =   10/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    99 * mult9     },

    {   100 /0.0254 * dmgrange, 
    84 * mult9     },

    {   200 /0.0254 * dmgrange, 
    78.5 * mult9     },

    {   300 /0.0254 * dmgrange, 
    75 * mult9     },

    {   400 /0.0254 * dmgrange, 
    72 * mult9     },

    {   500 /0.0254 * dmgrange, 
    70 * mult9     },

    {   600 /0.0254 * dmgrange, 
    68 * mult9     },

    {   700 /0.0254 * dmgrange, 
    66 * mult9     },

    {   800 /0.0254 * dmgrange, 
    64.3 * mult9     },

    {   900 /0.0254 * dmgrange, 
    63 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    61.53 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 83.99 	78.56 	75.02 	72.28 	69.92 	67.83 	65.99 	64.32 	62.83 	61.53


ATT.Category = {"eft_ammo_357"}


ARC9.LoadAttachment(ATT, "eft_ammo_357_hp")

///////////////////////////////////////      eft_ammo_357_sp

ATT = {}

ATT.PrintName = ".357 Magnum SP"
ATT.CompactName = "SP"
ATT.Icon = Material("entities/eft_deagle_attachments/357sp.png", "mips smooth")
ATT.Description = [[A .357 Magnum (9x33mm R) Soft Point cartridge with a 7 gram lead core bullet with a bimetallic semi-jacket in a steel case; intended for hunting and home defense, produced by Smith & Wesson. The bullet in this cartridge has an excellent expansion and impact energy that gives it a superior stopping power effect for its caliber, as well as being able to cause severe adverse effects on the target upon impact and provide recoil reduction, making it an excellent choice for hunting.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".357 Magnum SP"

ATT.DamageMax = 108 * mult9
ATT.DamageMin = 74 * mult9
ATT.PhysBulletMuzzleVelocity = 455 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.73
ATT.RecoilMult = 0.71
ATT.VisualRecoilMult = 0.71
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      12 *2.54/100/0.0254
ATT.PenetrationDelta = 15/100
ATT.ArmorPiercing =    15/100
ATT.RicochetChance =   10/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    108 * mult9     },

    {   100 /0.0254 * dmgrange, 
    96 * mult9     },

    {   200 /0.0254 * dmgrange, 
    90.76 * mult9     },

    {   300 /0.0254 * dmgrange, 
    87.25 * mult9     },

    {   400 /0.0254 * dmgrange, 
    84.5 * mult9     },

    {   500 /0.0254 * dmgrange, 
    82 * mult9     },

    {   600 /0.0254 * dmgrange, 
    80 * mult9     },

    {   700 /0.0254 * dmgrange, 
    78.39 * mult9     },

    {   800 /0.0254 * dmgrange, 
    76.78 * mult9     },

    {   900 /0.0254 * dmgrange, 
    75.26  * mult9     },

    {   1000 /0.0254 * dmgrange, 
    74 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 96 	    90.76 	87.25 	84.53 	82.21 	80.18 	78.39 	76.78 	75.26 	73.89


ATT.Category = {"eft_ammo_357"}


ARC9.LoadAttachment(ATT, "eft_ammo_357_sp")