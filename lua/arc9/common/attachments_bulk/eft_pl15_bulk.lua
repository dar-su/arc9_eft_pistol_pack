local ATT = {}


///////////////////////////////////////      eft_barrel_pl15_std


ATT = {}

ATT.PrintName = "PL-15 9x19 barrel"
ATT.CompactName = "PL-15"
ATT.Icon = Material("entities/eft_pl15_attachments/b.png", "mips smooth")
ATT.Description = [[A standard barrel for the PL-15 pistol, chambered in 9x19.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_pl15_barrel"}


ARC9.LoadAttachment(ATT, "eft_barrel_pl15_std")

///////////////////////////////////////      eft_barrel_pl15_thr


ATT = {}

ATT.PrintName = "PL-15 9x19 threaded barrel"
ATT.CompactName = "PL-15 thr."
ATT.Icon = Material("entities/eft_pl15_attachments/thr.png", "mips smooth")
ATT.Description = [[A threaded barrel for the PL-15 pistol, chambered in 9x19.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_pl15_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_pl15_muzzle"},
        Pos = Vector(0, 3.4, 0),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_barrel_pl15_thr")



///////////////////////////////////////      eft_fs_pl15_std


ATT = {}

ATT.PrintName = "PL-15 front sight"
ATT.CompactName = "PL-15 FS"
ATT.Icon = Material("entities/eft_pl15_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard-issue front sight for the PL-15 pistol.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pl15_fs"}

ARC9.LoadAttachment(ATT, "eft_fs_pl15_std")

///////////////////////////////////////      eft_fs_pl15_long


ATT = {}

ATT.PrintName = "PL-15 extended front sight"
ATT.CompactName = "PL-15 FS ext"
ATT.Icon = Material("entities/eft_pl15_attachments/fslong.png", "mips smooth")
ATT.Description = [[An extended front sight for the PL-15 pistol, designed for use with a sound suppressor.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pl15_fs"}

ARC9.LoadAttachment(ATT, "eft_fs_pl15_long")




///////////////////////////////////////      eft_mag_pl15_std


ATT = {}

ATT.PrintName = "PL-15 9x19 16-round magazine"
ATT.CompactName = "PL-15 16"
ATT.Icon = Material("entities/eft_pl15_attachments/m.png", "mips smooth")
ATT.Description = [[A standard-issue 16-round magazine for the PL-15 9x19 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
-- ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pl15.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 16
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magdef"}

ATT.Category = {"eft_pl15_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_pl15_std")

///////////////////////////////////////      eft_slide_pl15_std


ATT = {}

ATT.PrintName = "PL-15 pistol slide"
ATT.CompactName = "PL-15"
ATT.Icon = Material("entities/eft_pl15_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue slide for the PL-15 pistol.]]

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pl15_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_pl15_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_pl15_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_pl15_std")

///////////////////////////////////////      eft_rs_pl15_std


ATT = {}

ATT.PrintName = "PL-15 rear sight"
ATT.CompactName = "PL-15 RS"
ATT.Icon = Material("entities/eft_pl15_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for the PL-15 pistol.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pl15_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_pl15_std")

///////////////////////////////////////      eft_rs_pl15_long


ATT = {}

ATT.PrintName = "PL-15 extended rear sight"
ATT.CompactName = "PL-15 RS ext"
ATT.Icon = Material("entities/eft_pl15_attachments/rslong.png", "mips smooth")
ATT.Description = [[An extended rear sight for the PL-15 pistol, designed for use with a sound suppressor.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pl15_rs"}

ATT.Sights = {
    {
        Pos = Vector(0, 13, -0.38),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.1,
        IsIronSight = true
    }
}

ARC9.LoadAttachment(ATT, "eft_rs_pl15_long")

///////////////////////////////////////      eft_sil_pl15

ATT = {}

ATT.PrintName = "PL-15 9x19 sound suppressor"
ATT.CompactName = "PL-15"
ATT.Icon = Material("entities/eft_pl15_attachments/sil.png", "mips smooth")
ATT.Description = [[A standard-issue sound suppressor for the PL-15 pistol.]]
ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -16
ATT.CustomCons = { Ergonomics = "-16" }
ATT.RecoilMult = 0.91
ATT.VisualRecoilMult = 0.91
ATT.SpreadMult = 0.98
ATT.HeatCapacityMult = 0.87
ATT.PhysBulletMuzzleVelocityMult = 1.005

-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Silencer = true

ATT.Category = {"eft_pl15_muzzle"}

ARC9.LoadAttachment(ATT, "eft_sil_pl15")
