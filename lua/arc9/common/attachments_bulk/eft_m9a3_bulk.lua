local ATT = {}


///////////////////////////////////////      eft_barrel_m9a3_std


ATT = {}

ATT.PrintName = "M9A3 9x19 threaded barrel"
ATT.CompactName = "M9A3 thr."
ATT.Icon = Material("entities/eft_m9a3_attachments/b.png", "mips smooth")
ATT.Description = [[A standard threaded barrel for the Beretta M9A3 9x19 pistol.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_m9a3_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_m9a3_muzzle"},
        Pos = Vector(0, 3.95, -0.51),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_barrel_m9a3_std")



///////////////////////////////////////      eft_fs_m9a3_std


ATT = {}

ATT.PrintName = "M9A3 front sight"
ATT.CompactName = "M9A3 FS"
ATT.Icon = Material("entities/eft_m9a3_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard-issue front sight for Beretta M9A3 pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m9a3_fs"}


ARC9.LoadAttachment(ATT, "eft_fs_m9a3_std")


///////////////////////////////////////      eft_m9a3_black


ATT = {}

ATT.PrintName = "Black"
ATT.CompactName = "Black"
ATT.Icon = Material("entities/eft_m9a3_attachments/black.png", "mips smooth")
ATT.Description = [[Black colored frame.

Not presents in EFT, custom att.]]

ATT.AttNotForNPCs = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Max = 1

ATT.Category = {"eft_custom_m9a3"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_m9a3"},
    },
}


ARC9.LoadAttachment(ATT, "eft_m9a3_black")



///////////////////////////////////////      eft_mag_m9a3_std


ATT = {}

ATT.PrintName = "M9A3 9x19 17-round magazine"
ATT.CompactName = "M9A3 17"
ATT.Icon = Material("entities/eft_m9a3_attachments/m.png", "mips smooth")
ATT.Description = [[A standard 17-round 9x19 magazine for the Beretta M9A3 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_m9a3.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 17
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magdef"}

ATT.Category = {"eft_m9a3_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_m9a3_std")

///////////////////////////////////////      eft_mag_m9a3_ext


ATT = {}

ATT.PrintName = "M9A3 9x19 CX4 30-round magazine"
ATT.CompactName = "CX4 30"
ATT.Icon = Material("entities/eft_m9a3_attachments/cx4.png", "mips smooth")
ATT.Description = [[A 30-round 9x19 magazine for the Beretta M9A3 pistol]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-3" }
ATT.MalfunctionMeanShotsToFailMult = 0.95

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_m9a3_ext.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 30
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magext"}

ATT.Category = {"eft_m9a3_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_m9a3_ext")

///////////////////////////////////////      eft_muzzle_m9a3_std


ATT = {}

ATT.PrintName = "M9A3 thread protection cap"
ATT.CompactName = "M9A3 cap"
ATT.Icon = Material("entities/eft_m9a3_attachments/c.png", "mips smooth")
ATT.Description = [[A threading protection cap for the Beretta M9A3 9x19 barrel.]]

-- ATT.VisualRecoilMult = 0.89
ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
-- ATT.SpreadMult = 0.98
-- ATT.PhysBulletMuzzleVelocityMult = 1.02
ATT.HeatCapacityAdd = 1

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m9a3_muzzle"}


ARC9.LoadAttachment(ATT, "eft_muzzle_m9a3_std")


///////////////////////////////////////      eft_grip_m9a3_std


ATT = {}

ATT.PrintName = "M9A3 polymer side grips"
ATT.CompactName = "M9A3"
ATT.Icon = Material("entities/eft_m9a3_attachments/p.png", "mips smooth")
ATT.Description = [[Standard-issue polymer side grip panels for Beretta M9A3 pistols.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m9a3_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_m9a3_std")


///////////////////////////////////////      eft_slide_m9a3_std


ATT = {}

ATT.PrintName = "M9A3 9x19 pistol slide"
ATT.CompactName = "M9A3"
ATT.Icon = Material("entities/eft_m9a3_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue pistol slide for Beretta M9A3 9x19 pistols.]]

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m9a3_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_m9a3_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_m9a3_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_m9a3_std")


///////////////////////////////////////      eft_rs_m9a3_std


ATT = {}

ATT.PrintName = "M9A3 rear sight"
ATT.CompactName = "M9A3 RS"
ATT.Icon = Material("entities/eft_m9a3_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for Beretta M9A3 pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m9a3_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_m9a3_std")

///////////////////////////////////////      eft_rs_m9a3_mount


ATT = {}

ATT.PrintName = "M9A3 Sight Mount rear sight rail"
ATT.CompactName = "SM M9"
ATT.Icon = Material("entities/eft_m9a3_attachments/rsm.png", "mips smooth")
ATT.Description = [[A rear sight rail manufactured by Sight Mount for Beretta M9 pistols. It is installed as a replacement of the standard rear sight, but still allows aiming even without an installed reflex sight.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "eft_optic_micro",
        Pos = Vector(1.5, 0, -0.45),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ATT.Category = {"eft_m9a3_rs"}


ARC9.LoadAttachment(ATT, "eft_rs_m9a3_mount")

