return {
	armthund = {
		acceleration = 0.05,
		brakerate = 0.05,
		buildcostenergy = 4200,
		buildcostmetal = 145,
		buildpic = "ARMTHUND.PNG",
		buildtime = 4778,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND NOTSUB VTOL NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 165,
		description = "Bomber",
		energymake = 1.1,
		energyuse = 1.1,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxacc = 0.0575,
		maxaileron = 0.0144,
		maxbank = 0.8,
		maxdamage = 600,
		maxelevator = 0.01065,
		maxpitch = 0.625,
		maxrudder = 0.00615,
		maxslope = 10,
		maxvelocity = 8.5,
		maxwaterdepth = 0,
		name = "Thunder",
		noautofire = true,
		nochasecategory = "MOBILE",
		objectname = "Units/ARMTHUND.s3o",
		script = "Units/ARMTHUND.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 195,
		speedtofront = 0.063,
		turnradius = 64,
		turnrate = 850,
		usesmoothmesh = true,
		wingangle = 0.06315,
		wingdrag = 0.135,
		customparams = {
			description_long = "The Thunder is a bomber, designed for destroying buildings. A little bit weaker than its CORE counterpart - Shadow. It drops bombs over the target and makes a flyby to reload its ammunition. It can strike every 9 seconds. Always scout first and combine with fighters to eliminate enemy's airwall before  bombing. Click A for attack and drag your RMB to execute a carpet bombing, or use area attack command to strike targets within a circle.",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armaircraft",
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
				[1] = "vtolarmv",
			},
			select = {
				[1] = "vtolarac",
			},
		},
		weapondefs = {
			armbomb = {
				accuracy = 500,
				areaofeffect = 144,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.3,
				collidefriendly = false,
				commandfire = false,
				craterareaofeffect = 144,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.55,
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				gravityaffected = "true",
				impulseboost = 0.5,
				impulsefactor = 0.5,
				model = "airbomb.s3o",
				name = "Light a2g impulse warheads",
				noselfdamage = true,
				range = 1280,
				reloadtime = 6,
				soundhit = "xplomed2",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "bombrel",
				sprayangle = 300,
				weapontype = "AircraftBomb",
				customparams = {
					expl_light_color = "1 0.5 0.05",
					expl_light_heat_radius_mult = 1.3,
				},
				damage = {
					bombers = 21,
					default = 105,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ARMBOMB",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
