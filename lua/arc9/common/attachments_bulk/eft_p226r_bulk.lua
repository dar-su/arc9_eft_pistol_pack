local ATT = {}


///////////////////////////////////////      eft_barrel_p226_std


ATT = {}

ATT.PrintName = "P226 9x19 112mm barrel"
ATT.CompactName = "P226"
ATT.Icon = Material("entities/eft_p226_attachments/112.png", "mips smooth")
ATT.Description = [[A standard 112mm long barrel for the SIG Sauer P226 pistol.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_p226_barrel"}


ARC9.LoadAttachment(ATT, "eft_barrel_p226_std")

///////////////////////////////////////      eft_barrel_p226_thr


ATT = {}

ATT.PrintName = "P226 9x19 threaded barrel"
ATT.CompactName = "P226 thr."
ATT.Icon = Material("entities/eft_p226_attachments/thr.png", "mips smooth")
ATT.Description = [[A standard-issue threaded barrel for SIG Sauer P226 9x19 pistols.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_p226_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_p226_muzzle"},
        Pos = Vector(0, 3.4, -0.045),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_barrel_p226_thr")



///////////////////////////////////////      eft_fs_p226_std


ATT = {}

ATT.PrintName = "P226 front sight"
ATT.CompactName = "P226 FS"
ATT.Icon = Material("entities/eft_p226_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard-issue front sight for the P226 pistol, manufactured by SIG Sauer.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_fs"}


ARC9.LoadAttachment(ATT, "eft_fs_p226_std")

///////////////////////////////////////      eft_fs_p226_merp


ATT = {}

ATT.PrintName = "P226 Meprolight TRU-DOT Night front sight"
ATT.CompactName = "P226 TRU-DOT"
ATT.Icon = Material("entities/eft_p226_attachments/fsmerp.png", "mips smooth")
ATT.Description = [[The TRU-DOT Night front sight for P226 pistols with tritium bars for precision aiming, manufactured by Meprolight.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_fs"}


ARC9.LoadAttachment(ATT, "eft_fs_p226_merp")




///////////////////////////////////////      eft_mag_p226_15


ATT = {}

ATT.PrintName = "P226 9x19 15-round magazine"
ATT.CompactName = "P226 15"
ATT.Icon = Material("entities/eft_p226_attachments/15.png", "mips smooth")
ATT.Description = [[A standard 15-round 9x19 magazine for the SIG Sauer P226 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
-- ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_p226_15.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 15
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magdef"}

ATT.Category = {"eft_p226_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_p226_15")

///////////////////////////////////////      eft_mag_p226_20


ATT = {}

ATT.PrintName = "P226 9x19 20-round extended magazine"
ATT.CompactName = "P226 20"
ATT.Icon = Material("entities/eft_p226_attachments/20.png", "mips smooth")
ATT.Description = [[A 20-round 9x19 extended magazine for the SIG Sauer P226 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
-- ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-3" }
ATT.MalfunctionMeanShotsToFailMult = 0.96

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_p226_20.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 20
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magext"}

ATT.Category = {"eft_p226_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_p226_20")


///////////////////////////////////////      eft_mount_p226_bridge 


ATT = {}

ATT.PrintName = "P226 Bridge sight mount"
ATT.CompactName = "P226 Bridge"
ATT.Icon = Material("entities/eft_p226_attachments/bridge.png", "mips smooth")
ATT.Description = [[The SIG Sauer Bridge sight mount for pistols. Allows mounting of various sights or tactical accesories.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_tac"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "eft_optic_small",
        Pos = Vector(0.7, 0, 2.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(0.1, 0, -0.55),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_p226_bridge")

///////////////////////////////////////      eft_muzzle_p226_std


ATT = {}

ATT.PrintName = "P226 thread protection cap"
ATT.CompactName = "P226 cap"
ATT.Icon = Material("entities/eft_p226_attachments/prot.png", "mips smooth")
ATT.Description = [[A threading protection cap for the P226 9x19 barrel.]]

-- ATT.VisualRecoilMult = 0.89
ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
-- ATT.SpreadMult = 0.98
-- ATT.PhysBulletMuzzleVelocityMult = 1.02
ATT.HeatCapacityAdd = 1

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_muzzle"}


ARC9.LoadAttachment(ATT, "eft_muzzle_p226_std")

///////////////////////////////////////      eft_muzzle_p226_tjs


ATT = {}

ATT.PrintName = "P226 TJs Custom 9x19 compensator"
ATT.CompactName = "TJs Custom"
ATT.Icon = Material("entities/eft_p226_attachments/tj.png", "mips smooth")
ATT.Description = [[A compensator manufactured by TJs Custom Gunworks for the SIG Sauer P226 pistols.]]

-- ATT.VisualRecoilMult = 0.89
ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.SpreadMult = 1.02
ATT.VisualRecoilMult = 0.88
ATT.RecoilMult = 0.88
-- ATT.PhysBulletMuzzleVelocityMult = 1.02
ATT.HeatCapacityAdd = 1

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_muzzle"}


ARC9.LoadAttachment(ATT, "eft_muzzle_p226_tjs")


///////////////////////////////////////      eft_grip_p226_std


ATT = {}

ATT.PrintName = "P226 polymer pistol grip (Black)"
ATT.CompactName = "P226"
ATT.Icon = Material("entities/eft_p226_attachments/poly.png", "mips smooth")
ATT.Description = [[Standard black polymer SIG Sauer side grip panels for the P226 pistols. Manufacturer Part Code: GRIP226BLKPOL.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_p226_std")


///////////////////////////////////////      eft_grip_p226_axel


ATT = {}

ATT.PrintName = "P226 Axelson Tactical MK25 pistol grip"
ATT.CompactName = "P226 Axelson"
ATT.Icon = Material("entities/eft_p226_attachments/mk25.png", "mips smooth")
ATT.Description = [[An enhanced version of the SIG Sauer P226 MK25 pistol grip, manufactured by Axelson Tactical. Limited edition.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_p226_axel")

///////////////////////////////////////      eft_grip_p226_emp


ATT = {}

ATT.PrintName = "P226 Emperor Scorpion pistol grip"
ATT.CompactName = "P226 Emperor"
ATT.Icon = Material("entities/eft_p226_attachments/sk.png", "mips smooth")
ATT.Description = [[The Emperor Scorpion polymer grip panels for P226 pistols, manufactured by SIG Sauer.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_p226_emp")

///////////////////////////////////////      eft_grip_p226_hog


ATT = {}

ATT.PrintName = "P226 Hogue Rubberized pistol grip"
ATT.CompactName = "P226 Hogue"
ATT.Icon = Material("entities/eft_p226_attachments/hog.png", "mips smooth")
ATT.Description = [[A rubber pistol grip with finger grooves for SIG Sauer P226 pistols, manufactured by Hogue.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_p226_hog")

///////////////////////////////////////      eft_grip_p226_fde


ATT = {}

ATT.PrintName = "P226 Combat pistol grip (FDE)"
ATT.CompactName = "P226 FDE"
ATT.Icon = Material("entities/eft_p226_attachments/fde.png", "mips smooth")
ATT.Description = [[Brown Flat Dark Earth polymer SIG Sauer grip panels for P226 pistols. Used as the standard service grip on the Combat P226.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_p226_fde")

///////////////////////////////////////      eft_grip_p226_stain


ATT = {}

ATT.PrintName = "P226 Stainless Elite Wooden pistol grip"
ATT.CompactName = "P226 Wooden"
ATT.Icon = Material("entities/eft_p226_attachments/wood.png", "mips smooth")
ATT.Description = [[Wooden side grip panels from the Stainless Elite kit for P226 pistols, manufactured by SIG Sauer.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_p226_stain")

///////////////////////////////////////      eft_grip_p226_g10


ATT = {}

ATT.PrintName = "P226 Hogue G10 Chain Link pistol grip"
ATT.CompactName = "P226 G10"
ATT.Icon = Material("entities/eft_p226_attachments/g10.png", "mips smooth")
ATT.Description = [[The G10 Chain Link pistol grip for P226 pistols. Manufactured by Hogue.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_p226_g10")


///////////////////////////////////////      eft_slide_p226_std


ATT = {}

ATT.PrintName = "P226R MK25 pistol slide"
ATT.CompactName = "P226 MK25"
ATT.Icon = Material("entities/eft_p226_attachments/smk25.png", "mips smooth")
ATT.Description = [[The SIG Sauer Mk25 blued slide for P226R 9x19 pistols.]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_p226_std")

///////////////////////////////////////      eft_slide_p226_emp


ATT = {}

ATT.PrintName = "P226 Emperor Scorpion pistol slide"
ATT.CompactName = "P226 Emperor"
ATT.Icon = Material("entities/eft_p226_attachments/ssk.png", "mips smooth")
ATT.Description = [[A slide from the Emperor Scorpion modification for the P226 9x19 pistols, manufactured by SIG Sauer.]]

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_p226_emp")

///////////////////////////////////////      eft_slide_p226_leg


ATT = {}

ATT.PrintName = "P226 Legion full size pistol slide"
ATT.CompactName = "P226 Legion"
ATT.Icon = Material("entities/eft_p226_attachments/leg.png", "mips smooth")
ATT.Description = [[A full-size slide from the Legion modification for the P226 9x19 pistols, manufactured by SIG Sauer.]]

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_p226_leg")

///////////////////////////////////////      eft_slide_p226_stain


ATT = {}

ATT.PrintName = "P226 Stainless Elite pistol slide"
ATT.CompactName = "P226 Stainless"
ATT.Icon = Material("entities/eft_p226_attachments/elite.png", "mips smooth")
ATT.Description = [[A slide from the Stainless Elite modification for the P226 9x19 pistols, manufactured by SIG Sauer.]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_p226_stain")

///////////////////////////////////////      eft_slide_p226_axel


ATT = {}

ATT.PrintName = "P226 Axelson Tactical MK25 pistol slide"
ATT.CompactName = "P226 Axelson"
ATT.Icon = Material("entities/eft_p226_attachments/saxe.png", "mips smooth")
ATT.Description = [[An enhanced version of the SIG Sauer P226 MK25 pistol slide, manufactured by Axelson Tactical. Limited edition.]]

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_p226_axel")


///////////////////////////////////////      eft_rs_p226_std


ATT = {}

ATT.PrintName = "P226 rear sight"
ATT.CompactName = "P226 RS"
ATT.Icon = Material("entities/eft_p226_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for the P226 pistol, manufactured by SIG Sauer.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_p226_std")

///////////////////////////////////////      eft_rs_p226_merp


ATT = {}

ATT.PrintName = "P226 Meprolight TRU-DOT Night rear sight"
ATT.CompactName = "P226 TRU-DOT"
ATT.Icon = Material("entities/eft_p226_attachments/rsmerp.png", "mips smooth")
ATT.Description = [[The TRU-DOT Night rear sight for P226 pistols with tritium bars for precision aiming, manufactured by Meprolight.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_rs"}

ATT.Sights = {
    {
        Pos = Vector(0, 13, -0.45),
        Ang = Angle(0, 0.2, 0),
        Magnification = 1.1,
        IsIronSight = true
    }
}

ARC9.LoadAttachment(ATT, "eft_rs_p226_merp")

///////////////////////////////////////      eft_rs_p226_mount


ATT = {}

ATT.PrintName = "P226 Sight Mount 220-239 rear sight bearing"
ATT.CompactName = "SM P226"
ATT.Icon = Material("entities/eft_p226_attachments/rsm.png", "mips smooth")
ATT.Description = [[The 220-239 rear sight bearing manufactured by Sight Mount for SIG Sauer 220, 226, 227, 229, 239 pistols. It is installed as a replacement of the standard rear sight and allows to use it even if no scope is installed.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "eft_optic_micro",
        Pos = Vector(1.5, 0, -0.35),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ATT.Category = {"eft_p226_rs"}


ARC9.LoadAttachment(ATT, "eft_rs_p226_mount")

///////////////////////////////////////      eft_rs_p226_rmr


ATT = {}

ATT.PrintName = "P226 Trijicon RMR mount"
ATT.CompactName = "RMR P226"
ATT.Icon = Material("entities/eft_p226_attachments/rmr.png", "mips smooth")
ATT.Description = [[A universal base for installation of the Trijicon RMR series reflex sights, replaces the standard rear sight of the SIG Sauer pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Holosight",
        Category = "eft_rmr",
        Pos = Vector(1.74, 0.0, -0.35),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1),
    },
}


ATT.Category = {"eft_p226_rs"}


ARC9.LoadAttachment(ATT, "eft_rs_p226_rmr")

