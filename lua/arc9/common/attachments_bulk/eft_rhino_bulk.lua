local ATT = {}

///////////////////////////////////////      eft_rhino_speedloader


ATT = {}

ATT.PrintName = "Chiappa Rhino 6-round speedloader"
ATT.CompactName = "CR load"
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_357_6round_speedloader.png", "mips smooth")
ATT.Description = [[A 6-round speedloader for the Chiappa Rhino revolvers. Allows reloading without the need to insert each single cartridge into the cylinder.

Will be used on empty reloads - combine with "Fast reload" attachment to use speedloader on any reload.

This attachment was found in EFT files, it's does not exist in actual game yet.]]

-- ATT.EFTForceFastReload = true
ATT.EFTSpeedloader = true

ATT.AttNotForNPCs = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/rhino_speedloader.mdl"

ATT.Max = 1

ATT.Category = {"eft_custom_slot_rhino"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_slot_rhino", "eft_custom_slot_rsh12"},
    },
}

ARC9.LoadAttachment(ATT, "eft_rhino_speedloader")


///////////////////////////////////////      eft_rhino_mag_std


ATT = {}

ATT.PrintName = "Chiappa Rhino 6-round cylinder"
ATT.CompactName = "CR cyl."
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_9x19_6round_cylinder.png", "mips smooth")
ATT.Description = [[6-round cylinder for Chiappa Rhino. ]]

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.ClipSize = 6

ATT.HasMag = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rhino_mag"}

ARC9.LoadAttachment(ATT, "eft_rhino_mag_std")


///////////////////////////////////////      eft_rhino_pgrip_std


ATT = {}

ATT.PrintName = "Chiappa Rhino wooden pistol grip"
ATT.CompactName = "CR wood"
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_wooden_pistol_grip.png", "mips smooth")
ATT.Description = [[Wooden pistol grip for Rhino revolvers, produced by "Chiappa Firearms". ]]

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rhino_pgrip"}

ARC9.LoadAttachment(ATT, "eft_rhino_pgrip_std")

///////////////////////////////////////      eft_rhino_pgrip_poly


ATT = {}

ATT.PrintName = "Chiappa Rhino plastic pistol grip"
ATT.CompactName = "CR pl."
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_plastic_pistol_grip.png", "mips smooth")
ATT.Description = [[A standard-issue plastic pistol grip for Rhino revolvers, produced by "Chiappa Firearms". ]]

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rhino_pgrip"}

ARC9.LoadAttachment(ATT, "eft_rhino_pgrip_poly")


///////////////////////////////////////      eft_rhino_rs_std

ATT = {}

ATT.PrintName = "Chiappa Rhino rear sight"
ATT.CompactName = "CR RS"
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_rear_sight.png", "mips smooth")
ATT.Description = [[Standard-issue Rhino rear sight, manufactured by "Chiappa Firearms".]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/rhino_rs.mdl"
ATT.ModelBodygroups = "0"

ATT.Sights = {
    {
        Pos = Vector(0, 12, -0.15),
        Ang = Angle(0, -0.1, 0),
        Magnification = 1.1,
        IsIronSight = true
    }
}

ATT.Category = {"eft_rhino_rs"}

ARC9.LoadAttachment(ATT, "eft_rhino_rs_std")

///////////////////////////////////////      eft_rhino_rs_red

ATT = {}

ATT.PrintName = "Chiappa Rhino Red Fiber Optic rear sight"
ATT.CompactName = "CR GF"
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_red_fiber_optic_rear_sight.png", "mips smooth")
ATT.Description = [[A Red Fiber tritium rear sight for Rhino revolvers, manufactured by Chiappa Firearms. ]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/rhino_rs.mdl"
ATT.ModelBodygroups = "1"

ATT.Sights = {
    {
        Pos = Vector(0, 12, -0.15),
        Ang = Angle(0, -0.1, 0),
        Magnification = 1.1,
        IsIronSight = true
    }
}

ATT.Category = {"eft_rhino_rs"}

ARC9.LoadAttachment(ATT, "eft_rhino_rs_red")

///////////////////////////////////////      eft_rhino_fs_std


ATT = {}

ATT.PrintName = "Chiappa Rhino front sight"
ATT.CompactName = "CR FS"
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_front_sight.png", "mips smooth")
ATT.Description = [[Standard-issue Rhino front sight, manufactured by "Chiappa Firearms".]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/rhino_fs.mdl"
ATT.ModelBodygroups = "0"

ATT.Category = {"eft_rhino_fs"}

ARC9.LoadAttachment(ATT, "eft_rhino_fs_std")

///////////////////////////////////////      eft_rhino_fs_red


ATT = {}

ATT.PrintName = "Chiappa Rhino Red Fiber Optic front sight"
ATT.CompactName = "CR GF"
ATT.Icon = Material("entities/eft_rhino_attachments/chiappa_rhino_red_fiber_optic_front_sight.png", "mips smooth")
ATT.Description = [[A Red Fiber tritium front sight for Rhino revolvers, manufactured by Chiappa Firearms. ]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/rhino_fs.mdl"
ATT.ModelBodygroups = "1"

ATT.Category = {"eft_rhino_fs"}

ARC9.LoadAttachment(ATT, "eft_rhino_fs_red")


///////////////////////////////////////      eft_rhino_barrel_40ds


ATT = {}

ATT.PrintName = "Chiappa Rhino 40DS barrel"
ATT.CompactName = "CR 40DS"
ATT.Icon = Material("entities/eft_rhino_attachments/40ds.png", "mips smooth")
ATT.Description = [[A 127mm long barrel for the Chiappa Rhino 40DS pistol.

This attachment was found in EFT files, it's does not exist in actual game yet.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rhino357_barrel"}

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.VisualRecoilMult = 1.15
ATT.RecoilMult = 1.15
ATT.SpreadMult = 1.15

ARC9.LoadAttachment(ATT, "eft_rhino_barrel_40ds")

///////////////////////////////////////      eft_rhino_barrel_60ds


ATT = {}

ATT.PrintName = "Chiappa Rhino 60DS barrel"
ATT.CompactName = "CR 60DS"
ATT.Icon = Material("entities/eft_rhino_attachments/60ds.png", "mips smooth")
ATT.Description = [[A 152mm long barrel for the Chiappa Rhino 60DS pistol.

This attachment was found in EFT files, it's does not exist in actual game yet.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rhino357_barrel"}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.SpreadMult = 0.85

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_small"},
        Pos = Vector(-1.2, 0, -1.02),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 7,
    },
}
ARC9.LoadAttachment(ATT, "eft_rhino_barrel_60ds")




-- remove before merging!!

///////////////////////////////////////      eft_shared_fastreload


ATT = {}

ATT.PrintName = "Dump cylinder on every reload"
ATT.CompactName = "Fast reload"
ATT.Icon = Material("entities/eft_ash12_attachments/fastreload.png", "mips smooth")
ATT.Description = [[Attachment instead of double pressing R in EFT.
Drops all ammo on ground on any reload for faster reload.]]

ATT.EFTForceFastReload = true

ATT.AttNotForNPCs = true 
ATT.Max = 1

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_custom_slot_revolver"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_shared_fastreload")