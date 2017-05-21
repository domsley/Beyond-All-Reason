return {
	armroy = {
		acceleration = 0.0425,
		activatewhenbuilt = true,
		brakerate = 0.00425,
		buildangle = 16384,
		buildcostenergy = 5000,
		buildcostmetal = 850,
		buildpic = "ARMROY.DDS",
		buildtime = 12000,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -13 -3",
		collisionvolumescales = "43 43 96",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Light Destroyer",
		energymake = 2,
		energyuse = 2,
		explodeas = "mediumExplosionGeneric",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2250,
		maxvelocity = 2.55,
		minwaterdepth = 12,
		movementclass = "BOAT4",
		name = "Crusader",
		nochasecategory = "VTOL",
		objectname = "ARMROY",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGeneric",
		sightdistance = 400,
		sonardistance = 350,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.87374,
		turnrate = 300,
		waterline = 4.5,
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.164245605469 8.02001953204e-06 -0.56591796875",
				collisionvolumescales = "38.5542297363 46.44581604 100.6425476074",
				collisionvolumetype = "Box",
				damage = 1545,
				description = "Crusader Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 425,
				object = "ARMROY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Crusader Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 212,
				object = "5X5B",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			arm_roy = {
				areaofeffect = 32,
				size = 2,
				avoidfeature = false,
				sizedecay = 0,
				alphadecay = 0.5,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "LightPlasmaCannon",
				noselfdamage = true,
				range = 650,
				reloadtime = 1.2,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "cannon3",
				separation = 1.0,
				nogap = false,
				stages = 20,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 420,
				damage = {
					bombers = 41,
					default = 175,
					fighters = 41,
					subs = 5,
					vtol = 41,
				},
			},
			depthcharge = {
				areaofeffect = 48,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.75,
				explosiongenerator = "custom:genericshellexplosion-medium",
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "DEPTHCHARGE",
				name = "DepthCharge",
				noselfdamage = true,
				predictboost = 0,
				range = 400,
				reloadtime = 2.25,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 140,
				tolerance = 1000,
				tracks = true,
				turnrate = 4000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 27.5,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 190,
				damage = {
					default = 190,
					heavysubmarines = 80,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_ROY",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "NOTSUB",
				def = "DEPTHCHARGE",
				onlytargetcategory = "NOTHOVER",
			},
		},
	},
}
