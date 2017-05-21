return {
	armfig = {
		acceleration = 0.83,
		airsightdistance = 950,
		brakerate = 0.075,
		buildcostenergy = 2800,
		buildcostmetal = 70,
		buildpic = "ARMFIG.DDS",
		buildtime = 3500,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTSUB ANTIFLAME ANTIEMG ANTILASER NOTLAND VTOL NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 110,
		description = "Fighter",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxdamage = 150,
		maxslope = 10,
		maxvelocity = 9.64,
		maxwaterdepth = 0,
		name = "Freedom Fighter",
		nochasecategory = "NOTAIR",
		objectname = "ARMFIG",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGeneric",
		sightdistance = 210,
		turnrate = 891,
		blocking = false,
		customparams = {
			
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
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
			armvtol_missile_a2a = {
				areaofeffect = 48,
				avoidfeature = false,
		    canattackground = false,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailfighter",
				explosiongenerator = "custom:genericshellexplosion-small-air",
				firestarter = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "GuidedMissiles",
				noselfdamage = true,
				range = 800,
				reloadtime = 0.9,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "Rocklit3",
				startvelocity = 360,
				texture2 = "armsmoketrail",
				tolerance = 12000,
				tracks = true,
				turnrate = 20000,
				weaponacceleration = 400,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 950,
				damage = {
					bombers = 125,
					fighters = 200,
					vtol = 125,
				},
				customparams = {
					light_skip = true,		-- used by projectile lights widget
				},
			},
			armvtol_missile_a2g = {
				areaofeffect = 48,
				avoidfeature = false,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailfighter",
				explosiongenerator = "custom:genericshellexplosion-small-air",
				firestarter = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "GuidedMissiles",
				noselfdamage = true,
				range = 330,
				reloadtime = 0.9,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "Rocklit3",
				startvelocity = 360,
				texture2 = "armsmoketrail",
				tolerance = 12000,
				tracks = true,
				turnrate = 20000,
				weaponacceleration = 400,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 950,
				damage = {
					commanders = 5,
					default = 23,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				def = "ARMVTOL_MISSILE_A2A",
				onlytargetcategory = "VTOL",
			},
			[2] = {
				def = "ARMVTOL_MISSILE_A2G",
				onlytargetcategory = "NOTAIR",
			},
		},
	},
}
