return {
	armcroc = {
		acceleration = 0.03452,
		activatewhenbuilt = true,
		brakerate = 0.06904,
		buildcostenergy = 12000,
		buildcostmetal = 500,
		buildpic = "ARMCROC.PNG",
		buildtime = 13367,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 -3",
		collisionvolumescales = "53 23 53",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Heavy Amphibious Tank",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "largeExplosionGeneric-phib",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 3360,
		maxslope = 12,
		maxvelocity = 1.75,
		maxwaterdepth = 255,
		movementclass = "ATANK3",
		name = "Triton",
		nochasecategory = "VTOL",
		objectname = "Units/ARMCROC.s3o",
		script = "Units/ARMCROC.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd-phib",
		sightdistance = 372,
		sonardistance = 279,
		trackoffset = 16,
		trackstrength = 5,
		tracktype = "armcroc_tracks",
		trackwidth = 44,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.35,
		turnrate = 433,
		customparams = {
			arm_tank = "1",
			basename = "base",
			cannon1name = "barrel",
			driftratio = "0.3",
			firingceg = "barrelshot-medium",
			flare1name = "flare1",
			kickback = "-2.4",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			rockstrength = "6",
			sleevename = "turret",
			subfolder = "armvehicles/t2",
			techlevel = 2,
			turretname = "turret",
			wpn1turretx = "45",
			wpn1turrety = "75",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-0.186714172363 0.0605638549805 -0.322418212891",
				collisionvolumescales = "50.9460906982 23.33152771 45.8317565918",
				collisionvolumetype = "Box",
				damage = 2000,
				description = "Triton Wreckage",
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 238,
				object = "Units/armcroc_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				description = "Triton Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 119,
				object = "Units/arm2X2A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
			},
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
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			arm_triton = {
				areaofeffect = 96,
				avoidfeature = false,
				craterareaofeffect = 96,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Medium g2g plasma cannon",
				noselfdamage = true,
				range = 480,
				reloadtime = 1.5,
				soundhit = "xplomed4",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "cannon2",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 290,
				damage = {
					bombers = 30,
					default = 174,
					fighters = 30,
					subs = 5,
					vtol = 30,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_TRITON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
