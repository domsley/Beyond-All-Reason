return {
	corsy = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 1200,
		buildcostmetal = 600,
		builder = true,
		buildpic = "CORSY.PNG",
		buildtime = 6600,
		canmove = true,
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "124 59 122",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Produces Level 1 Ships",
		energystorage = 100,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 8,
		footprintz = 8,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3850,
		metalstorage = 100,
		minwaterdepth = 30,
		name = "Shipyard",
		objectname = "Units/CORSY.s3o",
		script = "Units/CORSY.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 340,
		terraformspeed = 500,
		waterline = 1,
		workertime = 165,
		yardmap = "oyyyyyyoyccccccyyccccccyyccccccyyccccccyyccccccyyccccccyoyyyyyyo",
		buildoptions = {
			[1] = "corcs",
			[2] = "correcl",
			[3] = "coresupp",
			[4] = "corpt",
			[5] = "corpship",
			[6] = "corroy",
			[7] = "corsub",
			[8] = "cortship",
		},
		customparams = {
			model_author = "Mr Bob",
			normaltex = "unittextures/Core_normal.dds",
			subfolder = "corebuildings/seafactories",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 -10 -4",
				collisionvolumescales = "116 56 120",
				collisionvolumetype = "Box",
				damage = 1794,
				description = "Shipyard Wreckage",
				energy = 0,
				footprintx = 7,
				footprintz = 7,
				height = 4,
				hitdensity = 100,
				metal = 546,
				object = "Units/corsy_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:WhiteLight",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pshpactv",
			},
		},
	},
}
