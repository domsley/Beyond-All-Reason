return {
	armgplat = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 16384,
		buildcostenergy = 900,
		buildcostmetal = 110,
		buildpic = "ARMGPLAT.PNG",
		buildtime = 2860,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -6 0",
		collisionvolumescales = "76 36 76",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Light Plasma Defense",
		energymake = 1,
		energystorage = 10,
		explodeas = "mediumBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 680,
		minwaterdepth = 1,
		name = "Gun Platform",
		nochasecategory = "MOBILE",
		objectname = "Units/ARMGPLAT.s3o",
		script = "Units/ARMGPLAT.cob",
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd",
		sightdistance = 550,
		waterline = 1,
		yardmap = "wwwwwwwwwwwwwwww",
		customparams = {
			normaltex = "unittextures/Arm_normal.dds",
			removewait = true,
			subfolder = "armbuildings/seadefence",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -6.6047363281e-05 -15.62939453125e-06",
				collisionvolumescales = "50.0 45.7867279053 45.9999847412",
				collisionvolumetype = "Box",
				damage = 750,
				description = "Gun Platform Wreckage",
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 80,
				object = "Units/armgplat_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-tiny",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "twractv3",
			},
			select = {
				[1] = "twractv3",
			},
		},
		weapondefs = {
			gun = {
				accuracy = 4,
				alphadecay = 0.5,
				areaofeffect = 16,
				avoidfeature = false,
				burst = 2,
				burstrate = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:plasmahit-medium",
				firetolerance = 200,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Rapid-fire close-quarters plasma turret",
				nogap = false,
				noselfdamage = true,
				projectiles = 1,
				range = 430,
				reloadtime = 0.4,
				separation = 1,
				size = 1.75,
				sizedecay = 0.1,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				stages = 20,
				targetmoveerror = 0.1,
				tolerance = 0,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 924,
				damage = {
					default = 22.5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "GUN",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
