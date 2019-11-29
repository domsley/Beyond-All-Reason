return {
	armsaber = {
		acceleration = 0.24,
		blocking = false,
		brakerate = 0.46,
		buildcostenergy = 6400,
		buildcostmetal = 210,
		buildpic = "ARMSABER.PNG",
		buildtime = 9016,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB VTOL NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 100,
		description = "Seaplane Gunship",
		energymake = 0.8,
		energyuse = 0.8,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 911,
		maxslope = 10,
		maxvelocity = 5.23,
		maxwaterdepth = 255,
		name = "Sabre",
		nochasecategory = "VTOL",
		objectname = "Units/ARMSABER.s3o",
		script = "Units/ARMSABER.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 595,
		turninplaceanglelimit = 360,
		turnrate = 720,
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armseaplanes",
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-small",
				[2] = "crashing-small",
				[3] = "crashing-small2",
				[4] = "crashing-small3",
				[5] = "crashing-small3",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel1",
			},
		},
		weapondefs = {
			vtol_emg2 = {
				accuracy = 100,
				areaofeffect = 20,
				avoidfeature = false,
				burnblow = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.05,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small",
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 4,
				name = "Light a2g discharge blaster",
				noselfdamage = true,
				proximitypriority = 1,
				range = 475,
				reloadtime = 0.8,
				rgbcolor = "0.05 0.05 1",
				soundhit = "xplosml3",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "Lasrhvy2",
				thickness = 5,
				tolerance = 10000,
				turret = false,
				weapontype = "LaserCannon",
				weaponvelocity = 400,
				damage = {
					bombers = 10,
					commanders = 40,
					default = 60,
					fighters = 10,
					subs = 1,
					vtol = 10,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "VTOL_EMG2",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
