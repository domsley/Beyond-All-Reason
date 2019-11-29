return {
	corcarry = {
		acceleration = 0.01647,
		activatewhenbuilt = true,
		brakerate = 0.01647,
		buildangle = 16384,
		buildcostenergy = 17000,
		buildcostmetal = 1400,
		builder = true,
		buildpic = "CORCARRY.PNG",
		buildtime = 20000,
		canassist = false,
		canattack = false,
		canmove = true,
		canreclaim = false,
		canrepair = false,
		category = "ALL NOTLAND MOBILE NOTSUB SHIP NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "-1 -7 0",
		collisionvolumescales = "61 61 153",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Aircraft Carrier with Anti-Nuke",
		energymake = 300,
		energystorage = 1500,
		energyuse = 25,
		explodeas = "hugeexplosiongeneric",
		floater = true,
		footprintx = 7,
		footprintz = 7,
		icontype = "sea",
		idleautoheal = 15,
		idletime = 600,
		losemitheight = 50,
		mass = 10000,
		maxdamage = 4500,
		maxvelocity = 2.008,
		metalstorage = 800,
		minwaterdepth = 15,
		movementclass = "BOAT7",
		name = "Hive",
		nochasecategory = "ALL",
		objectname = "Units/CORCARRY.s3o",
		radardistance = 2700,
		radaremitheight = 50,
		script = "Units/CORCARRY.cob",
		seismicsignature = 0,
		selfdestructas = "hugeexplosiongenericSelfd",
		sightdistance = 1040,
		sonardistance = 740,
		terraformspeed = 5000,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 180,
		waterline = 8,
		workertime = 1000,
		customparams = {
			model_author = "Beherith",
			normaltex = "unittextures/Core_normal.dds",
			subfolder = "coreships/t2",
			techlevel = 2,
			isairbase = true,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "3.09324645996 4.5947265626e-05 -1.09795379639",
				collisionvolumescales = "76.2124633789 40.5466918945 153.329818726",
				collisionvolumetype = "Box",
				damage = 9540,
				description = "Hive Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 700,
				object = "Units/corcarry_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 4032,
				description = "Hive Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 350,
				object = "Units/cor3X3A.s3o",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			fmd_rocket = {
				areaofeffect = 420,
				avoidfeature = false,
				avoidfriendly = false,
				cegtag = "antimissiletrail",
				collidefriendly = false,
				coverage = 2000,
				craterareaofeffect = 420,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 7500,
				explosiongenerator = "custom:antinuke",
				firestarter = 100,
				flighttime = 120,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				interceptor = 1,
				metalpershot = 150,
				model = "fmdmissile.s3o",
				name = "Rocket",
				noselfdamage = true,
				range = 72000,
				reloadtime = 2,
				smoketrail = false,
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "Rockhvy1",
				stockpile = true,
				stockpiletime = 90,
				texture1 = "trans",
				texture2 = "null",
				texture3 = "null",
				tolerance = 4000,
				tracks = true,
				turnrate = 130000,
				weaponacceleration = 150,
				weapontimer = 5,
				weapontype = "StarburstLauncher",
				weaponvelocity = 6000,
				customparams = {
					expl_light_color = "1 0.5 0.75",
					expl_light_life_mult = 1.3,
					expl_light_mult = 1.3,
					expl_light_radius_mult = 1.3,
					light_color = "1 0.5 0.75",
					light_mult = 4,
					light_radius_mult = 1.25,
				},
				damage = {
					default = 1500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "ALL",
				def = "FMD_ROCKET",
			},
		},
	},
}
