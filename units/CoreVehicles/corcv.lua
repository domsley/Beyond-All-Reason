return {
	corcv = {
		acceleration = 0.03049,
		brakerate = 0.06099,
		buildcostenergy = 2100,
		buildcostmetal = 145,
		builddistance = 130,
		builder = true,
		buildpic = "CORCV.PNG",
		buildtime = 4160,
		canmove = true,
		category = "ALL TANK MOBILE NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "35 22 49",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Tech Level 1",
		energymake = 10,
		energystorage = 50,
		energyuse = 10,
		explodeas = "mediumexplosiongeneric-builder",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 1290,
		maxslope = 16,
		maxvelocity = 1.59,
		maxwaterdepth = 19,
		metalmake = 0.1,
		metalstorage = 50,
		movementclass = "TANK3",
		name = "Construction Vehicle",
		objectname = "Units/CORCV.s3o",
		radardistance = 50,
		script = "Units/CORCV.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-builder",
		sightdistance = 260,
		terraformspeed = 450,
		trackoffset = 3,
		trackstrength = 6,
		tracktype = "corwidetracks",
		trackwidth = 32,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.1979,
		turnrate = 421,
		workertime = 90,
		buildoptions = {
			[1] = "corsolar",
			[2] = "coradvsol",
			[3] = "corwin",
			[4] = "corgeo",
			[5] = "cormstor",
			[6] = "corestor",
			[7] = "cormex",
			[8] = "corexp",
			[9] = "cormakr",
			[10] = "coravp",
			[11] = "corlab",
			[12] = "corvp",
			[13] = "corap",
			[14] = "corhp",
			[15] = "cornanotc",
			[16] = "coreyes",
			[17] = "corrad",
			[18] = "cordrag",
			[19] = "cormaw",
			[20] = "corllt",
			[21] = "corhllt",
			[22] = "corhlt",
			[23] = "corpun",
			[24] = "corrl",
			[25] = "cormadsam",
			[26] = "corerad",
			[27] = "cordl",
			[28] = "corjamt",
			[29] = "corjuno",
			[30] = "corsy",
		},
		customparams = {
			area_mex_def = "cormex",
			description_long = "A construction vehicle is able to build basic T1 structures like the ones made by the Commander. Moreover it can build some more advanced land and air defense towers, advanced solar generators and most importantly the T2 Vehicle Lab. It is slightly faster and stronger than Kbot constructor, but it can not climb stepper hills, so it is effective only in expansion on relatively flat terrain. Each Construction vehicle increases the player's energy and metal storage capacity by 50. It is wise to use pairs of cons for expansion, so they can heal each other and build defensive structures faster. This makes them immune to light assault units like fleas/jeffys.",
			model_author = "Mr Bob",
			normaltex = "unittextures/Core_normal.dds",
			subfolder = "corevehicles",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.31364440918 1.09863281317e-06 0.657264709473",
				collisionvolumescales = "32.9147644043 17.5585021973 49.4168548584",
				collisionvolumetype = "Box",
				damage = 874,
				description = "Construction Vehicle Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 87,
				object = "Units/corcv_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 487,
				description = "Construction Vehicle Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 35,
				object = "Units/cor3X3D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2-builder",
				[2] = "deathceg3-builder",
				[3] = "deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture1",
			repair = "repair2",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
	},
}
