return {
	scaint = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 32700,
		buildcostenergy = 90000,
		buildcostmetal = 5800,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 7.5,
		buildinggrounddecalsizey = 7.5,
		buildinggrounddecaltype = "decals/corint_aoplane.dds",
		buildpic = "CORINT.PNG",
		buildtime = 45100,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		cloakcost = 100,
		collisionvolumeoffsets = "0 0 -20",
		collisionvolumescales = "72 105 72",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Extra Long Range Plasma Cannon",
		explodeas = "hugeBuildingExplosionGeneric",
		footprintx = 5,
		footprintz = 5,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3050,
		maxslope = 13,
		maxwaterdepth = 0,
		mincloakdistance = 432,
		name = "Scavenger Intimidator",
		objectname = "Units/CORINT.s3o",
		script = "Units/CORINT.cob",
		seismicsignature = 3,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 673,
		usebuildinggrounddecal = true,
		usepiececollisionvolumes = 1,
		yardmap = "ooooooooooooooooooooooooo",
		customparams = {
			canareaattack = 1,
			model_author = "Mr Bob",
			normaltex = "unittextures/Core_normal.dds",
			removewait = true,
			subfolder = "corebuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 0.0987820556641 -0.0",
				collisionvolumescales = "86.25 91.6069641113 74.6947021484",
				collisionvolumetype = "Box",
				damage = 2760,
				description = "Scintimidator Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 3513,
				object = "Units/corint_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1380,
				description = "Scintintimidator Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 1725,
				object = "Units/cor3X3C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-huge",
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
				[1] = "servlrg4",
			},
			select = {
				[1] = "servlrg4",
			},
		},
		weapondefs = {
			scav_intimidator = {
				accuracy = 465,
				areaofeffect = 157,
				avoidfeature = false,
				avoidfriendly = false,
				collidefriendly = false,
				craterareaofeffect = 136,
				craterboost = 0.1,
				cratermult = 0.1,
				edgeeffectiveness = 0.15,
				energypershot = 6000,
				explosiongenerator = "custom:genericshellexplosion-huge-purple",
				gravityaffected = "true",
				heightboostfactor = 6,
				impulseboost = 0.5,
				impulsefactor = 0.5,
				leadbonus = 0,
				name = "Heavy long range g2g AoE plasma cannon",
				noselfdamage = true,
				range = 6450,
				reloadtime = 24,
				rgbcolor = "0.95 0.32 1",
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "xplonuk3",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 1150,
				customparams = {
					--expl_light_color = "0.88 0.15 1",
					expl_light_life_mult = 3.5,
					expl_light_mult = 1.75,
					expl_light_radius_mult = 1.25,
					light_color = "0.92 0.25 1",
					light_mult = 1.5,
					expl_light_heat_radius_mult = 2.6,
				},
				damage = {
					default = 2000,
					shields = 1000,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "SCAV_INTIMIDATOR",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
