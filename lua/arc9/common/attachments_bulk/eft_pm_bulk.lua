local ATT = {}


///////////////////////////////////////      eft_pm_rec_std

ATT = {}

ATT.PrintName = "PM pistol slide"
ATT.CompactName = "PM"
ATT.Icon = Material("entities/eft_pm_attachments/r.png", "mips smooth")
ATT.Description = [[A standard-issue slide for Makarov Pistol 9x18.]]

ATT.HasReciever = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_pm_rs",
        Pos = Vector(2.25, 0, -0.5),
        Ang = Angle(0, -90, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 1,
    weight = 0.28,
}))


-- EFT ID: 6374a822e629013b9c0645c8
ARC9.LoadAttachment(ATT, "eft_pm_rec_std")

///////////////////////////////////////      eft_pm_rs_std

ATT = {}

ATT.PrintName = "PM rear sight"
ATT.CompactName = "PM RS"
ATT.Icon = Material("entities/eft_pm_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for Makarov pistol.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_rs"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.002,
}))


-- EFT ID: 63c6adcfb4ba094317063742
ARC9.LoadAttachment(ATT, "eft_pm_rs_std")

///////////////////////////////////////      eft_pm_pg_std

ATT = {}

ATT.PrintName = "PM bakelite side grips"
ATT.CompactName = "PM bak."
ATT.Icon = Material("entities/eft_pm_attachments/g.png", "mips smooth")
ATT.Description = [[Standard-issue bakelite side grip panels for the PM pistol.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.07,
}))


-- EFT ID: 6374a7e7417239a7bf00f042
ARC9.LoadAttachment(ATT, "eft_pm_pg_std")

///////////////////////////////////////      eft_pm_pg_fab

ATT = {}

ATT.PrintName = "PM FAB Defense PM-G pistol grip"
ATT.CompactName = "PM-G"
ATT.Icon = Material("entities/eft_pm_attachments/gfab.png", "mips smooth")
ATT.Description = [[A PM grip by FAB Defense with a built-in magazine release mechanism that turns the Soviet classic into a modern handy pistol, significantly improving ergonomics.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.072,
}))


-- EFT ID: 637784c5f7b3f4ac1a0d1a9a
ARC9.LoadAttachment(ATT, "eft_pm_pg_fab")

///////////////////////////////////////      eft_pm_pg_fab_od

ATT = {}

ATT.PrintName = "PM FAB Defense PM-G pistol grip (Olive Drab)"
ATT.CompactName = "PM-G OD"
ATT.Icon = Material("entities/eft_pm_attachments/gfabod.png", "mips smooth")
ATT.Description = [[A PM grip by FAB Defense with a built-in magazine release mechanism that turns the Soviet classic into a modern handy pistol, significantly improving ergonomics. Olive Drab version.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.072,
}))


-- EFT ID: 648afce7ec6bb25b2608defb
ARC9.LoadAttachment(ATT, "eft_pm_pg_fab_od")

///////////////////////////////////////      eft_pm_pg_tk

ATT = {}

ATT.PrintName = "PM Tactic Kit pistol grip"
ATT.CompactName = "PM TK"
ATT.Icon = Material("entities/eft_pm_attachments/gtk.png", "mips smooth")
ATT.Description = [[An ergonomic Makarov Pistol grip. Provides a comfortable grip and allows installation of additional accessories under the barrel. Manufactured by Gun Custom Tuning.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical_xc1", "eft_um3"},
        Pos = Vector(-5, 0.1, -1.55),
        Ang = Angle(0, 0, 180),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 7,
    weight = 0.114,
}))


-- EFT ID: 637b6d610aef6cfc5e02dd14
ARC9.LoadAttachment(ATT, "eft_pm_pg_tk")

///////////////////////////////////////      eft_pm_pg_laser

ATT = {}

ATT.PrintName = "PM PM-Laser grip with laser sight"
ATT.CompactName = "PM-L"
ATT.Icon = Material("entities/eft_pm_attachments/glaser.png", "mips smooth") -- bad icon but whatever, changes is broken
ATT.Description = [[A Makarov Pistol grip with built-in magazine release mechanism and laser designator. Manufactured by PM-Laser. ]]

ATT.HasGrip = true 


ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}


