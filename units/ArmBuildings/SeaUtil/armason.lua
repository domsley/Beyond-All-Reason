return {
	armason = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 2600,
		buildcostmetal = 170,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 6,
		buildinggrounddecalsizey = 6,
		buildinggrounddecaltype = "decals/armason_aoplane.dds",
		buildpic = "ARMASON.PNG",
		buildtime = 6152,
		canattack = false,
		canrepeat = false,
		category = "ALL UNDERWATER NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		corpse = "DEAD",
		damagemodifier = 0.46,
		description = "Extended Sonar",
		energymake = 22,
		energyuse = 22,
		explodeas = "mediumBuildingexplosiongeneric-uw",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2120,
		maxslope = 10,
		minwaterdepth = 24,
		name = "Advanced Sonar Station",
		objectname = "Units/ARMASON.s3o",
		onoffable = true,
		script = "Units/ARMASON.cob",
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd-uw",
		sightdistance = 215,
		sonardistance = 1600,
		usebuildinggrounddecal = true,
		yardmap = "yooy oooo oooo yooy",
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/seautil",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-2.53617095947 -6.10351563068e-07 -2.30155944824",
				collisionvolumescales = "30.2144622803 57.7799987793 23.5352478027",
				collisionvolumetype = "Box",
				damage = 1272,
				description = "Advanced Sonar Station Wreckage",
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 40,
				hitdensity = 100,
				metal = 106,
				object = "Units/armason_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			activate = "sonar1",
			canceldestruct = "cancel2",
			deactivate = "sonarde1",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "sonar1",
			},
		},
	},
}
