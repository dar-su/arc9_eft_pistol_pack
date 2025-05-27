local ATT = {}


///////////////////////////////////////      eft_barrel_deagle_l5_50ae


ATT = {}

ATT.PrintName = "Desert Eagle L5 .50 AE 127mm barrel"
ATT.CompactName = "L5 .50AE"
ATT.Icon = Material("entities/eft_deagle_attachments/b6.png", "mips smooth")
ATT.Description = [[An L5 127mm .50 AE barrel for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_deagle_barrel_l5"}

ATT.ExcludeElements = {"eft_slide_deagle_l5_357"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_deagle_fs",
        Pos = Vector(0, 4.2, -1.5),
        Icon_Offset = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_small", "eft_reapir", "eft_optic_prism"},
        RejectAttachments = { ["eft_optic_boss"] = true, ["eft_optic_pk120"] = true, },
        Pos = Vector(0, 2.2, -1.38),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 6.5
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_deagle_l5_50ae")

///////////////////////////////////////      eft_barrel_deagle_l5_357


ATT = {}

ATT.PrintName = "Desert Eagle L5 .357 127mm barrel"
ATT.CompactName = "L5 .357"
ATT.Icon = Material("entities/eft_deagle_attachments/b357.png", "mips smooth")
ATT.Description = [[An L5 127mm .357 Magnum barrel for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_deagle_barrel_l5"}

ATT.RequireElements = {"eft_slide_deagle_l5_357"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_deagle_fs",
        Pos = Vector(0, 4.2, -1.5),
        Icon_Offset = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_small", "eft_reapir", "eft_optic_prism"},
        RejectAttachments = { ["eft_optic_boss"] = true, ["eft_optic_pk120"] = true, },
        Pos = Vector(0, 2.2, -1.38),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 6.5
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_deagle_l5_357")

///////////////////////////////////////      eft_barrel_deagle_l6_50ae


ATT = {}

ATT.PrintName = "Desert Eagle L6 .50 AE 152mm barrel"
ATT.CompactName = "L6 .50AE"
ATT.Icon = Material("entities/eft_deagle_attachments/b.png", "mips smooth")
ATT.Description = [[An L6 152mm .50 AE barrel for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.VisualRecoilMult = 0.965
ATT.RecoilMult = 0.965
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_deagle_barrel_l6"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_deagle_fs",
        Pos = Vector(0, 4.2, -1.5),
        Icon_Offset = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_medium",  "eft_optic_small", "eft_reapir", "eft_optic_prism"},
        RejectAttachments = { 
            ["eft_optic_boss"] = true, 
            ["eft_optic_pk120"] = true, 
            ["eft_optic_553"] = true, 
            ["eft_optic_okp7"] = true, 
            ["eft_optic_kobra"] = true, 
            ["eft_optic_krechet"] = true,
            ["eft_mount_t1sun"] = true },
        Pos = Vector(0, 2.2, -1.38),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 6.5
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_deagle_l6_50ae")

///////////////////////////////////////      eft_barrel_deagle_l6_wts


ATT = {}

ATT.PrintName = "Desert Eagle L6 .50 AE 152mm barrel (WTS)"
ATT.CompactName = "L6 .50AE (WTS)"
ATT.Icon = Material("entities/eft_deagle_attachments/bt.png", "mips smooth")
ATT.Description = [[An L6 152mm .50 AE barrel for the Desert Eagle pistol, manufactured by Magnum Research. White Tiger Stripes version.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.VisualRecoilMult = 0.965
ATT.RecoilMult = 0.965
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_deagle_barrel_l6"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_deagle_fs",
        Pos = Vector(0, 4.2, -1.5),
        Icon_Offset = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_medium",  "eft_optic_small", "eft_reapir", "eft_optic_prism"},
        RejectAttachments = { 
            ["eft_optic_boss"] = true, 
            ["eft_optic_pk120"] = true, 
            ["eft_optic_553"] = true, 
            ["eft_optic_okp7"] = true, 
            ["eft_optic_kobra"] = true, 
            ["eft_optic_krechet"] = true,
            ["eft_mount_t1sun"] = true },
        Pos = Vector(0, 2.2, -1.38),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 6.5
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_deagle_l6_wts")

///////////////////////////////////////      eft_barrel_deagle_xix


ATT = {}

ATT.PrintName = "Desert Eagle Mk XIX .50 AE 152mm barrel"
ATT.CompactName = "XIX .50AE"
ATT.Icon = Material("entities/eft_deagle_attachments/bx.png", "mips smooth")
ATT.Description = [[A Mark XIX 152mm .50 AE barrel for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
-- ATT.PhysBulletMuzzleVelocityMult = 0.976

ATT.Category = {"eft_deagle_barrel_xix"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_deagle_fs",
        Pos = Vector(0, 4.2, -1.5),
        Icon_Offset = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },    
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_medium",  "eft_optic_small", "eft_reapir", "eft_optic_prism"},
        RejectAttachments = { 
            ["eft_optic_boss"] = true, 
            ["eft_optic_pk120"] = true, 
            ["eft_optic_553"] = true, 
            ["eft_optic_okp7"] = true, 
            ["eft_optic_kobra"] = true, 
            ["eft_optic_krechet"] = true,
            ["eft_mount_t1sun"] = true },
        Pos = Vector(0, 2.2, -1.38),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 6.5
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_deagle_xix")


///////////////////////////////////////      eft_pg_deagle_std

ATT = {}

ATT.PrintName = "Desert Eagle Hogue Rubber Grip"
ATT.CompactName = "DE RG"
ATT.Icon = Material("entities/eft_deagle_attachments/pg.png", "mips smooth")
ATT.Description = [[A rubberized grip for the Desert Eagle pistol. Manufactured by Hogue.]]

ATT.HasGrip = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.Category = {"eft_deagle_pg"}

ARC9.LoadAttachment(ATT, "eft_pg_deagle_std")

///////////////////////////////////////      eft_pg_deagle_ergo

ATT = {}

ATT.PrintName = "Desert Eagle Hogue Rubber Grip with finger grooves"
ATT.CompactName = "DE RGFG"
ATT.Icon = Material("entities/eft_deagle_attachments/pgergo.png", "mips smooth")
ATT.Description = [[A rubberized grip with finger grooves for the Desert Eagle pistol. Manufactured by Hogue.]]

ATT.HasGrip = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.Category = {"eft_deagle_pg"}

ARC9.LoadAttachment(ATT, "eft_pg_deagle_ergo")

///////////////////////////////////////      eft_rs_deagle_std


ATT = {}

ATT.PrintName = "Desert Eagle rear sight"
ATT.CompactName = "DE RS"
ATT.Icon = Material("entities/eft_deagle_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_deagle_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_deagle_std")

///////////////////////////////////////      eft_fs_deagle_std


ATT = {}

ATT.PrintName = "Desert Eagle front sight"
ATT.CompactName = "DE FS"
ATT.Icon = Material("entities/eft_deagle_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard-issue front sight for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_deagle_fs"}

ARC9.LoadAttachment(ATT, "eft_fs_deagle_std")




///////////////////////////////////////      eft_mag_deagle_7


ATT = {}

ATT.PrintName = "Desert Eagle .50 AE 7-round magazine"
ATT.CompactName = "DE .50 AE"
ATT.Icon = Material("entities/eft_deagle_attachments/7.png", "mips smooth")
ATT.Description = [[A standard-issue 7-round .50 AE magazine for the Desert Eagle pistol. Manufactured by Magnum Research.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_deagle_7.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 7
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.Category = {"eft_deagle_mag"}
ATT.ExcludeElements = {"eft_slide_deagle_l5_357"}

ARC9.LoadAttachment(ATT, "eft_mag_deagle_7")

///////////////////////////////////////      eft_mag_deagle_9


ATT = {}

ATT.PrintName = "Desert Eagle .357 9-round magazine"
ATT.CompactName = "DE .357"
ATT.Icon = Material("entities/eft_deagle_attachments/9.png", "mips smooth")
ATT.Description = [[A standard-issue 9-round .357 Magnum magazine for the Desert Eagle L5 pistol. Manufactured by Magnum Research.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_deagle_9.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 9
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.Category = {"eft_deagle_mag"}
ATT.RequireElements = {"eft_slide_deagle_l5_357"}

ARC9.LoadAttachment(ATT, "eft_mag_deagle_9")

///////////////////////////////////////      eft_slide_deagle_l5


ATT = {}

ATT.PrintName = "Desert Eagle L5 .50 AE pistol slide"
ATT.CompactName = "L5 .50AE"
ATT.Icon = Material("entities/eft_deagle_attachments/s6.png", "mips smooth")
ATT.Description = [[An L5 slide for the Desert Eagle pistol chambered in .50 AE, manufactured by Magnum Research.]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_deagle_slide_l5"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_deagle_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_deagle_l5")

///////////////////////////////////////      eft_slide_deagle_l5_357


ATT = {}

ATT.PrintName = "Desert Eagle L5 .357 pistol slide"
ATT.CompactName = "L5 .357"
ATT.Icon = Material("entities/eft_deagle_attachments/s357.png", "mips smooth")
ATT.Description = [[An L5 slide for the Desert Eagle pistol chambered in .357 Magnum, manufactured by Magnum Research.

in this mod it converts l5 deagle to .357!!]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ShellModel = "models/weapons/arc9/darsu_eft/shells/357.mdl"

local path = ")weapons/darsu_eft/deagle/"
ATT.ShootSound = path .. "de357_outdoor_close.wav"
ATT.ShootSoundIndoor = path .. "de357_indoor_close.wav"
ATT.DistantShootSound = path .. "de357_outdoor_distant.wav"
ATT.DistantShootSoundIndoor = path .. "de357_indoor_distant.wav"

ATT.ActivateElements = {"eft_slide_deagle_l5_357"}
ATT.Category = {"eft_deagle_slide_l5"}

ATT.RecoilMult = 0.33
ATT.VisualRecoilMult = 0.4
ATT.VisualRecoilPositionBumpUpMult = 0.3
ATT.VisualRecoilDampingConst = 65
ATT.RecoilKickMult = 0.75

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_deagle_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_357",
        Integral = "eft_ammo_357_fmj",
        Installed = "eft_ammo_357_fmj",
        Pos = Vector(0, -2, 5.68),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_deagle_l5_357")

///////////////////////////////////////      eft_slide_deagle_l6


ATT = {}

ATT.PrintName = "Desert Eagle L6 pistol slide"
ATT.CompactName = "L6"
ATT.Icon = Material("entities/eft_deagle_attachments/s.png", "mips smooth")
ATT.Description = [[An L6 slide for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.VisualRecoilMult = 1.1
ATT.VisualRecoilPositionBumpUpMult = 1.1

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_deagle_slide_l6"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_deagle_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_deagle_l6")

///////////////////////////////////////      eft_slide_deagle_l6_wts


ATT = {}

ATT.PrintName = "Desert Eagle L6 pistol slide (WTS)"
ATT.CompactName = "L6 (WTS)"
ATT.Icon = Material("entities/eft_deagle_attachments/st.png", "mips smooth")
ATT.Description = [[An L6 slide for the Desert Eagle pistol, manufactured by Magnum Research. White Tiger Stripes version.

In this mod it colors frame to WTS too (it is seperate gun in tarbkov)]]

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_deagle_slide_l6"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_deagle_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_deagle_l6_wts")

///////////////////////////////////////      eft_slide_deagle_xix


ATT = {}

ATT.PrintName = "Desert Eagle Mk XIX pistol slide"
ATT.CompactName = "Mk XIX"
ATT.Icon = Material("entities/eft_deagle_attachments/sx.png", "mips smooth")
ATT.Description = [[A Mark XIX slide for the Desert Eagle pistol, manufactured by Magnum Research.]]

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_deagle_slide_xix"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_deagle_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_slide_deagle_xix")
