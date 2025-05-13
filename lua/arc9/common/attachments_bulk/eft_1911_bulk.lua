local ATT = {}


///////////////////////////////////////      eft_slide_1911_std

ATT = {}

ATT.PrintName = "M1911A1 pistol slide"
ATT.CompactName = "1911 std"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_pistol_slide.png", "mips smooth")
ATT.Description = "A standard-issue slide for the M1911A1 pistol, manufactured by Colt."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.HeatCapacityMult = 0.958

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_1911_fs",
        Pos = Vector(0, 2.5, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_1911_rs",
        Pos = Vector(0, -4.41, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Muzzle",
        Category = "eft_1911_muzzlerec",
        Pos = Vector(0, 3, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_1911_std")

///////////////////////////////////////      eft_slide_1911_m45

ATT = {}

ATT.PrintName = "M45A1 pistol slide"
ATT.CompactName = "M45 std"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_pistol_slide.png", "mips smooth")
ATT.Description = "A standard-issue slide for the M45A1 pistol, manufactured by Colt."

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.HeatCapacityMult = 0.954

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_m45_fs",
        Pos = Vector(0, 2.5, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_m45_rs",
        Pos = Vector(0, -4.41, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Muzzle",
        Category = "eft_1911_muzzlerec",
        Pos = Vector(0, 3, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_1911_m45")


///////////////////////////////////////      eft_barrel_1911_std

ATT = {}

ATT.PrintName = "M1911A1 .45 ACP 127mm barrel"
ATT.CompactName = "1911 127mm"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_45_acp_127mm_barrel.png", "mips smooth")
ATT.Description = "A standard-issue 127mm .45 ACP barrel for M1911A1 pistols, manufactured by Colt."

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 0.9872

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_barrel"}

-- ATT.ExcludeElements = { "eft_slide_1911_elite", "eft_slide_1911_expert" }

ARC9.LoadAttachment(ATT, "eft_barrel_1911_std")

///////////////////////////////////////      eft_barrel_1911_nat

ATT = {}

ATT.PrintName = "M1911A1 .45 ACP National Match barrel"
ATT.CompactName = "1911 Match"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_45_acp_national_match_barrel.png", "mips smooth")
ATT.Description = "The National Match barrel for the M1911A1 .45 ACP pistol, manufactured by Colt."

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 0.9892

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_barrel"}

-- ATT.ExcludeElements = { "eft_slide_1911_elite", "eft_slide_1911_expert" }

ARC9.LoadAttachment(ATT, "eft_barrel_1911_nat")

///////////////////////////////////////      eft_barrel_1911_thr

ATT = {}

ATT.PrintName = "M1911A1 .45 ACP threaded barrel"
ATT.CompactName = "1911 thr."
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_45_acp_threaded_barrel.png", "mips smooth")
ATT.Description = "A standard-issue threaded barrel for the M1911A1 .45 ACP pistol, manufactured by Colt."

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.08
ATT.PhysBulletMuzzleVelocityMult = 0.9922

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_barrel"}

-- ATT.ExcludeElements = { "eft_slide_1911_elite", "eft_slide_1911_expert" }

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_1911_muzzle"},
        Pos = Vector(0, 4.7, -0.25),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_1911_thr")

///////////////////////////////////////      eft_1911_pgrip_std

ATT = {}

ATT.PrintName = "M1911A1 side grips"
ATT.CompactName = "1911 grip"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_side_grips.png", "mips smooth")
ATT.Description = "Standard-issue side grip panels for the M1911A1 pistol, manufactured by Colt."

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_pgrip"}

ARC9.LoadAttachment(ATT, "eft_1911_pgrip_std")

///////////////////////////////////////      eft_1911_pgrip_m45

ATT = {}

ATT.PrintName = "M45A1 Mil-Tac GVT G10 side grips"
ATT.CompactName = "1911 G10"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_miltac_gvt_g10_side_grips.png", "mips smooth")
ATT.Description = "The GVT G10 fiberglass grip panels for the Colt M45A1 pistol, manufactured by Mil-Tac."

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_pgrip", "eft_m45_pgrip"}

ARC9.LoadAttachment(ATT, "eft_1911_pgrip_m45")

///////////////////////////////////////      eft_1911_pgrip_pach

ATT = {}

ATT.PrintName = "M1911 Pachmayr American Legend Grip #423"
ATT.CompactName = "1911 Pachmayr"
ATT.Icon = Material("entities/eft_1911_attachments/m1911_pachmayr_american_legend_grip_#423.png", "mips smooth")
ATT.Description = "The \"American Legend Grip #423\" grips for the M1911 pistol, manufactured by Pachmayr."

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_pgrip"}

ARC9.LoadAttachment(ATT, "eft_1911_pgrip_pach")

///////////////////////////////////////      eft_1911_pgrip_gene

ATT = {}

ATT.PrintName = "M1911 Kiba Arms Geneburn custom side grips"
ATT.CompactName = "1911 Geneburn"
ATT.Icon = Material("entities/eft_1911_attachments/m1911_kiba_arms_geneburn_custom_side_grips.png", "mips smooth")
ATT.Description = "Custom grip panels for the M1911 pistol, manufactured by Kiba Arms."

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_pgrip"}

ARC9.LoadAttachment(ATT, "eft_1911_pgrip_gene")


///////////////////////////////////////      eft_fs_1911_std

ATT = {}

ATT.PrintName = "M1911A1 front sight"
ATT.CompactName = "1911 FS"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_front_sight.png", "mips smooth")
ATT.Description = "A standard-issue front sight for the M1911A1 pistol, manufactured by Colt."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_fs"}

ARC9.LoadAttachment(ATT, "eft_fs_1911_std")

///////////////////////////////////////      eft_fs_1911_m45

ATT = {}

ATT.PrintName = "M45A1 Novak Lomount front sight"
ATT.CompactName = "M45 FS"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_novak_lomount_front_sight.png", "mips smooth")
ATT.Description = "The Lomount front sight for the M45A1 pistol, manufactured by Novak."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m45_fs"}

ARC9.LoadAttachment(ATT, "eft_fs_1911_m45")

///////////////////////////////////////      eft_rs_1911_std

ATT = {}

ATT.PrintName = "M1911A1 rear sight"
ATT.CompactName = "1911 RS"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_rear_sight.png", "mips smooth")
ATT.Description = "A standard-issue rear sight for the M1911A1 pistol, manufactured by Colt."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_1911_std")

///////////////////////////////////////      eft_rs_1911_m45

ATT = {}

ATT.PrintName = "M45A1 Novak Lomount rear sight"
ATT.CompactName = "M45 RS"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_novak_lomount_rear_sight.png", "mips smooth")
ATT.Description = "The Lomount rear sight for the M45A1 pistol, manufactured by Novak."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m45_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_1911_m45")


///////////////////////////////////////      eft_mount_1911_rail

ATT = {}

ATT.PrintName = "M1911A1 NcSTAR trigger guard mount"
ATT.CompactName = "1911 mount"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_ncstar_trigger_guard_mount.png", "mips smooth")
ATT.Description = "The NcSTAR Trigger guard mount for the M1911A1 pistol."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_tacbottom"}

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-2.3, 0, -0.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ATT.ExcludeElements = { "eft_mount_1911_top" }

ARC9.LoadAttachment(ATT, "eft_mount_1911_rail")


///////////////////////////////////////      eft_mount_1911_top

ATT = {}

ATT.PrintName = "M1911A1 Weigand Weig-a-tinny rail mount"
ATT.CompactName = "Weig-a-tinny"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_weigand_weigatinny_rail_mount.png", "mips smooth")
ATT.Description = "The Weig-a-tinny rail mount for the M1911A1 pistol, manufactured by Weigand."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "eft_optic_small",
        Pos = Vector(1.375, 0, -1.67),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 6
    },
}

ATT.ExcludeElements = { "eft_mount_1911_rail" }

ATT.Category = {"eft_1911_tactop"}

ARC9.LoadAttachment(ATT, "eft_mount_1911_top")


///////////////////////////////////////      eft_muzzle_1911_anarcj

ATT = {}

ATT.PrintName = "M1911 Anarchy Outdoors .45 ACP muzzle brake"
ATT.CompactName = "1911 brake"
ATT.Icon = Material("entities/eft_1911_attachments/m1911_anarchy_outdoors_45_acp_muzzle_brake.png", "mips smooth")
ATT.Description = "A muzzle brake for the M1911A1 pistol, manufactured by Anarchy Outdoors."

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.HeatCapacityMult = 0.99

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ExcludeElements = { "eft_barrel_1911_thr" }

ATT.Category = {"eft_1911_muzzlerec"}

ARC9.LoadAttachment(ATT, "eft_muzzle_1911_anarcj")

///////////////////////////////////////      eft_1911_slock_std

ATT = {}

ATT.PrintName = "M1911A1 slide stop"
ATT.CompactName = "1911 lock"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_slide_stop.png", "mips smooth")
ATT.Description = "A standard-issue slide stop for the M1911A1 pistol, manufactured by Colt."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.HasLock = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_slock"}

ARC9.LoadAttachment(ATT, "eft_1911_slock_std")

///////////////////////////////////////      eft_1911_slock_m45

ATT = {}

ATT.PrintName = "M45A1 slide lock"
ATT.CompactName = "M45 lock"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_slide_lock.png", "mips smooth")
ATT.Description = "A standard-issue slide lock lever for M45A1 pistols, manufactured by Colt."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasLock = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_slock"}

ARC9.LoadAttachment(ATT, "eft_1911_slock_m45")

///////////////////////////////////////      eft_1911_slock_wils

ATT = {}

ATT.PrintName = "M1911A1 Wilson Extended slide stop"
ATT.CompactName = "Wilson lock"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_wilson_extended_slide_stop.png", "mips smooth")
ATT.Description = "An extended slide lever for the M1911A1 pistol, manufactured by Wilson."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasLock = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_slock"}

ARC9.LoadAttachment(ATT, "eft_1911_slock_wils")

///////////////////////////////////////      eft_1911_hammer_std

ATT = {}

ATT.PrintName = "M1911A1 hammer"
ATT.CompactName = "1911 hammer"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_hammer.png", "mips smooth")
ATT.Description = "A standard-issue hammer for the M1911A1 pistol, manufactured by Colt."

ATT.HasHammer = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_hammer"}

ARC9.LoadAttachment(ATT, "eft_1911_hammer_std")

///////////////////////////////////////      eft_1911_hammer_m45

ATT = {}

ATT.PrintName = "M45A1 hammer"
ATT.CompactName = "M45 hammer"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_hammer.png", "mips smooth")
ATT.Description = "A standard-issue hammer for the M45A1 pistol, manufactured by Colt."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasHammer = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_hammer"}

ARC9.LoadAttachment(ATT, "eft_1911_hammer_m45")

///////////////////////////////////////      eft_1911_hammer_retro

ATT = {}

ATT.PrintName = "M1911A1 Wilson Retro Commander hammer"
ATT.CompactName = "1911 Retro"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_wilson_retro_commander_hammer.png", "mips smooth")
ATT.Description = "The Retro Commander hammer for the M1911A1 pistol, manufactured by Wilson."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasHammer = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_hammer"}

ARC9.LoadAttachment(ATT, "eft_1911_hammer_retro")

///////////////////////////////////////      eft_1911_hammer_ultra

ATT = {}

ATT.PrintName = "M1911A1 Wilson Ultralight skeletonized hammer"
ATT.CompactName = "1911 Ultralight"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_wilson_ultralight_skeletonized_hammer.png", "mips smooth")
ATT.Description = "The Ultralight Skeletonized hammer for the M1911A1 pistol, manufactured by Wilson."

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasHammer = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_hammer"}

ARC9.LoadAttachment(ATT, "eft_1911_hammer_ultra")

///////////////////////////////////////      eft_1911_hammer_hex

ATT = {}

ATT.PrintName = "M1911A1 STI HEX hammer"
ATT.CompactName = "1911 HEX"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_sti_hex_hammer.png", "mips smooth")
ATT.Description = "The HEX hammer for the M1911A1 pistol, manufactured by STI."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasHammer = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_hammer"}

ARC9.LoadAttachment(ATT, "eft_1911_hammer_hex")

///////////////////////////////////////      eft_1911_trigger_std

ATT = {}

ATT.PrintName = "M1911A1 trigger"
ATT.CompactName = "1911 trig."
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_trigger.png", "mips smooth")
ATT.Description = "A standard-issue trigger for the M1911A1 pistol, manufactured by Colt."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.HasTrigger = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_trigger"}

ARC9.LoadAttachment(ATT, "eft_1911_trigger_std")

///////////////////////////////////////      eft_1911_trigger_m45

ATT = {}

ATT.PrintName = "M45A1 trigger"
ATT.CompactName = "M45 trig."
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_trigger.png", "mips smooth")
ATT.Description = "A standard-issue trigger for the M45A1 pistol, manufactured by Colt."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasTrigger = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_trigger"}

ARC9.LoadAttachment(ATT, "eft_1911_trigger_m45")

///////////////////////////////////////      eft_1911_trigger_trik

ATT = {}

ATT.PrintName = "M1911A1 Caspian Arms Trik Trigger"
ATT.CompactName = "Trik trig."
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_caspian_arms_trik_trigger.png", "mips smooth")
ATT.Description = "The \"Trik Trigger\" trigger for the M1911A1 pistol, manufactured by Caspian Arms."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasTrigger = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_trigger"}

ARC9.LoadAttachment(ATT, "eft_1911_trigger_trik")


///////////////////////////////////////      eft_mag_1911_std

ATT = {}

ATT.PrintName = "M1911A1 .45 ACP 7-round magazine"
ATT.CompactName = "1911 7"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_45_acp_7round_magazine.png", "mips smooth")
ATT.Description = "A standard-issue 7-round .45 ACP magazine for the Colt M1911-series pistols."

ATT.EFTErgoAdd = -1
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }

ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_1911_7_std.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_1911_7_std.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 7
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_1911_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_1911_std")

///////////////////////////////////////      eft_mag_1911_tac

ATT = {}

ATT.PrintName = "M1911A1 .45 ACP Wilson Combat 7-round magazine"
ATT.CompactName = "1911 Wilson 7"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_45_acp_wilson_combat_7round_magazine.png", "mips smooth")
ATT.Description = "A 7-round .45 ACP magazine with a steel low-profile base pad for Colt M1911 pistols, manufactured by Wilson Combat. Comes as a standard-issue magazine for the M45A1 pistol."

ATT.EFTErgoAdd = -1
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }

ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_1911_7_m45.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_1911_7_m45.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 7
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_1911_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_1911_tac")

///////////////////////////////////////      eft_mag_1911_11

ATT = {}

ATT.PrintName = "M1911A1 .45 ACP Mec-Gar 11-round magazine"
ATT.CompactName = "Mec-Gar 11"
ATT.Icon = Material("entities/eft_1911_attachments/m1911a1_45_acp_mecgar_11round_magazine.png", "mips smooth")
ATT.Description = "An 11-round .45 ACP magazine for the Colt M1911A1 pistol, manufactured by Mec-Gar."

ATT.EFTErgoAdd = -3
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-3" }

ATT.MalfunctionMeanShotsToFailMult = 0.93

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_1911_11.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_1911_11.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 11
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_1911_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_1911_11")

///////////////////////////////////////      eft_m45_black     NOT MADE BY DARSU

ATT = {}

ATT.PrintName = "BLACK"
ATT.CompactName = "BLACK"
ATT.Icon = Material("entities/eft_1911_attachments/m45_black.png", "mips smooth")
ATT.Description = [[Black color frame instead of FDE.

Not presents in EFT, custom att.]]

ATT.SortOrder = -90
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.SubMaterial1 = "models/weapons/arc9/darsu_eft/1911/weapon_colt_m45a1_1143x23_BLK"

ATT.Category = {"eft_custom_1911"}

ATT.Max = 1

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_1911"},
 
    },
}

