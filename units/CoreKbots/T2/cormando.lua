return {
	cormando = {
		acceleration = 0.4025,
		activatewhenbuilt = true,
		autoheal = 9,
		brakerate = 1.725,
		buildcostenergy = 15500,
		buildcostmetal = 1200,
		builddistance = 275,
		builder = true,
		buildpic = "CORMANDO.PNG",
		buildtime = 17131,
		canassist = true,
		canmove = true,
		canreclaim = true,
		canrepair = true,
		canrestore = false,
		category = "ALL MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE KBOT EMPABLE",
		collisionvolumeoffsets = "0 -6 0",
		collisionvolumescales = "38 45 22",
		collisionvolumetype = "box",
		description = "Stealthy Paratrooper K-bot",
		energymake = 10,
		energystorage = 20,
		explodeas = "mediumexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 9,
		idletime = 900,
		maxdamage = 1400,
		maxslope = 20,
		maxvelocity = 2.5,
		movementclass = "AKBOT2",
		name = "Commando",
		nochasecategory = "VTOL",
		objectname = "Units/CORMANDO.s3o",
		radardistance = 900,
		radardistancejam = 150,
		script = "Units/CORMANDO.cob",
		seismicsignature = 4,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 600,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.65,
		turnrate = 1168.40002,
		upright = true,
		workertime = 200,
		buildoptions = {
			[1] = "corvalk",
			[2] = "corfink",
			[3] = "cormine4",
			[4] = "cormaw",
			[5] = "cordrag",
			[6] = "coreyes",
			[7] = "corjamt",
		},
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Core_normal.dds",
			subfolder = "corekbots/t2",
			techlevel = 2,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
		weapondefs = {
			commando_blaster = {
				accuracy = 120,
				areaofeffect = 70,
				avoidfeature = false,
				craterareaofeffect = 70,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 100,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "CommandoBlaster",
				noselfdamage = true,
				predictboost = 0.5,
				proximitypriority = -10,
				range = 300,
				reloadtime = 0.5,
				rgbcolor = "0.85,0.3,0.2",
				soundhit = "xplosml3",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "canlite3",
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 930,
				damage = {
					default = 100,
				},
			},
			commando_minelayer = {
				areaofeffect = 40,
				avoidfeature = false,
				burnblow = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:blank",
				firestarter = 0,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "CommandoMineLayer",
				noselfdamage = true,
				predictboost = 1,
				proximitypriority = -10,
				range = 310,
				reloadtime = 1.5,
				rgbcolor = "1 0 0",
				size = 0.0001,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 1200,
				damage = {
					default = 5,
				},
			},
		},
		weapons = {
			[1] = {
				def = "COMMANDO_BLASTER",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "COMMANDO_MINELAYER",
				onlytargetcategory = "NOTAIR NOTSHIP NOTSUB NOTSUB",
			},
		},
	},
}
