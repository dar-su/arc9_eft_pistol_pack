local ATT = {}


///////////////////////////////////////      eft_barrel_usp_std

ATT = {}

ATT.PrintName = "HK USP .45 ACP barrel"
ATT.CompactName = "USP45 std"
ATT.Icon = Material("entities/eft_usp_attachments/bstd.png", "mips smooth")
ATT.Description = [[A standard-issue 112mm .45 ACP barrel for the USP pistol, manufactured by Heckler & Koch.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.Spread = 9.63 * ARC9.MOAToAcc
ATT.PhysBulletMuzzleVelocityMult = 0.977
ATT.HeatCapacityMult = 0.86
ATT.HeatDissipationMult = 1.21

ATT.Category = {"eft_usp_barrel"}

ATT.ExcludeElements = { "eft_slide_usp_elite", "eft_slide_usp_expert" }

ARC9.LoadAttachment(ATT, "eft_barrel_usp_std")

///////////////////////////////////////      eft_barrel_usp_elite

ATT = {}

ATT.PrintName = "HK USP Elite .45 ACP barrel"
ATT.CompactName = "USP45EL"
ATT.Icon = Material("entities/eft_usp_attachments/bel.png", "mips smooth")
ATT.Description = [[A 153mm barrel for the special version of the USP pistol - USP Elite, chambered in .45 ACP. Manufactured by Heckler & Koch.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -6
ATT.CustomCons = { Ergonomics = "-6" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.Spread = 7.22 * ARC9.MOAToAcc
ATT.PhysBulletMuzzleVelocityMult = 0.977
ATT.HeatCapacityMult = 0.94
ATT.HeatDissipationMult = 1.09

ATT.Category = {"eft_usp_barrel"}

ARC9.LoadAttachment(ATT, "eft_barrel_usp_elite")

///////////////////////////////////////      eft_barrel_usp_expert

ATT = {}

ATT.PrintName = "HK USP Expert .45 ACP barrel"
ATT.CompactName = "USP45EX"
ATT.Icon = Material("entities/eft_usp_attachments/bex.png", "mips smooth")
ATT.Description = [[A 132mm barrel for the special version of the USP pistol - USP Expert, chambered in .45 ACP. Manufactured by Heckler & Koch.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.VisualRecoilMult = 0.975
ATT.RecoilMult = 0.975
ATT.Spread = 8.94 * ARC9.MOAToAcc
ATT.PhysBulletMuzzleVelocityMult = 0.984
ATT.HeatCapacityMult = 0.9
ATT.HeatDissipationMult = 1.15

ATT.Category = {"eft_usp_barrel"}

ATT.ExcludeElements = { "eft_slide_usp_elite" }

ARC9.LoadAttachment(ATT, "eft_barrel_usp_expert")

///////////////////////////////////////      eft_barrel_usp_match

ATT = {}

ATT.PrintName = "HK USP Match .45 ACP barrel"
ATT.CompactName = "USP45M"
ATT.Icon = Material("entities/eft_usp_attachments/bm.png", "mips smooth")
ATT.Description = [[A 153mm barrel for the special version of the USP pistol - USP Match, chambered in .45 ACP. Manufactured by Heckler & Koch.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -7
ATT.CustomCons = { Ergonomics = "-7" }
ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96
ATT.Spread = 7.91 * ARC9.MOAToAcc
ATT.PhysBulletMuzzleVelocityMult = 0.982
ATT.HeatCapacityMult = 0.94
ATT.HeatDissipationMult = 1.09

ATT.Category = {"eft_usp_barrel"}

ATT.ExcludeElements = { "eft_slide_usp_elite" }

ARC9.LoadAttachment(ATT, "eft_barrel_usp_match")

///////////////////////////////////////      eft_barrel_usp_tac

ATT = {}

ATT.PrintName = "HK USP Tactical .45 ACP threaded barrel"
ATT.CompactName = "USP45T"
ATT.Icon = Material("entities/eft_usp_attachments/bt.png", "mips smooth")
ATT.Description = [[A 129mm threaded barrel for the special version of the USP pistol - USP Tactical, chambered in .45 ACP. Manufactured by Heckler & Koch.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.Spread = 9.28 * ARC9.MOAToAcc
ATT.PhysBulletMuzzleVelocityMult = 0.978
ATT.HeatCapacityMult = 0.9
ATT.HeatDissipationMult = 1.15

ATT.Category = {"eft_usp_barrel"}

ATT.ExcludeElements = { "eft_slide_usp_elite", "eft_slide_usp_expert" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_usp_muzzle"},
        Pos = Vector(0, 3.8, 0.03),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_usp_tac")


///////////////////////////////////////      eft_usp_slock_std

ATT = {}

ATT.PrintName = "HK USP slide lock"
ATT.CompactName = "USP SLock"
ATT.Icon = Material("entities/eft_usp_attachments/lever.png", "mips smooth")
ATT.Description = [[A standard-issue slide lock lever for the USP pistol, manufactured by Heckler & Koch.]]

ATT.HasLock = true

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_slock"}

ARC9.LoadAttachment(ATT, "eft_usp_slock_std")

///////////////////////////////////////      eft_usp_hammer_std

ATT = {}

ATT.PrintName = "HK USP hammer"
ATT.CompactName = "USP ham."
ATT.Icon = Material("entities/eft_usp_attachments/ham.png", "mips smooth")
ATT.Description = [[A standard-issue slide lock lever for the USP pistol, manufactured by Heckler & Koch.]]

ATT.HasHammer = true

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_hammer"}

ARC9.LoadAttachment(ATT, "eft_usp_hammer_std")

///////////////////////////////////////      eft_usp_trigger_std

ATT = {}

ATT.PrintName = "HK USP trigger"
ATT.CompactName = "USP trig."
ATT.Icon = Material("entities/eft_usp_attachments/trig.png", "mips smooth")
ATT.Description = [[A standard-issue trigger for the USP pistol, manufactured by Heckler & Koch.]]

ATT.HasTrigger = true

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_trigger"}

ARC9.LoadAttachment(ATT, "eft_usp_trigger_std")


///////////////////////////////////////      eft_slide_usp_std

ATT = {}

ATT.PrintName = "HK USP .45 ACP pistol slide"
ATT.CompactName = "USP45"
ATT.Icon = Material("entities/eft_usp_attachments/sstd.png", "mips smooth")
ATT.Description = [[A standard-issue slide for the USP45 pistol, manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.HeatCapacityMult = 0.96
ATT.HeatDissipationMult = 1.06

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_usp_fs",
        Pos = Vector(0, 3.13, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_usp_rs",
        Pos = Vector(0, -3.41, -0.74),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_usp_std")

///////////////////////////////////////      eft_slide_usp_elite

ATT = {}

ATT.PrintName = "HK USP Elite .45 ACP pistol slide"
ATT.CompactName = "USP45EL"
ATT.Icon = Material("entities/eft_usp_attachments/sel.png", "mips smooth")
ATT.Description = [[A pistol slide for the special version of the USP45 pistol - USP45 Elite, manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96
ATT.HeatCapacityMult = 0.95
ATT.HeatDissipationMult = 1.06

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_slide"}

ATT.ExcludeElements = { "eft_barrel_usp_std", "eft_barrel_usp_expert", "eft_barrel_usp_match", "eft_barrel_usp_tac" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_usp_fs",
        Pos = Vector(0, 4.76, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_usp_rs",
        Pos = Vector(0, -3.41, -0.66),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_usp_elite")

///////////////////////////////////////      eft_slide_usp_expert

ATT = {}

ATT.PrintName = "HK USP Expert .45 ACP pistol slide"
ATT.CompactName = "USP45EX"
ATT.Icon = Material("entities/eft_usp_attachments/sex.png", "mips smooth")
ATT.Description = [[A pistol slide for the special version of the USP45 pistol - USP45 Expert, manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.HeatCapacityMult = 0.958
ATT.HeatDissipationMult = 1.06

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_slide"}

ATT.ExcludeElements = { "eft_barrel_usp_std", "eft_barrel_usp_tac" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_usp_fs",
        Pos = Vector(0, 3.866, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_usp_rs",
        Pos = Vector(0, -3.395, -0.66),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_usp_expert")

///////////////////////////////////////      eft_slide_usp_match

ATT = {}

ATT.PrintName = "HK USP Match .45 ACP pistol slide"
ATT.CompactName = "USP45M"
ATT.Icon = Material("entities/eft_usp_attachments/sm.png", "mips smooth")
ATT.Description = [[A pistol slide for the special version of the USP45 pistol - USP45 Match, manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.HeatCapacityMult = 0.958
ATT.HeatDissipationMult = 1.06

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_usp_fs",
        Pos = Vector(0, 3.13, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_usp_rs",
        Pos = Vector(0, -3.41, -0.74),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_usp_match")

///////////////////////////////////////      eft_slide_usp_tac

ATT = {}

ATT.PrintName = "HK USP Match .45 ACP pistol slide"
ATT.CompactName = "USP45T"
ATT.Icon = Material("entities/eft_usp_attachments/st.png", "mips smooth")
ATT.Description = [[A pistol slide for the special version of the USP45 pistol - USP45 Tactical, manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.HeatCapacityMult = 0.956
ATT.HeatDissipationMult = 1.06

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_usp_fs",
        Pos = Vector(0, 3.13, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_usp_rs",
        Pos = Vector(0, -3.41, -0.74),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_usp_tac")

///////////////////////////////////////      eft_fs_usp_std

ATT = {}

ATT.PrintName = "HK USP front sight"
ATT.CompactName = "USP FS"
ATT.Icon = Material("entities/eft_usp_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard-issue front sight for the USP pistol, manufactured by Heckler & Koch.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_fs"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/usp_fs.mdl"
-- ATT.ModelBodygroups = "0"

ARC9.LoadAttachment(ATT, "eft_fs_usp_std")

///////////////////////////////////////      eft_fs_usp_tac

ATT = {}

ATT.PrintName = "HK USP Tactical front sight"
ATT.CompactName = "USPT FS"
ATT.Icon = Material("entities/eft_usp_attachments/fst.png", "mips smooth")
ATT.Description = [[A front sight for the special version of the USP pistol - USP Tactical. Manufactured by Heckler & Koch.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_fs"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/usp_fs.mdl"
ATT.ModelBodygroups = "1"

ARC9.LoadAttachment(ATT, "eft_fs_usp_tac")

///////////////////////////////////////      eft_rs_usp_std

ATT = {}

ATT.PrintName = "HK USP rear sight"
ATT.CompactName = "USP RS"
ATT.Icon = Material("entities/eft_usp_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for the USP pistol, manufactured by Heckler & Koch.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_rs"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/usp_rs.mdl"
-- ATT.ModelBodygroups = "0"

ARC9.LoadAttachment(ATT, "eft_rs_usp_std")

///////////////////////////////////////      eft_rs_usp_tac

ATT = {}

ATT.PrintName = "HK USP Tactical rear sight"
ATT.CompactName = "USPT RS"
ATT.Icon = Material("entities/eft_usp_attachments/rst.png", "mips smooth")
ATT.Description = [[A rear sight for the special version of the USP pistol - USP Tactical. Manufactured by Heckler & Koch.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_rs"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/usp_rs.mdl"
ATT.ModelBodygroups = "1"

ARC9.LoadAttachment(ATT, "eft_rs_usp_tac")

///////////////////////////////////////      eft_rs_usp_mount

ATT = {}

ATT.PrintName = "HK USP Red Dot sight mount"
ATT.CompactName = "USP RD"
ATT.Icon = Material("entities/eft_usp_attachments/rsrd.png", "mips smooth")
ATT.Description = [[A rear sight mount allows the installation of Burris Fast Fire, Docter, and other similar reflex sights.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = "eft_ff3",
        Pos = Vector(-0.375, 0, -0.115),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/usp_rs.mdl"
ATT.ModelBodygroups = "2"

ATT.Category = {"eft_usp_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_usp_mount")

///////////////////////////////////////      eft_mag_usp_std

ATT = {}

ATT.PrintName = "HK USP .45 ACP 12-round magazine"
ATT.CompactName = "USP45"
ATT.Icon = Material("entities/eft_usp_attachments/12.png", "mips smooth")
ATT.Description = [[A standard-issue 12-round .45 ACP magazine for the USP45 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.EFTErgoAdd = -2
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-2" }

ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_hk_usp.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_hk_usp.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 12
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.Category = {"eft_usp_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_usp_std")

///////////////////////////////////////      eft_mag_usp_tac

ATT = {}

ATT.PrintName = "HK USP Tactical .45 ACP 12-round magazine"
ATT.CompactName = "USP45T"
ATT.Icon = Material("entities/eft_usp_attachments/12t.png", "mips smooth")
ATT.Description = [[A standard-issue 12-round .45 ACP magazine for the USP45 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.EFTErgoAdd = 1
ATT.CustomPros = { ["Improved check accuracy"] = "Yes", Ergonomics = "+1" }

ATT.MalfunctionMeanShotsToFailMult = 0.982

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_hk_usp_tactical.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_hk_usp_tactical.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 12
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.Category = {"eft_usp_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_usp_tac")

///////////////////////////////////////      eft_muzzle_usp_cap

ATT = {}

ATT.PrintName = "HK USP Tactical thread protector"
ATT.CompactName = "USP45T"
ATT.Icon = Material("entities/eft_usp_attachments/thr.png", "mips smooth")
ATT.Description = [[A thread protector for the Tactical barrel for the USP pistol, manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_usp_cap")

///////////////////////////////////////      eft_mount_usp_rail

ATT = {}

ATT.PrintName = "HK USP rail adapter"
ATT.CompactName = "USP rail"
ATT.Icon = Material("entities/eft_usp_attachments/rail.png", "mips smooth")
ATT.Description = [[An adapter for the USP pistol that allows the installation of additional tactical equipment. Manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_tac"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-0.7, 0, -0.33),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_usp_rail")

///////////////////////////////////////      eft_mount_usp_elite

ATT = {}

ATT.PrintName = "HK USP .45 ACP Elite compensator"
ATT.CompactName = "USP45EL"
ATT.Icon = Material("entities/eft_usp_attachments/elcomp.png", "mips smooth")
ATT.Description = [[The Elite compensator from the special USP Elite pistol kit will add additional weight to the front of your gun assisting to reduce vertical recoil "bounce". Manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = -8
ATT.CustomCons = { Ergonomics = "-8" }
ATT.VisualRecoilMult = 0.9
ATT.RecoilMult = 0.9

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ExcludeElements = { "eft_slide_usp_expert", "eft_barrel_usp_std", "eft_barrel_usp_expert", "eft_barrel_usp_tac" }

ATT.Category = {"eft_usp_tac"}

ARC9.LoadAttachment(ATT, "eft_mount_usp_elite")

///////////////////////////////////////      eft_mount_usp_match

ATT = {}

ATT.PrintName = "HK USP .45 ACP Match compensator"
ATT.CompactName = "USP45M"
ATT.Icon = Material("entities/eft_usp_attachments/matchcomp.png", "mips smooth")
ATT.Description = [[The Match compensator from the special USP Match pistol kit will add additional weight to the front of your gun assisting to reduce vertical recoil "bounce". Features a mount for installation of additional tactical equipment. Manufactured by Heckler & Koch.]]

ATT.EFTErgoAdd = -12
ATT.CustomCons = { Ergonomics = "-12" }
ATT.VisualRecoilMult = 0.85
ATT.RecoilMult = 0.85

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_usp_tac"}

ATT.ExcludeElements = { "eft_slide_usp_elite", "eft_slide_usp_expert", "eft_barrel_usp_std", "eft_barrel_usp_expert", "eft_barrel_usp_tac" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-0.55, 0, -0.76),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_usp_match")

///////////////////////////////////////      eft_muzzle_omegapiston

ATT = {}

ATT.PrintName = "SilencerCo Omega 45k Piston Mount adapter"
ATT.CompactName = "PM Omega"
ATT.Icon = Material("entities/eft_usp_attachments/omegapiston.png", "mips smooth")
ATT.Description = [[The Piston Mount adapter for installation of SilencerCo Omega 45k sound suppressor directly onto the barrel threading.]]

-- ATT.EFTErgoAdd = 1
-- ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_all_silencerco_omega_45k_piston.mdl"

ATT.Category = {"eft_usp_muzzle", "eft_1911_muzzle"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_silencer"),
        Category = "eft_omega_silencer",
        Pos = Vector(-0.36, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_muzzle_omegapiston")

