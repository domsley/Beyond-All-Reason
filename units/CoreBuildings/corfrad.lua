return {
	corfrad = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 16384,
		buildcostenergy = 1000,
		buildcostmetal = 130,
		buildpic = "CORFRAD.DDS",
		buildtime = 1800,
		canattack = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -15 0",
		collisionvolumescales = "32 95 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Early Warning System",
		energymake = 4,
		energyuse = 4,
		explodeas = "mediumBuildingexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 72,
		maxdamage = 103,
		maxslope = 10,
		minwaterdepth = 5,
		name = "Floating Radar Tower",
		objectname = "CORFRAD",
		onoffable = true,
		radardistance = 2100,
		radaremitheight = 72,
		seismicsignature = 0,
		selfdestructas = "mediumBuildingexplosiongeneric",
		sightdistance = 740,
		waterline = 4,
		yardmap = "wwwwwwwww",
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-1.90951538086 -2.08381778564 1.08252716064",
				collisionvolumescales = "41.2277526855 50.2841644287 42.4677886963",
				collisionvolumetype = "Box",
				damage = 62,
				description = "Floating Radar Tower Wreckage",
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 80,
				object = "CORFRAD_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
			},
		},
		sounds = {
			activate = "radar1",
			canceldestruct = "cancel2",
			deactivate = "radarde1",
			underattack = "warning1",
			working = "radar2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "radar2",
			},
		},
	},
}
