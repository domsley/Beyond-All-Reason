return {
	armjam = {
		maxacc = 0.02416,
		activatewhenbuilt = true,
		maxdec = 0.04831,
		energycost = 1700,
		metalcost = 105,
		buildpic = "ARMJAM.DDS",
		buildtime = 5930,
		canattack = false,
		canmove = true,
		category = "ALL TANK MOBILE NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "23 28 33",
		collisionvolumetype = "Box",
		corpse = "dead",
		energyupkeep = 80,
		explodeas = "smallexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = false,
		health = 510,
		maxslope = 16,
		speed = 33.0,
		maxwaterdepth = 0,
		movementclass = "TANK3",
		nochasecategory = "MOBILE",
		objectname = "Units/ARMJAM.s3o",
		onoffable = true,
		radardistance = 0,
		radardistancejam = 450,
		script = "Units/ARMJAM.cob",
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 300,
		trackoffset = 8,
		trackstrength = 10,
		tracktype = "StdTank",
		trackwidth = 22,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.792,
		turnrate = 505,
		customparams = {
			unitgroup = 'util',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armvehicles/t2",
			techlevel = 2,
			off_on_stun = "true",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "23 28 33",
				collisionvolumetype = "Box",
				damage = 400,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 78,
				object = "Units/armjam_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 368,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 39,
				object = "Units/arm3X3B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
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
				[1] = "varmmove",
			},
			select = {
				[1] = "radjam1",
			},
		},
	},
}
