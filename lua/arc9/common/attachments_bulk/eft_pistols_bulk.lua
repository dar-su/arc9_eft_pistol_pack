local ATT = {}

///////////////////////////////////////      eft_rsh12_mag_std

ATT = {}

ATT.PrintName = "RSh-12 12.7x55 5-round cylinder"
ATT.CompactName = "RSh12 cyl."
ATT.Icon = Material("entities/eft_ash12_attachments/cyl.png", "mips smooth")
ATT.Description = [[A 5-round 12.7x55 cylinder for the RSh-12 revolver.]]

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98


ATT.ClipSize = 5

ATT.HasMag = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rsh12_mag"}

ARC9.LoadAttachment(ATT, "eft_rsh12_mag_std")


///////////////////////////////////////      eft_rsh12_pgrip_std
ATT = {}

ATT.PrintName = "RSh-12 pistol grip"
ATT.CompactName = "RSh-12"
ATT.Icon = Material("entities/eft_ash12_attachments/grip.png", "mips smooth")
ATT.Description = [[A standard-issue plastic pistol grip for the RSh-12 revolver, manufactured by the KBP Instrument Design Bureau.]]

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }


ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rsh12_pgrip"}

ARC9.LoadAttachment(ATT, "eft_rsh12_pgrip_std")











///////////////////////////////////////      eft_silencer_sr1mp

ATT = {}

