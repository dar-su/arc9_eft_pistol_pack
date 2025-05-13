local ATT = {}


///////////////////////////////////////      eft_pm_rec_std

ATT = {}

ATT.PrintName = "PM pistol slide"
ATT.CompactName = "PM"
ATT.Icon = Material("entities/eft_pm_attachments/r.png", "mips smooth")
ATT.Description = [[A standard-issue slide for Makarov Pistol 9x18.]]

ATT.HasReciever = true 

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_rec"}

ATT.Attachments = {
    {
        PrintName = "Rear sight",
        Category = "eft_pm_rs",
        Pos = Vector(2.25, 0, -0.5),
        Ang = Angle(0, -90, 0),
    },
}


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

ARC9.LoadAttachment(ATT, "eft_pm_rs_std")

///////////////////////////////////////      eft_pm_pg_std

ATT = {}

ATT.PrintName = "PM bakelite side grips"
ATT.CompactName = "PM bak."
ATT.Icon = Material("entities/eft_pm_attachments/g.png", "mips smooth")
ATT.Description = [[Standard-issue bakelite side grip panels for the PM pistol.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

ARC9.LoadAttachment(ATT, "eft_pm_pg_std")

///////////////////////////////////////      eft_pm_pg_fab

ATT = {}

ATT.PrintName = "PM FAB Defense PM-G pistol grip"
ATT.CompactName = "PM-G"
ATT.Icon = Material("entities/eft_pm_attachments/gfab.png", "mips smooth")
ATT.Description = [[A PM grip by FAB Defense with a built-in magazine release mechanism that turns the Soviet classic into a modern handy pistol, significantly improving ergonomics.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

ARC9.LoadAttachment(ATT, "eft_pm_pg_fab")

///////////////////////////////////////      eft_pm_pg_fab_od

ATT = {}

ATT.PrintName = "PM FAB Defense PM-G pistol grip (Olive Drab)"
ATT.CompactName = "PM-G OD"
ATT.Icon = Material("entities/eft_pm_attachments/gfabod.png", "mips smooth")
ATT.Description = [[A PM grip by FAB Defense with a built-in magazine release mechanism that turns the Soviet classic into a modern handy pistol, significantly improving ergonomics. Olive Drab version.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

ARC9.LoadAttachment(ATT, "eft_pm_pg_fab_od")

///////////////////////////////////////      eft_pm_pg_tk

ATT = {}

ATT.PrintName = "PM Tactic Kit pistol grip"
ATT.CompactName = "PM TK"
ATT.Icon = Material("entities/eft_pm_attachments/gtk.png", "mips smooth")
ATT.Description = [[An ergonomic Makarov Pistol grip. Provides a comfortable grip and allows installation of additional accessories under the barrel. Manufactured by Gun Custom Tuning.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_pg"}

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_xc1", "eft_um3"},
        Pos = Vector(-5, 0.1, -1.55),
        Ang = Angle(0, 0, 180),
    },
}

ARC9.LoadAttachment(ATT, "eft_pm_pg_tk")

///////////////////////////////////////      eft_pm_pg_laser

ATT = {}

ATT.PrintName = "PM PM-Laser grip with laser sight"
ATT.CompactName = "PM-L"
ATT.Icon = Material("entities/eft_pm_attachments/glaser.png", "mips smooth") -- bad icon but whatever, changes is broken
ATT.Description = [[A Makarov Pistol grip with built-in magazine release mechanism and laser designator. Manufactured by PM-Laser. ]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }

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
         PrintName = "Red Laser",
         Laser = true,
         LaserStrength = 1.3,
         LaserFlareMat = Material("effects/arc9_eft/laserdot"),
         LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
         LaserColor = Color(238, 30, 27),
         LaserAttachment = 1,
         EFTHipFireSpreadBonus = true,
     },   
     {
         PrintName = "None",
     }
 }



ARC9.LoadAttachment(ATT, "eft_pm_pg_laser")


///////////////////////////////////////      eft_pm_mag_8

ATT = {}

ATT.PrintName = "PM 9x18PM 90-93 8-round magazine"
ATT.CompactName = "PM 8"
ATT.Icon = Material("entities/eft_pm_attachments/8.png", "mips smooth")
ATT.Description = [[A standard 8-round magazine for IzhMekh-produced Makarov PM pistols. It features a side observation slot for checking the magazine capacity.]]

ATT.EFTErgoAdd = -1
ATT.CustomPros = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pm_8.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_mag"}

ATT.HasMag = true
ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 8
ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_pm_mag_8")

///////////////////////////////////////      eft_pm_mag_84

ATT = {}

ATT.PrintName = "PM 9x18PM 84-round makeshift drum magazine"
ATT.CompactName = "PM drum 84"
ATT.Icon = Material("entities/eft_pm_attachments/84.png", "mips smooth")
ATT.Description = [[A makeshift 84-round PM magazine. First assembled by an unknown genius by combining PM and PPSH magazines into a single design for operations in narrow spaces with the aid of ballistic shields. Although it was never serialized even in the smallest number, it can be crafted pretty easily, provided you have the donor mags and skillful hands.]]

ATT.EFTErgoAdd = -18
ATT.CustomPros = { Ergonomics = "-18" }
ATT.MalfunctionMeanShotsToFailMult = 0.75

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pm_84.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pm_mag"}

ATT.HasMag = true
ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 84
ATT.ChamberSize = 1

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
ATT.CustomizePos = Vector(24, 21, 4.0)

ATT.ExcludeElements = {"eft_pb"}

ATT.Max = 1

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_pm", "eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_pm_thread")








///////////////////////////////////////      eft_pb_pg_std

ATT = {}

ATT.PrintName = "PB bakelite side grips"
ATT.CompactName = "PB bak."
ATT.Icon = Material("entities/eft_pm_attachments/gpb.png", "mips smooth")
ATT.Description = [[Standard-issue bakelite side grip panels for the PB pistol, manufactured by TsNIITochMash.]]

ATT.HasReciever = true 
ATT.HasGrip = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pb_pg"}

ARC9.LoadAttachment(ATT, "eft_pb_pg_std")

///////////////////////////////////////      eft_pb_silencer

ATT = {}

ATT.PrintName = "PB 9x18PM sound suppressor"
ATT.CompactName = "PB supp."
ATT.Icon = Material("entities/eft_pm_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue detachable sound suppressor for the PB pistol.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.VisualRecoilMult = 0.92
ATT.RecoilMult = 0.92
ATT.HeatCapacityMult = 0.87
ATT.EFTErgoAdd = -21
ATT.CustomCons = { Ergonomics = "-21" }

ATT.Silencer = true 
ATT.CustomizePos = Vector(24, 21, 4.0)

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Category = {"eft_pb_sil"}

ARC9.LoadAttachment(ATT, "eft_pb_silencer")