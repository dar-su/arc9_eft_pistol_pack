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

ATT.Category = {"eft_p226_barrel"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -2,
    recoilModifier = -2.8,
    weight = 0.18,
    velocity = -2,
}))


-- EFT ID: 56d5a1f7d2720bb3418b456a
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

ATT.Category = {"eft_p226_barrel"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_9mm_muzzle", "eft_p226_muzzle"},
        Pos = Vector(0, 3.4, -0.045),
        Ang = Angle(0, -90, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -2,
    recoilModifier = -2.8,
    weight = 0.18,
    velocity = -2,
}))


-- EFT ID: 587de4282459771bca0ec90b
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


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.007,
}))


-- EFT ID: 56d5a661d2720bd8418b456b
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


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.07,
}))


-- EFT ID: 5c07b36c0db834002a1259e9
ARC9.LoadAttachment(ATT, "eft_fs_p226_merp")




///////////////////////////////////////      eft_mag_p226_15


ATT = {}

ATT.PrintName = "P226 9x19 15-round magazine"
ATT.CompactName = "P226 15"
ATT.Icon = Material("entities/eft_p226_attachments/15.png", "mips smooth")
ATT.Description = [[A standard 15-round 9x19 magazine for the SIG Sauer P226 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_p226_15.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 15
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magdef"}

ATT.Category = {"eft_p226_mag"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.5,
    weight = 0.096,
    malfunctionChance = 0.01,
}))


-- EFT ID: 56d59948d2720bb7418b4582
ARC9.LoadAttachment(ATT, "eft_mag_p226_15")

///////////////////////////////////////      eft_mag_p226_20


ATT = {}

ATT.PrintName = "P226 9x19 20-round extended magazine"
ATT.CompactName = "P226 20"
ATT.Icon = Material("entities/eft_p226_attachments/20.png", "mips smooth")
ATT.Description = [[A 20-round 9x19 extended magazine for the SIG Sauer P226 pistol.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_p226_20.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 20
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magext"}

ATT.Category = {"eft_p226_mag"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -2,
    weight = 0.11,
    malfunctionChance = 0.01,
}))


-- EFT ID: 5c920e902e221644f31c3c99
ARC9.LoadAttachment(ATT, "eft_mag_p226_20")


///////////////////////////////////////      eft_mount_p226_bridge 


ATT = {}

ATT.PrintName = "P226 Bridge sight mount"
ATT.CompactName = "P226 Bridge"
ATT.Icon = Material("entities/eft_p226_attachments/bridge.png", "mips smooth")
ATT.Description = [[The SIG Sauer Bridge sight mount for pistols. Allows mounting of various sights or tactical accesories.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_tac"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = "eft_optic_small",
        Pos = Vector(0.7, 0, 2.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical_pistol"},
        Pos = Vector(0.1, 0, -0.55),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.12,
}))


-- EFT ID: 5b3a08b25acfc4001754880c
ARC9.LoadAttachment(ATT, "eft_mount_p226_bridge")

///////////////////////////////////////      eft_muzzle_p226_std


ATT = {}

ATT.PrintName = "P226 thread protection cap"
ATT.CompactName = "P226 cap"
ATT.Icon = Material("entities/eft_p226_attachments/prot.png", "mips smooth")
ATT.Description = [[A threading protection cap for the P226 9x19 barrel.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_muzzle"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.01,
}))


-- EFT ID: 587de5ba2459771c0f1e8a58
ARC9.LoadAttachment(ATT, "eft_muzzle_p226_std")

///////////////////////////////////////      eft_muzzle_p226_tjs


ATT = {}

ATT.PrintName = "P226 TJs Custom 9x19 compensator"
ATT.CompactName = "TJs Custom"
ATT.Icon = Material("entities/eft_p226_attachments/tj.png", "mips smooth")
ATT.Description = [[A compensator manufactured by TJs Custom Gunworks for the SIG Sauer P226 pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_muzzle"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    recoilModifier = -8,
    accuracyModifier = -2,
    weight = 0.036,
}))


-- EFT ID: 5c6beec32e221601da3578f2
ARC9.LoadAttachment(ATT, "eft_muzzle_p226_tjs")


///////////////////////////////////////      eft_grip_p226_std


ATT = {}

