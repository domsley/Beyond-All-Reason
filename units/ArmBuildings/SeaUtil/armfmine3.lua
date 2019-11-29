return {
	armfmine3 = {
		acceleration = 0,
		blocking = false,
		brakerate = 0,
		buildcostenergy = 1600,
		buildcostmetal = 25,
		buildpic = "ARMFMINE3.PNG",
		buildtime = 150,
		canattack = false,
		canguard = false,
		canpatrol = false,
		canrepeat = false,
		category = "ALL WEAPON MINE NOTSUB NOTAIR HOVER SURFACE EMPABLE",
		cloakcost = 2,
		collide = false,
		collisionvolumeoffsets = "0 -1.5 0",
		collisionvolumescales = "18 5 18",
		collisionvolumetype = "CylY",
		description = "Heavy Mine, Naval Series",
		explodeas = "FMINE_HEAVY",
		firestate = 2,
		footprintx = 1,
		footprintz = 1,
		icontype = "building",
		idleautoheal = 10,
		idletime = 300,
		initcloaked = true,
		maxdamage = 10,
		maxslope = 40,
		mincloakdistance = 8,
		minwaterdepth = 0,
		name = "Mega NS",
		nochasecategory = "VTOL",
		objectname = "Units/ARMFMINE3.s3o",
		script = "mines_lus.lua",
		seismicsignature = 0,
		selfdestructas = "FMINE_HEAVY",
		selfdestructcountdown = 0,
		sightdistance = 78,
		sonarstealth = true,
		stealth = true,
		waterline = 1,
		yardmap = "w",
		customparams = {
			detonaterange = "64",
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/seautil",
		},
		sfxtypes = {
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
				[1] = "servsml6",
			},
			select = {
				[1] = "minesel1",
			},
		},
		weapondefs = {
			minerange = {
				areaofeffect = 0,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				firesubmersed = false,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Crawlingbomb Dummy Weapon",
				range = 64,
				reloadtime = 1,
				soundhitwet = "",
				soundhitwetvolume = 0,
				tolerance = 1000000,
				weapontype = "Melee",
				weaponvelocity = 100000,
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				def = "MINERANGE",
			},
		},
	},
}