ARC9.LoadAttachment(ATT, "eft_m45_black")


///////////////////////////////////////      eft_slide_1911_m45_blk

ATT = {}

ATT.ActivateElements = {"eft_slide_1911_m45"}

ATT.PrintName = "M45A1 pistol slide black"
ATT.CompactName = "M45 blk"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_pistol_slide_blk.png", "mips smooth")
ATT.Description = "A standard-issue slide for the M45A1 pistol, manufactured by Colt."

ATT.SubMaterial17 = "models/weapons/arc9/darsu_eft/1911/reciever_m1911_colt_m45a1_std_BLK"

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.HeatCapacityMult = 0.954

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_slide"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_m45_fs",
        Pos = Vector(0, 2.5, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_m45_rs",
        Pos = Vector(0, -4.41, -0.74),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Muzzle",
        Category = "eft_1911_muzzlerec",
        Pos = Vector(0, 3, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_slide_1911_m45_blk")

///////////////////////////////////////      eft_1911_pgrip_m45_blk

ATT = {}

ATT.ActivateElements = {"eft_1911_pgrip_m45"}

ATT.PrintName = "M45A1 Mil-Tac GVT G10 black side grips"
ATT.CompactName = "1911 G10 BLK"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_miltac_gvt_g10_side_grips_blk.png", "mips smooth")
ATT.Description = "The GVT G10 fiberglass grip panels for the Colt M45A1 pistol, manufactured by Mil-Tac."

ATT.SubMaterial22 = "models/weapons/arc9/darsu_eft/1911/pistolgrip_m1911_colt_m45a1_std_BLK"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_pgrip", "eft_m45_pgrip"}

ARC9.LoadAttachment(ATT, "eft_1911_pgrip_m45_blk")

///////////////////////////////////////      eft_1911_slock_m45_blk

ATT = {}

ATT.ActivateElements = {"eft_1911_slock_m45"}

ATT.PrintName = "M45A1 black slide lock"
ATT.CompactName = "M45 blk lock"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_slide_lock_blk.png", "mips smooth")
ATT.Description = "A standard-issue slide lock lever for M45A1 pistols, manufactured by Colt."

ATT.SubMaterial3 = "models/weapons/arc9/darsu_eft/1911/catch_m1911_colt_m45a1_std_BLK"

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasLock = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_slock"}

ARC9.LoadAttachment(ATT, "eft_1911_slock_m45_blk")

///////////////////////////////////////      eft_1911_hammer_m45_blk

ATT = {}

ATT.ActivateElements = {"eft_1911_hammer_m45"}

ATT.PrintName = "M45A1 black hammer"
ATT.CompactName = "M45 blk hammer"
ATT.Icon = Material("entities/eft_1911_attachments/m45a1_hammer_blk.png", "mips smooth")
ATT.Description = "A standard-issue hammer for the M45A1 pistol, manufactured by Colt."

ATT.SubMaterial6 = "models/weapons/arc9/darsu_eft/1911/hammer_m1911_colt_m45a1_std_BLK"

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasHammer = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_1911_hammer"}

ARC9.LoadAttachment(ATT, "eft_1911_hammer_m45_blk")