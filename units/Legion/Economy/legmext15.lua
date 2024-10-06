return {
	legmext15 = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 2048,
		energycost = 6000,
		metalcost = 300,
		buildingmask = 0,
		buildpic = "LEGMEXT15.DDS",
		buildtime = 5000,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE CANBEUW UNDERWATER",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "48 30 48",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energyupkeep = 30,
		explodeas = "mediumBuildingexplosiongeneric",
		extractsmetal = 0.002,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 1110,
		maxslope = 30,
		metalstorage = 150,
		objectname = "Units/LEGMEXT15.s3o",
		onoffable = true,
		script = "Units/LEGMEXT15.cob",
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd",
		selfdestructcountdown = 1,
		sightdistance = 273,
		yardmap = "h cbbbbbbc bssssssb bssobssb bsbbbosb bsobbbsb bssbossb bssssssb cbbbbbbc",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cormex_aoplane.dds",
			buildinggrounddecalsizey = 2,
			buildinggrounddecalsizex = 2,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'metal',
			cvbuildable = true,
			metal_extractor = 1,
			model_author = "Protar",
			normaltex = "unittextures/leg_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "CorBuildings/LandEconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-3.07257080078 -0.112374182129 0.00819396972656",
				collisionvolumescales = "61.0307312012 23.0310516357 47.5323181152",
				collisionvolumetype = "Box",
				damage = 105,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 150,
				object = "Units/LEGMEXT15_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 53,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 75,
				object = "Units/cor3X3E.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			activate = "mexon",
			canceldestruct = "cancel2",
			deactivate = "mexoff",
			underattack = "warning1",
			working = "mexworking",
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
			select = {
				[1] = "mexselect",
			},
		},
	},
}
