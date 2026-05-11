local ATT = {}

///////////////////////////////////////      eft_ammo_50ae_copper


ATT = {}

ATT.PrintName = ".50 AE Copper Solid"
ATT.CompactName = "Copper"
ATT.Icon = Material("entities/eft_deagle_attachments/50c.png", "mips smooth")
ATT.Description = [[A .50 Action Express Hawk Copper Solid cartridge (12.7x33mm) with a 400 grain precision bullet, designed to direct a tremendous amount of energy into the target. One of the most powerful unitary pistol cartridges in the world and has a significant lethality.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_50ae_copper.printname")

ATT.Category = {"eft_ammo_50ae"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.035,
    damage = 94,
    ballisticCoeficient = 0.163,
    initialSpeed = 460,
    accuracyModifier = 0.05,
    recoilModifier = 0.08,
    penetrationPower = 33,
    armorDamage = 56,
    penetrationChance = 0.2,
    ricochetChance = 0.06,
    heatFactor = 2.15,
    failureToFeedChance = 0.096,
    misfireChance = 0.175,
    heavyBleedModifier = 0.1,
}), "pistol")


-- EFT ID: 66a0d1e0ed648d72fe064d06
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

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_50ae_fmj.printname")

ATT.Category = {"eft_ammo_50ae"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.028,
    damage = 85,
    ballisticCoeficient = 0.131,
    initialSpeed = 440,
    recoilModifier = 0.1,
    penetrationPower = 40,
    armorDamage = 50,
    penetrationChance = 0.31,
    ricochetChance = 0.08,
    heatFactor = 2.38,
    failureToFeedChance = 0.02,
    misfireChance = 0.175,
    heavyBleedModifier = 0.1,
}), "pistol")


-- EFT ID: 668fe62ac62660a5d8071446
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

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_50ae_jsp.printname")


ATT.Category = {"eft_ammo_50ae"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.038,
    damage = 122,
    ballisticCoeficient = 0.166,
    initialSpeed = 465,
    accuracyModifier = -0.05,
    recoilModifier = 0.02,
    penetrationPower = 26,
    armorDamage = 28,
    penetrationChance = 0.12,
    ricochetChance = 0.004,
    heatFactor = 2.27,
    failureToFeedChance = 0.08,
    misfireChance = 0.175,
    lightBleedModifier = 0.25,
    heavyBleedModifier = 0.3,
}), "pistol")


-- EFT ID: 66a0d1f88486c69fce00fdf6
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

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_50ae_jhp.printname")

ATT.Category = {"eft_ammo_50ae"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.029,
    damage = 147,
    ballisticCoeficient = 0.122,
    initialSpeed = 440,
    accuracyModifier = -0.1,
    recoilModifier = 0.05,
    penetrationPower = 12,
    armorDamage = 23,
    penetrationChance = 0.05,
    ricochetChance = 0.02,
    heatFactor = 1.91,
    failureToFeedChance = 0.111,
    misfireChance = 0.175,
    lightBleedModifier = 0.35,
    heavyBleedModifier = 0.4,
}), "pistol")


-- EFT ID: 66a0d1c87d0d369e270bb9de
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

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_357_fmj.printname")

ATT.Category = {"eft_ammo_357"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.016,
    damage = 70,
    ballisticCoeficient = 0.163,
    initialSpeed = 385,
    recoilModifier = 0.12,
    penetrationPower = 35,
    armorDamage = 43,
    penetrationChance = 0.35,
    ricochetChance = 0.065,
    heatFactor = 1.28,
    failureToFeedChance = 0.102,
    misfireChance = 0.18,
    heavyBleedModifier = 0.1,
}), "pistol")


-- EFT ID: 62330b3ed4dc74626d570b95
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

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_357_jhp.printname")

ATT.Category = {"eft_ammo_357"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.016,
    damage = 88,
    ballisticCoeficient = 0.155,
    initialSpeed = 425,
    accuracyModifier = 0.15,
    recoilModifier = 0.08,
    penetrationPower = 24,
    armorDamage = 28,
    penetrationChance = 0.3,
    ricochetChance = 0.055,
    heatFactor = 1.28,
    failureToFeedChance = 0.102,
    misfireChance = 0.15,
    lightBleedModifier = 0.25,
    heavyBleedModifier = 0.25,
}), "pistol")


-- EFT ID: 62330c18744e5e31df12f516
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

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_357_hp.printname")

ATT.Category = {"eft_ammo_357"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.016,
    damage = 99,
    ballisticCoeficient = 0.124,
    initialSpeed = 481,
    accuracyModifier = 0.15,
    recoilModifier = 0.15,
    penetrationPower = 18,
    armorDamage = 20,
    penetrationChance = 0.15,
    ricochetChance = 0.025,
    heatFactor = 1.44,
    failureToFeedChance = 0.128,
    misfireChance = 0.224,
    lightBleedModifier = 0.4,
    heavyBleedModifier = 0.3,
}), "pistol")


-- EFT ID: 62330bfadc5883093563729b
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

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_357_sp.printname")

ATT.Category = {"eft_ammo_357"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.015,
    damage = 108,
    ballisticCoeficient = 0.189,
    initialSpeed = 455,
    accuracyModifier = 0.27,
    recoilModifier = -0.29,
    penetrationPower = 12,
    armorDamage = 15,
    penetrationChance = 0.2,
    ricochetChance = 0.03,
    heatFactor = 0.93,
    failureToFeedChance = 0.102,
    misfireChance = 0.18,
    lightBleedModifier = 0.35,
    heavyBleedModifier = 0.2,
}), "pistol")


-- EFT ID: 62330c40bdd19b369e1e53d1
ARC9.LoadAttachment(ATT, "eft_ammo_357_sp")