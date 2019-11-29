return {
	armtide = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 250,
		buildcostmetal = 90,
		buildpic = "ARMTIDE.PNG",
		buildtime = 2188,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 -4",
		collisionvolumescales = "27 26 39",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Produces Energy (depends on map)",
		energystorage = 50,
		explodeas = "tidal",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 358,
		maxslope = 10,
		minwaterdepth = 20,
		name = "Tidal Generator",
		objectname = "Units/ARMTIDE.s3o",
		onoffable = false,
		script = "Units/ARMTIDE.cob",
		seismicsignature = 0,
		selfdestructas = "tidalSelfd",
		sightdistance = 130,
		tidalgenerator = 1,
		waterline = 2.5,
		yardmap = "wwwwwwwww",
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/seaeconomy",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-0.526138305664 2.37060546837e-06 -0.855285644531",
				collisionvolumescales = "33.9601745605 19.9999847412 45.7894287109",
				collisionvolumetype = "Box",
				damage = 145,
				description = "Tidal Generator Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 53,
				object = "Units/armtide_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 185,
				description = "Tidal Generator Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 17,
				object = "Units/arm2X2B.s3o",
				reclaimable = true,
				resurrectable = 0,
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
			canceldestruct = "cancel2",
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
				[1] = "tidegen1",
			},
		},
	},
}
