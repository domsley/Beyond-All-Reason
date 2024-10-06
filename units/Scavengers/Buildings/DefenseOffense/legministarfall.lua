return {
	legministarfall = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 29096,
		buildcostenergy = 60000,
		buildcostmetal = 2000,
		buildpic = "LEGSTARFALL.DDS",
		buildtime = 65000,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "52 65 52",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "hugeBuildingexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 7000,
		maxslope = 13,
		maxwaterdepth = 0,
		objectname = "Units/scavbuildings/legministarfall.s3o",
		script = "Units/scavbuildings/legministarfall.cob",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 700,
		--usepiececollisionvolumes = 1,
		yardmap = "ooo ooo ooo",
		customparams = {
			usebuildinggrounddecal = false,
			unitgroup = 'weapon',
			model_author = "Hornet",
			normaltex = "unittextures/cor_normal.dds",
			removewait = true,
			subfolder = "ArmBuildings/LandDefenceOffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "45 60 45",
				collisionvolumetype = "Box",
				damage = 3000,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 6000,
				object = "Units/scavbuildings/legministarfall_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1500,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 3000,
				object = "Units/arm3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-large",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
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
				[1] = "servlrg3",
			},
			select = {
				[1] = "servlrg3",
			},
		},
		weapondefs = {
			ministarfire = {
				accuracy = 0,
				areaofeffect = 55,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				burst = 61,
				burstrate = 0.01,

				sprayangle = 400,
				highTrajectory = 1,

				cegtag = "ministarfire",
				collidefriendly = false,
				craterboost = 0.1,
				cratermult = 0.1,
				edgeeffectiveness = 0.95,
				energypershot = 20000,

				explosiongenerator = "custom:ministarfire-explosion",
				gravityaffected = "true",
				impulseboost = 0.5,
				impulsefactor = 0.5,
				name = "Starfire Barrage Launcher",
				noselfdamage = true,
				range = 1400,
				reloadtime = 15,
				rgbcolor = "0.7 0.7 1.0 0.7 1.0 1.0 1.0 0.7",
				soundhit = "xplomed3",
				soundhitwet = "splshbig",
				soundstart = "cannon2",
				soundhitvolume = 20,
				turret = true,
				weapontimer = 14,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					default = 125,
					shields = 110,
					subs = 50,
				},
			},

		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ministarfire",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