ATT.PrintName = "P226 polymer pistol grip (Black)"
ATT.CompactName = "P226"
ATT.Icon = Material("entities/eft_p226_attachments/poly.png", "mips smooth")
ATT.Description = [[Standard black polymer SIG Sauer side grip panels for the P226 pistols. Manufacturer Part Code: GRIP226BLKPOL.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.09,
}))


-- EFT ID: 56d5a2bbd2720bb8418b456a
ARC9.LoadAttachment(ATT, "eft_grip_p226_std")


///////////////////////////////////////      eft_grip_p226_axel


ATT = {}

ATT.PrintName = "P226 Axelson Tactical MK25 pistol grip"
ATT.CompactName = "P226 Axelson"
ATT.Icon = Material("entities/eft_p226_attachments/mk25.png", "mips smooth")
ATT.Description = [[An enhanced version of the SIG Sauer P226 MK25 pistol grip, manufactured by Axelson Tactical. Limited edition.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.09,
}))


-- EFT ID: 5bffec120db834001c38f5fa
ARC9.LoadAttachment(ATT, "eft_grip_p226_axel")

///////////////////////////////////////      eft_grip_p226_emp


ATT = {}

ATT.PrintName = "P226 Emperor Scorpion pistol grip"
ATT.CompactName = "P226 Emperor"
ATT.Icon = Material("entities/eft_p226_attachments/sk.png", "mips smooth")
ATT.Description = [[The Emperor Scorpion polymer grip panels for P226 pistols, manufactured by SIG Sauer.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.09,
}))


-- EFT ID: 5c0006470db834001a6697fe
ARC9.LoadAttachment(ATT, "eft_grip_p226_emp")

///////////////////////////////////////      eft_grip_p226_hog


ATT = {}

ATT.PrintName = "P226 Hogue Rubberized pistol grip"
ATT.CompactName = "P226 Hogue"
ATT.Icon = Material("entities/eft_p226_attachments/hog.png", "mips smooth")
ATT.Description = [[A rubber pistol grip with finger grooves for SIG Sauer P226 pistols, manufactured by Hogue.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.07,
}))


-- EFT ID: 5b39ffbd5acfc47a8773fb06
ARC9.LoadAttachment(ATT, "eft_grip_p226_hog")

///////////////////////////////////////      eft_grip_p226_fde


ATT = {}

ATT.PrintName = "P226 Combat pistol grip (FDE)"
ATT.CompactName = "P226 FDE"
ATT.Icon = Material("entities/eft_p226_attachments/fde.png", "mips smooth")
ATT.Description = [[Brown Flat Dark Earth polymer SIG Sauer grip panels for P226 pistols. Used as the standard service grip on the Combat P226.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.09,
}))


-- EFT ID: 57c9a89124597704ee6faec1
ARC9.LoadAttachment(ATT, "eft_grip_p226_fde")

///////////////////////////////////////      eft_grip_p226_stain


ATT = {}

ATT.PrintName = "P226 Stainless Elite Wooden pistol grip"
ATT.CompactName = "P226 Wooden"
ATT.Icon = Material("entities/eft_p226_attachments/wood.png", "mips smooth")
ATT.Description = [[Wooden side grip panels from the Stainless Elite kit for P226 pistols, manufactured by SIG Sauer.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.08,
}))


-- EFT ID: 5c00076d0db834001d23ee1f
ARC9.LoadAttachment(ATT, "eft_grip_p226_stain")

///////////////////////////////////////      eft_grip_p226_g10


ATT = {}

ATT.PrintName = "P226 Hogue G10 Chain Link pistol grip"
ATT.CompactName = "P226 G10"
ATT.Icon = Material("entities/eft_p226_attachments/g10.png", "mips smooth")
ATT.Description = [[The G10 Chain Link pistol grip for P226 pistols. Manufactured by Hogue.]]

ATT.HasGrip = true

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_grip"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 4,
    weight = 0.09,
}))


-- EFT ID: 5bffef760db8340019668fe4
ARC9.LoadAttachment(ATT, "eft_grip_p226_g10")


///////////////////////////////////////      eft_slide_p226_std


ATT = {}

ATT.PrintName = "P226R MK25 pistol slide"
ATT.CompactName = "P226 MK25"
ATT.Icon = Material("entities/eft_p226_attachments/smk25.png", "mips smooth")
ATT.Description = [[The SIG Sauer Mk25 blued slide for P226R 9x19 pistols.]]

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.19,
}))


