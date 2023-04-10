return {
	chicken_miniqueen_spectre = {
		acceleration = 0.1,
		airsightdistance = 2400,
		autoheal = 5,
		bmcode = "1",
		brakerate = 0.1,
		buildcostenergy = 2000000,
		buildcostmetal = 50000,
		builddistance = 1000,
		builder = false,
		buildpic = "chickens/chicken_miniqueen_spectre.DDS",
		buildtime = 1500000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		canrepair = 0,
		canreclaim = 0,
		cantbetransported = true,
		capturable = false,
		cancloak = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CHICKEN EMPABLE",
		cloakcost = 0,
		cloakcostmoving = 0,
		collisionspherescale = 1.75,
		collisionvolumeoffsets = "0 -40 15",
		collisionvolumescales = "40 105 70",
		collisionvolumetest = 1,
		collisionvolumetype = "box",
		defaultmissiontype = "Standby",
		explodeas = "BUG_DEATH",
		footprintx = 3,
		footprintz = 3,
		initcloak = true,
		leavetracks = true,
		maneuverleashlength = 2000,
		mass = 2000000,
		maxdamage = 30000,
		maxslope = 40,
		maxvelocity = 1.5,
		maxwaterdepth = 0,
		movementclass = "CHICKQUEENHOVER",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "Chickens/chicken_miniqueen_spectre.s3o",
		pushresistant = true,
		script = "Chickens/chicken_miniqueen.cob",
		seismicsignature = 0,
		selfdestructas = "BUG_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 500,
		smoothanim = true,
		stealth = 1,
		steeringmode = "2",
		tedclass = "BOT",
		trackoffset = 18,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "ChickenTrack",
		trackwidth = 80,
		turninplace = true,
		turninplaceanglelimit = 1,
		turnrate = 100,
		unitname = "chicken_miniqueen_basic",
		upright = false,
		workertime = 5000,
		customparams = {
			subfolder = "other/chickens",
			normaltex = "unittextures/chicken_l_normals.png",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			goo = {
				areaofeffect = 300,
				avoidfeature = 0,
				avoidfriendly = 0,
				burst = 3,
				burstrate = 0.03333,
				cegtag = "nuketrail-roost",
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.63,
				explosiongenerator = "custom:genericshellexplosion-large",
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.7,
				interceptedbyshieldtype = 4,
				model = "Chickens/SGreyRock1.S3O",
				name = "Blob",
				noselfdamage = true,
				proximitypriority = -4,
				range = 1000,
				reloadtime = 20,
				rgbcolor = "0.1 0.6 1",
				size = 8,
				sizedecay = 0,
				soundhit = "e16",
				soundstart = "bigchickenroar",
				sprayangle = 1024,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.2,
				weaponvelocity = 400,
				damage = {
					default = 500,
				},
			},
			melee = {
				areaofeffect = 60,
				avoidfeature = 0,
				avoidfriendly = 0,
				camerashake = 0,
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				firesubmersed = true,
				impulseboost = 1.5,
				impulsefactor = 1.5,
				interceptedbyshieldtype = 4,
				model = "Chickens/spike.s3o",
				name = "ChickenClaws",
				noselfdamage = true,
				range = 400,
				reloadtime = 2,
				soundstart = "bigchickenbreath",
				tolerance = 5000,
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 1000,
				damage = {
					default = 150,
				},
			},
			yellow_missile = {
				areaofeffect = 128,
				avoidfriendly = false,
				burnblow = true,
				--cegtag = "sporetrail-large",
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				cameraShake = 700,
				dance = 20,
				edgeeffectiveness = 0.35,
				explosiongenerator = "custom:genericshellexplosion-huge-bomb",
				firestarter = 0,
				flighttime = 2,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "SimpleFlareXL.s3o",
				name = "Deadly Defensive Spores",
				noselfdamage = true,
				range = 1000,
				reloadtime = 20,
				smoketrail = true,
				smokePeriod = 2,
				smoketime = 45,
				smokesize = 10.5,
				smokecolor = 1.0,
				soundhit = "spore_explo",
				soundstart = "spore_xl",
				soundstartvolume = 9,
				startvelocity = 1000,
				texture1 = "orangenovaexplo",
				texture2 = "sporetrail_xl",
				tolerance = 60000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 60000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 40,
				weapontype = "MissileLauncher",
				weaponvelocity = 2000,
				wobble = 32000,
				damage = {
					default = 5,
					bombers = 500,
					fighters = 500,
					vtol = 500,
				},
			},
		},
		weapons = {
			[1] = {
				def = "MELEE",
				maindir = "0 0 1",
				maxangledif = 155,
			},
			[2] = {
				onlytargetcategory = "VTOL",
				def = "yellow_missile",
			},
			[3] = {
				onlytargetcategory = "VTOL",
				def = "yellow_missile",
			},
			[4] = {
				onlytargetcategory = "VTOL",
				def = "yellow_missile",
			},
			[5] = {
				def = "goo",
				maxangledif = 180,
			},
		},
	},
}