ATT.PrintName = "SR-1MP 9x21 sound suppressor"
ATT.CompactName = "SR-1MP"
ATT.Icon = Material("entities/eft_sr2m_attachments/sil.png", "mips smooth")
ATT.Description = [[A standard-issue sound suppressor from the SR-1MP pistol kit. Requires a rail mount to be installed on the weapon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -15
ATT.CustomCons = { Ergonomics = "-15" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.HeatCapacityMult = 0.88
-- ATT.SpreadMult = 0.99

ATT.CustomizePos = Vector(25.5, 25, 4.5)

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_silencerrr_sr1mp"}

ARC9.LoadAttachment(ATT, "eft_silencer_sr1mp")

///////////////////////////////////////      eft_mount_sr1mp_1x

ATT = {}

ATT.PrintName = "SR-1MP single rail mount"
ATT.CompactName = "SR-1MP 1x"
ATT.Icon = Material("entities/eft_sr2m_attachments/1x.png", "mips smooth")
ATT.Description = [[A mount for SR-1MP, included in the pistol kit, designed to form a single rail and silencer installation place.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mount_sr1mp"}

ATT.Attachments = {
    {
        PrintName = "Mount",
        Category = "eft_silmount_sr1mp",
        Pos = Vector(-0.7, 0, 0.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-0.5, 0, -0.3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_sr1mp_1x")

///////////////////////////////////////      eft_mount_sr1mp_sil

ATT = {}

ATT.PrintName = "SR-1MP sound suppressor mount"
ATT.CompactName = "SR-1MP mount"
ATT.Icon = Material("entities/eft_sr2m_attachments/sm.png", "mips smooth")
ATT.Description = [[A mount for SR-1MP from the pistol kit, used for quick installation and removal of the sound suppressor.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_silmount_sr1mp"}

ATT.Attachments = {
    {
        PrintName = "Silencer",
        Category = "eft_silencerrr_sr1mp",
        Pos = Vector(-1.2, 0, -0.85),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_sr1mp_sil")

///////////////////////////////////////      eft_mount_sr1mp_4x

ATT = {}

ATT.PrintName = "SR-1MP quad rail mount"
ATT.CompactName = "SR-1MP 4x"
ATT.Icon = Material("entities/eft_sr2m_attachments/4x.png", "mips smooth")
ATT.Description = [[A mount for the SR-1MP pistol that forms four guide rails, allowing installation of the sound suppressor.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mount_sr1mp"}

ATT.Attachments = {
    {
        PrintName = "Mount",
        Category = "eft_silmount_sr1mp",
        Pos = Vector(-0.7, 0, 0.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Optic",
        Category = "eft_optic_small",
        Pos = Vector(0.7, 0, 2.25),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R. Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0.1, 1, 1.2),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "L. Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0.1, -1, 1.2),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "B. Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-0.5, 0, -0.3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_sr1mp_4x")

///////////////////////////////////////      eft_mag_sr1mp_std

ATT = {}

ATT.PrintName = "SR-1MP 9x21 18-round magazine"
ATT.CompactName = "SR-1MP 18"
ATT.Icon = Material("entities/eft_sr2m_attachments/18.png", "mips smooth")
ATT.Description = [[A standard 18-round 9x21 magazine for the SR-1MP pistol.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DropMagazineAmount = 1
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr1mp.mdl"

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 18

ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.Category = {"eft_sr1mp_mag"}
ATT.ActivateElements = {"magdef"}

ARC9.LoadAttachment(ATT, "eft_mag_sr1mp_std")
















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












///////////////////////////////////////      eft_aps_rs_std

ATT = {}

ATT.PrintName = "APS rear sight"
ATT.CompactName = "APS RS"
ATT.Icon = Material("entities/eft_aps_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard rear sight for APS pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_rs"}

ARC9.LoadAttachment(ATT, "eft_aps_rs_std")

///////////////////////////////////////      eft_aps_fs_std

ATT = {}

ATT.PrintName = "APS front sight"
ATT.CompactName = "APS FS"
ATT.Icon = Material("entities/eft_aps_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard front sight for APS pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_fs"}

ARC9.LoadAttachment(ATT, "eft_aps_fs_std")

///////////////////////////////////////      eft_aps_rs_apb

ATT = {}

ATT.PrintName = "APB rear sight"
ATT.CompactName = "APB RS"
ATT.Icon = Material("entities/eft_aps_attachments/brs.png", "mips smooth")
ATT.Description = [[A standard rear sight for APB pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_rs"}

ARC9.LoadAttachment(ATT, "eft_aps_rs_apb")

///////////////////////////////////////      eft_aps_pg_std

ATT = {}

ATT.PrintName = "APS bakelite side-pieces"
ATT.CompactName = "APS bak."
ATT.Icon = Material("entities/eft_aps_attachments/g.png", "mips smooth")
ATT.Description = [[Standard-issue APS pistol bakelite side grips.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_pg"}

ARC9.LoadAttachment(ATT, "eft_aps_pg_std")


///////////////////////////////////////      eft_aps_mag_20

ATT = {}

ATT.PrintName = "APS 9x18PM 20-round magazine"
ATT.CompactName = "APS 20"
ATT.Icon = Material("entities/eft_aps_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round magazine for Molot-produced APS pistols. It features a side observation slot for faster capacity checking.]]

ATT.EFTErgoAdd = -3
ATT.CustomPros = { Ergonomics = "-3" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_aps_20.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_mag"}
ATT.ActivateElements = {"magdef"}

ATT.HasMag = true
ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 20
ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_aps_mag_20")


///////////////////////////////////////      eft_apb_silencer_std

ATT = {}

ATT.PrintName = "APB 9x18PM sound suppressor"
ATT.CompactName = "APB supp."
ATT.Icon = Material("entities/eft_aps_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue detachable APB pistol sound suppressor.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.VisualRecoilMult = 0.94
ATT.RecoilMult = 0.94
ATT.HeatCapacityMult = 0.87
ATT.EFTErgoAdd = -21
ATT.CustomCons = { Ergonomics = "-21" }

ATT.Silencer = true 
ATT.CustomizePos = Vector(24, 21, 4.0)

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Category = {"eft_apb_silencer"}

ARC9.LoadAttachment(ATT, "eft_apb_silencer_std")

///////////////////////////////////////      eft_aps_stock_std

ATT = {}

ATT.PrintName = "APB detachable wire stock"
ATT.CompactName = "APB stock"
ATT.Icon = Material("entities/eft_aps_attachments/st.png", "mips smooth")
ATT.Description = [[A standard-issue wire stock for APB pistols.]]

ATT.VisualRecoilMult = 0.73
ATT.RecoilMult = 0.73

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_stock"}

ARC9.LoadAttachment(ATT, "eft_aps_stock_std")











///////////////////////////////////////      eft_mag_mp443_std


ATT = {}

ATT.PrintName = "MP-443 Grach 9x19 18-round magazine"
ATT.CompactName = "MP-443 18"
ATT.Icon = Material("entities/eft_mp443_attachments/m.png", "mips smooth")
ATT.Description = [[Standard 18-round 9x19 magazine for MP-443 Grach.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
-- ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp443.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 18
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magdef"}

ATT.Category = {"eft_mp443_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_mp443_std")

///////////////////////////////////////      eft_grip_mp443_std


ATT = {}

ATT.PrintName = "MP-443 Grach polymer pistol grip"
ATT.CompactName = "MP-443"
ATT.Icon = Material("entities/eft_mp443_attachments/g.png", "mips smooth")
ATT.Description = [[Standard service pistol grip for MP-443 manufactured by Izhmekh. ]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGrip = true 

ATT.Category = {"eft_mp443_grip"}

ARC9.LoadAttachment(ATT, "eft_grip_mp443_std")


///////////////////////////////////////      eft_mount_mp443_rail

ATT = {}

ATT.PrintName = "MP-443 Grach Zenit B-8 mount"
ATT.CompactName = "B-8"
ATT.Icon = Material("entities/eft_mp443_attachments/b8.png", "mips smooth")
ATT.Description = "B-8 rail mount is installed on Yarygin pistol (MP-443 Grach and its civilian version MP-446 Viking) for use with additional attachments, e.g. 2KS Klesch Mini tactical laser flashlight. "

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp443_tac"}

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol", "eft_um3"},
        Pos = Vector(-0.6, 0, -0.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_mp443_rail")