-- EFT ID: 56d5a407d2720bb3418b456b
ARC9.LoadAttachment(ATT, "eft_slide_p226_std")

///////////////////////////////////////      eft_slide_p226_emp


ATT = {}

ATT.PrintName = "P226 Emperor Scorpion pistol slide"
ATT.CompactName = "P226 Emperor"
ATT.Icon = Material("entities/eft_p226_attachments/ssk.png", "mips smooth")
ATT.Description = [[A slide from the Emperor Scorpion modification for the P226 9x19 pistols, manufactured by SIG Sauer.]]

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    recoilModifier = -3,
    weight = 0.22,
}))


-- EFT ID: 5c010a700db834001d23ef5d
ARC9.LoadAttachment(ATT, "eft_slide_p226_emp")

///////////////////////////////////////      eft_slide_p226_leg


ATT = {}

ATT.PrintName = "P226 Legion full size pistol slide"
ATT.CompactName = "P226 Legion"
ATT.Icon = Material("entities/eft_p226_attachments/leg.png", "mips smooth")
ATT.Description = [[A full-size slide from the Legion modification for the P226 9x19 pistols, manufactured by SIG Sauer.]]

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    recoilModifier = -1,
    weight = 0.2,
}))


-- EFT ID: 5c0125fc0db834001a669aa3
ARC9.LoadAttachment(ATT, "eft_slide_p226_leg")

///////////////////////////////////////      eft_slide_p226_stain


ATT = {}

ATT.PrintName = "P226 Stainless Elite pistol slide"
ATT.CompactName = "P226 Stainless"
ATT.Icon = Material("entities/eft_p226_attachments/elite.png", "mips smooth")
ATT.Description = [[A slide from the Stainless Elite modification for the P226 9x19 pistols, manufactured by SIG Sauer.]]

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    recoilModifier = -1,
    weight = 0.22,
}))


-- EFT ID: 5c0009510db834001966907f
ARC9.LoadAttachment(ATT, "eft_slide_p226_stain")

///////////////////////////////////////      eft_slide_p226_axel


ATT = {}

ATT.PrintName = "P226 Axelson Tactical MK25 pistol slide"
ATT.CompactName = "P226 Axelson"
ATT.Icon = Material("entities/eft_p226_attachments/saxe.png", "mips smooth")
ATT.Description = [[An enhanced version of the SIG Sauer P226 MK25 pistol slide, manufactured by Axelson Tactical. Limited edition.]]

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p226_slide"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_p226_fs",
        Pos = Vector(0, 0, -0.5),
        Icon_Offset = Vector(4.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_p226_rs",
        Pos = Vector(0, -0.05, -0.5),
        Icon_Offset = Vector(-2.2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 4,
    recoilModifier = -4,
    weight = 0.24,
}))


-- EFT ID: 5bffe7c50db834001d23ece1
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

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.008,
}))


-- EFT ID: 56d5a77ed2720b90418b4568
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

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.08,
}))


-- EFT ID: 5c07b3850db834002330045b
ARC9.LoadAttachment(ATT, "eft_rs_p226_merp")

///////////////////////////////////////      eft_rs_p226_mount


ATT = {}

ATT.PrintName = "P226 Sight Mount 220-239 rear sight bearing"
ATT.CompactName = "SM P226"
ATT.Icon = Material("entities/eft_p226_attachments/rsm.png", "mips smooth")
ATT.Description = [[The 220-239 rear sight bearing manufactured by Sight Mount for SIG Sauer 220, 226, 227, 229, 239 pistols. It is installed as a replacement of the standard rear sight and allows to use it even if no scope is installed.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = "eft_optic_micro",
        Pos = Vector(1.5, 0, -0.35),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ATT.Category = {"eft_p226_rs"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.5,
    weight = 0.028,
}))


-- EFT ID: 56ea7293d2720b8d4b8b45ba
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
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = "eft_rmr",
        Pos = Vector(1.74, 0.0, -0.35),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1),
    },
}


ATT.Category = {"eft_p226_rs"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.017,
}))


-- EFT ID: 5a32aa0cc4a28232996e405f
ARC9.LoadAttachment(ATT, "eft_rs_p226_rmr")

