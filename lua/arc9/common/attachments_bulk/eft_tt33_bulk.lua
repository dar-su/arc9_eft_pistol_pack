local ATT = {}


///////////////////////////////////////      eft_tt33_barrel_116

ATT = {}

ATT.PrintName = "TT 7.62x25 116mm barrel"
ATT.CompactName = "TT 116mm"
ATT.Icon = Material("entities/eft_tt33_attachments/b.png", "mips smooth")
ATT.Description = [[A standard-issue barrel for the TT pistol.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.SpreadOverride = 12.03 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_barrel"}

ARC9.LoadAttachment(ATT, "eft_tt33_barrel_116")

///////////////////////////////////////      eft_tt33_barrel_116g

ATT = {}

ATT.PrintName = "TT 7.62x25 116mm gilded barrel"
ATT.CompactName = "TT 116mm ild"
ATT.Icon = Material("entities/eft_tt33_attachments/bg.png", "mips smooth")
ATT.Description = [[A 116mm barrel for the TT pistol, gilded by an unknown gunsmith.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.SpreadOverride = 12.03 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_barrel"}

ARC9.LoadAttachment(ATT, "eft_tt33_barrel_116g")

///////////////////////////////////////      eft_tt33_barrel_121

ATT = {}

ATT.PrintName = "TT 7.62x25 121mm homespun threaded barrel"
ATT.CompactName = "TT 121mm thr."
ATT.Icon = Material("entities/eft_tt33_attachments/bt.png", "mips smooth")
ATT.Description = [[A homespun barrel for TT pistol with threading for sound suppressor installation.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.SpreadOverride = 9.28    * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_barrel"}

ARC9.LoadAttachment(ATT, "eft_tt33_barrel_121")

///////////////////////////////////////      eft_tt33_asilencer


ATT = {}

ATT.PrintName = "TT 7.62x25 makeshift sound suppressor"
ATT.CompactName = "TT supp."
ATT.Icon = Material("entities/eft_tt33_attachments/s.png", "mips smooth")
ATT.Description = [[A makeshift sound suppressor for TT with a homespun barrel. Install and operate at your own discretion.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.VisualRecoilMult = 0.93
ATT.RecoilMult = 0.93
ATT.HeatCapacityMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.EFTErgoAdd = -12
ATT.CustomCons = { Ergonomics = "-12" }

ATT.Silencer = true 
ATT.CustomizePos = Vector(25, 21, 4.25)

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Category = {"eft_tt33_muzz"}
ATT.RequireElements = {"eft_tt33_barrel_121"}

ARC9.LoadAttachment(ATT, "eft_tt33_asilencer")

///////////////////////////////////////      eft_tt33_dtk


ATT = {}

ATT.PrintName = "TT PM-Laser DTK-TT muzzle brake-compensator"
ATT.CompactName = "DTK-TT"
ATT.Icon = Material("entities/eft_tt33_attachments/m.png", "mips smooth")
ATT.Description = [[A custom compensator for TT pistols manufactured by PM-Laser.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.VisualRecoilMult = 0.92
ATT.RecoilMult = 0.92
ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.BarrelLengthAdd = 1

ATT.Category = {"eft_tt33_muzz"}

ARC9.LoadAttachment(ATT, "eft_tt33_dtk")

///////////////////////////////////////      eft_tt33_pg_hogue

ATT = {}

ATT.PrintName = "TT Hogue-like rubber grip"
ATT.CompactName = "Hogue-like"
ATT.Icon = Material("entities/eft_tt33_attachments/h.png", "mips smooth")
ATT.Description = [[Hogue-like rubber grips made for TT pistol.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_pg"}

ARC9.LoadAttachment(ATT, "eft_tt33_pg_hogue")

///////////////////////////////////////      eft_tt33_pg_razor

ATT = {}

ATT.PrintName = "TT Razor Arms rubber grip"
ATT.CompactName = "TT RazorA"
ATT.Icon = Material("entities/eft_tt33_attachments/r.png", "mips smooth")
ATT.Description = [[A rubber grip for TT pistols, manufactured by Razor Arms.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 13
ATT.CustomPros = { Ergonomics = "+13" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_pg"}

ARC9.LoadAttachment(ATT, "eft_tt33_pg_razor")

///////////////////////////////////////      eft_tt33_pg_std

ATT = {}

ATT.PrintName = "TT side grips"
ATT.CompactName = "TT grips"
ATT.Icon = Material("entities/eft_tt33_attachments/g.png", "mips smooth")
ATT.Description = [[Standard post-war issue TT pistol side grips.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_pg"}

ARC9.LoadAttachment(ATT, "eft_tt33_pg_std")

///////////////////////////////////////      eft_tt33_pg_swag

ATT = {}

ATT.PrintName = "TT ornated side grips"
ATT.CompactName = "TT swag"
ATT.Icon = Material("entities/eft_tt33_attachments/swag.png", "mips smooth")
ATT.Description = [[Ornated side grips for the TT pistol. So fancy and swaggy.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_pg"}

ARC9.LoadAttachment(ATT, "eft_tt33_pg_swag")

///////////////////////////////////////      eft_tt33_pg_206

ATT = {}

ATT.PrintName = "TT PM-Laser TT-206 side grips with laser sight"
ATT.CompactName = "TT-206"
ATT.Icon = Material("entities/eft_tt33_attachments/gl.png", "mips smooth")
ATT.Description = [[The TT-206 side grips with a laser aiming module, designed for TT pistols. Manufactured by PM-Laser.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_tt_pm_laser.mdl"
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "Blue Laser",
        Laser = true,
        LaserStrength = 1.3,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(27, 30, 238),
        LaserAttachment = 1,
        EFTHipFireSpreadBonus = true,
    },   
    {
        PrintName = "None",
    }
}

ATT.Category = {"eft_tt33_pg"}

ARC9.LoadAttachment(ATT, "eft_tt33_pg_206")

///////////////////////////////////////      eft_tactical_ttprec

ATT = {}

ATT.PrintName = "TT DLP Tactical Precision LAM-module"
ATT.CompactName = "TT Precision"
ATT.Description = [[A precision laser designator for the TT pistol, manufactured by DLP Tactical.]]

ATT.Icon = Material("entities/eft_tt33_attachments/l.png", "mips smooth")

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.CustomPros = { ["Hipfire Spread if on (Cannot be stacked)"] = "-50%" }

ATT.Category = {"eft_tactical_tt33"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/tactical_tt_dlp.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "Blue Laser",
        Laser = true,
        LaserStrength = 1.3,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(27, 30, 238),
        LaserAttachment = 1,
        EFTHipFireSpreadBonus = true,
    },   
    {
        PrintName = "None",
    }
}

ARC9.LoadAttachment(ATT, "eft_tactical_ttprec")

///////////////////////////////////////      eft_tt33_mag_8

ATT = {}

ATT.PrintName = "TT 7.62x25 tt-105 8-round magazine"
ATT.CompactName = "tt-105 8"
ATT.Icon = Material("entities/eft_tt33_attachments/8.png", "mips smooth")
ATT.Description = [[A standard late-issue 8-round magazine for the TT pistol. It comes without a lanyard ring.]]

ATT.EFTErgoAdd = -1
ATT.CustomPros = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tt.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tt33_mag"}

ATT.HasMag = true
ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 8
ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_tt33_mag_8")

///////////////////////////////////////      eft_tt33_gold

ATT = {}

ATT.PrintName = "TT Golden"
ATT.CompactName = "Golden"
ATT.Icon = Material("entities/eft_tt33_attachments/gold.png", "mips smooth")
ATT.Description = [[A special gold edition.]]

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_custom_tt33"}

ATT.Max = 1

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_tt33", "eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_tt33_gold")