-- steal this model into this pack, adjust modeloffset and change color to red

 ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_tt_pm_laser.mdl"
 ATT.ModelOffset = Vector(1.64, 0.44, 1.17)
 ATT.Scale = 0.4
 ATT.ToggleOnF = true
 ATT.ToggleStats = {
     {
         PrintName = "eft_toggle_laser_red",
         Laser = true,
         LaserStrength = 1.3,
         LaserFlareMat = Material("effects/arc9_eft/laserdot"),
         LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
         LaserColor = Color(238, 30, 27),
         LaserAttachment = 1,
         EFTHipFireSpreadBonus = true,
     },   
     {
         PrintName = "eft_toggle_off",
     }
 }



table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.09,
}))


-- EFT ID: 661f8995c341ea101e0d33e8
ARC9.LoadAttachment(ATT, "eft_pm_pg_laser")


///////////////////////////////////////      eft_pm_mag_8

ATT = {}

ATT.PrintName = "PM 9x18PM 90-93 8-round magazine"
ATT.CompactName = "PM 8"
ATT.Icon = Material("entities/eft_pm_attachments/8.png", "mips smooth")
ATT.Description = [[A standard 8-round magazine for IzhMekh-produced Makarov PM pistols. It features a side observation slot for checking the magazine capacity.]]

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pm_8.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_mag"}

ATT.HasMag = true
ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 8
ATT.ChamberSize = 1

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.045,
    malfunctionChance = 0.03,
}))


-- EFT ID: 5448c12b4bdc2d02308b456f
ARC9.LoadAttachment(ATT, "eft_pm_mag_8")

///////////////////////////////////////      eft_pm_mag_84

ATT = {}

ATT.PrintName = "PM 9x18PM 84-round makeshift drum magazine"
ATT.CompactName = "PM drum 84"
ATT.Icon = Material("entities/eft_pm_attachments/84.png", "mips smooth")
ATT.Description = [[A makeshift 84-round PM magazine. First assembled by an unknown genius by combining PM and PPSH magazines into a single design for operations in narrow spaces with the aid of ballistic shields. Although it was never serialized even in the smallest number, it can be crafted pretty easily, provided you have the donor mags and skillful hands.]]

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pm_84.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_mag"}

ATT.HasMag = true
ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 84
ATT.ChamberSize = 1

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -10,
    weight = 0.364,
    malfunctionChance = 0.259,
}))


-- EFT ID: 55d485be4bdc2d962f8b456f
ARC9.LoadAttachment(ATT, "eft_pm_mag_84")

///////////////////////////////////////      eft_pm_thread

ATT = {}

ATT.PrintName = "Threaded"
ATT.CompactName = "Threaded"
ATT.Icon = Material("entities/eft_pm_attachments/thr.png", "mips smooth")
ATT.Description = [[A semi-mythical Makarov pistol with an extended threaded barrel for equipping a sound suppressor. Some claim it was a limited production series manufactured in Bulgaria, whilst others insist on it being East German, or even a handcrafted upgrade. As for how it ended up in the Norvinsk region, no living soul could tell you now.]]

ATT.AttNotForNPCs = true 

ATT.SortOrder = -90
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_custom_pm"}
ATT.CustomizePos = Vector(24, 40, 4)

ATT.ExcludeElements = {"eft_pb"}

ATT.Max = 1

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_pm", "eft_custom_slot"},
    },
}

-- EFT ID: NO
ARC9.LoadAttachment(ATT, "eft_pm_thread")








///////////////////////////////////////      eft_pb_pg_std

ATT = {}

ATT.PrintName = "PB bakelite side grips"
ATT.CompactName = "PB bak."
ATT.Icon = Material("entities/eft_pm_attachments/gpb.png", "mips smooth")
ATT.Description = [[Standard-issue bakelite side grip panels for the PB pistol, manufactured by TsNIITochMash.]]

ATT.HasReciever = true 
ATT.HasGrip = true 


ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pb_pg"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.102,
}))


-- EFT ID: 56e05a6ed2720bd0748b4567
ARC9.LoadAttachment(ATT, "eft_pb_pg_std")

///////////////////////////////////////      eft_pb_silencer

ATT = {}

ATT.PrintName = "PB 9x18PM sound suppressor"
ATT.CompactName = "PB supp."
ATT.Icon = Material("entities/eft_pm_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue detachable sound suppressor for the PB pistol.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Silencer = true 
ATT.CustomizePos = Vector(24, 40, 4)

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Category = {"eft_pb_sil"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -21,
    recoilModifier = -8,
    weight = 0.131,
    velocity = 1,
}))


-- EFT ID: 56e05b06d2720bb2668b4586
ARC9.LoadAttachment(ATT, "eft_pb_silencer")