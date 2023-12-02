return {
	corban = {
		maxacc = 0.02269,
		maxdec = 0.04537,
		energycost = 23000,
		metalcost = 1000,
		buildpic = "CORBAN.DDS",
		buildtime = 23100,
		canmove = true,
		category = "ALL TANK WEAPON NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -9 1",
		collisionvolumescales = "42 42 42",
		collisionvolumetype = "BOX",
		corpse = "DEAD",
		explodeas = "largeExplosionGeneric",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 2500,
		--maxreversevelocity = 0.996,
		maxslope = 20,
		speed = 54.0,
		maxwaterdepth = 20,
		movementclass = "HTANK4",
		--nochasecategory = "VTOL",
		objectname = "Units/CORBAN.s3o",
		script = "Units/CORBAN.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 546,
		trackoffset = 8,
		trackstrength = 10,
		tracktype = "corwidetracks",
		trackwidth = 34,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.2573,
		turnrate = 300,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			cannon1name = "missile1",
			cannon2name = "missile2",
			driftratio = "0.25",
			firingceg = "barrelshot-medium",
			flare1name = "flare1",
			flare2name = "flare2",
			kickback = "-12",
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			restoretime = "3000",
			rockstrength = "8",
			sleevename = "sleeve",
			subfolder = "corvehicles/t2",
			techlevel = 2,
			turretname = "turret",
			wpn1turretx = "125",
			wpn1turrety = "125",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -9 1",
				collisionvolumescales = "42 42 42",
				collisionvolumetype = "BOX",
				damage = 2000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 30,
				hitdensity = 100,
				metal = 510,
				object = "Units/corban_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 5,
				hitdensity = 100,
				metal = 244,
				object = "Units/cor3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:rocketflare-large",
				[2] = "custom:DUST_CLOUD",
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
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
		weapondefs = {
			banisher = {
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				cegtag = "missiletraillarge-red",
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.55,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				firestarter = 20,
				flighttime = 2.33,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "banishermissile.s3o",
				name = "Banisher",
				noselfdamage = true,
				range = 800,
				reloadtime = 7.5,
				smoketrail = true,
				smokePeriod = 7,
				smoketime = 48,
				smokesize = 11.3,
				smokecolor = 0.82,
				smokeTrailCastShadow = false,
				soundhit = "corban_b",
				soundhitwet = "splsmed",
				soundstart = "corban_a",
				startvelocity = 240,
				texture1 = "null",
				texture2 = "railguntrail",
				tolerance = 9000,
				tracks = true,
				trajectoryheight = 0.45,
				turnrate = 5000,
				turret = true,
				weaponacceleration = 220,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 650,
				damage = {
					default = 1000,
					subs = 500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "BANISHER",
				maindir = "0 0 1",
				maxangledif = 270,
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
