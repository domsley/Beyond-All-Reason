return {
	armfdrag = {
		acceleration = 0,
		blocking = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 300,
		buildcostmetal = 15,
		buildpic = "ARMFDRAG.PNG",
		buildtime = 370,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -10 0",
		collisionvolumescales = "37 70 37",
		collisionvolumetype = "box",
		crushresistance = 250,
		description = "Shark's Teeth",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		idleautoheal = 0,
		maxdamage = 4000,
		maxslope = 32,
		minwaterdepth = 1,
		name = "Shark's Teeth",
		objectname = "Units/ARMFDRAG.s3o",
		repairable = false,
		script = "Units/ARMFDRAG.cob",
		seismicsignature = 0,
		sightdistance = 1,
		waterline = 2,
		yardmap = "oooo",
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/seautil",
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
			},
		},
	},
}
