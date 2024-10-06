return {
	armassistdrone_land = {
		maxacc = 1,
		maxdec = 1,
		energycost = 1,
		metalcost = 1,
		builddistance = 150,
		builder = true,
		buildpic = "ARMBEAVER.DDS",
		buildtime = 500,
		cancapture = true,
		canmove = true,
		category = "ALL TANK PHIB NOTSUB  NOWEAPON NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "17 11 21",
		collisionvolumetype = "Box",
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 2000,
		maxslope = 16,
		speed = 37.5,
		maxwaterdepth = 255,
		movementclass = "ATANK3",
		objectname = "Units/armassistdrone_land.s3o",
		script = "Units/ARMBEAVER.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 150,
		terraformspeed = 400,
		trackstrength = 5,
		tracktype = "armpincer_tracks",
		trackwidth = 17,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.9834,
		turnrate = 1000,
		workertime = 100*Spring.GetModOptions().assistdronesbuildpowermultiplier,
		buildoptions = {
			[1] = "armsolar",
			[2] = "armwin",
			[3] = "armmstor",
			[4] = "armestor",
			[5] = "armmex",
			[6] = "armmakr",
			[7] = "armlab",
			[8] = "armvp",
			[9] = "armap",
			[10] = "armeyes",
			[11] = "armrad",
			[12] = "armdrag",
			[13] = "armllt",
			[14] = "armrl",
			[15] = "armdl",
			[16] = "armtide",
			[17] = "armuwms",
			[18] = "armuwes",
			--[19] = "armuwmex",
			[20] = "armfmkr",
			[21] = "armsy",
			[22] = "armfdrag",
			[23] = "armtl",
			[24] = "armfrt",
			[25] = "armfrad",
			-- Experimental:
			[26] = "armhp",
			[27] = "armfhp",
		},
		customparams = {
			unitgroup = 'builder',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "ArmVehicles",
		},
		sfxtypes = {
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
				[1] = "tnkt1canamphok",
			},
			select = {
				[1] = "tnkt1canamphsel",
			},
		},
	},
}
