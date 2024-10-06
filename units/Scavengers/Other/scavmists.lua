local lvlParams = {
	[""] = {
		autoheal = 125,
        buildtime = 5500,
        explodeas = "",
        explosiongenerator = "custom:scavmist",
        health = 1250,
        jamandlosdistance = 300,
        power = 500,
        selfdestructas = "",
        unitname = "scavmist",
        workertime = 200,

        --unitspawning
        landunitspawns = "armwar armham armrock armstump armflash armpincer armjanus corthud corstorm corlevlr corgarp corraid corgator legbal legkark legcen leglob legamphtank leggat leghelios leghades armpw corak leggob armpw corak leggob armpw corak leggob armpw corak leggob armpw corak leggob armpw corak leggob armpw corak leggob armpw corak leggob armpw corak leggob armpw corak leggob",
        landturretspawns = "armbeamer armhlt armclaw armferret armrl armrl corhllt corhlt cormaw cormadsam corrl corrl legmg legdtr legrhapsis legrl legrl armllt corllt leglht armllt corllt leglht armllt corllt leglht armllt corllt leglht armllt corllt leglht",
        waterspawns = "armdecade armpship armsub corpship corpt armanac corsnap legner armpt coresupp armsh corsh legsh armpt coresupp armsh corsh legsh armpt coresupp armsh corsh legsh armpt coresupp armsh corsh legsh",
        unitspawnrange = 200,
        turretspawnrange = 300,
        landunitburst = 10, --remember, around 50% actually ends up spawning on average due to burnblow+sprayangle interaction
        landturretburst = 4, --same here
        waterburst = 8, --remember, around 50% actually ends up spawning on average due to burnblow+sprayangle interaction
	},
	["xl"] = {
        autoheal = 250,
        buildtime = 17000,
        explodeas = "",--"mistexploxl",
        explosiongenerator = "custom:scavmistxl",
        health = 2500,
        jamandlosdistance = 300,
        power = 1000,
        selfdestructas = "",--"mistexploxl",
        unitname = "scavmistxl",
        workertime = 400,

        --unitspawning
        landunitspawns = "armsptk armmav armfido armamph armlatnk armbull armgremlin armzeus armfast corpyro corsala corhal correap coramph cortermite corcan corparrow armcroc legaskirmtank legfloat legmrv legaheattank legshot legstr armstump corraid leggat armstump corraid leggat armstump corraid leggat armstump corraid leggat armstump corraid leggat armstump corraid leggat armstump corraid leggat armstump corraid leggat armstump corraid leggat",
        landturretspawns = "armpb armclaw armclaw armcir corvipe cormaw cormaw corerad legbombard legdtr legdtr legrhapsis legrhapsis armferret armferret legrhapsis legrhapsis cormadsam cormadsam armhlt corhlt legmg  armhlt corhlt legmg armhlt corhlt legmg armhlt corhlt legmg armhlt corhlt legmg",
        waterspawns = "armlship armbats armserp armcrus corshark corbats corfship corssub corcrus corhal corhal armpship corpship armanac corsnap legner armpship corpship armanac corsnap legner armpship corpship armanac corsnap legner",
        unitspawnrange = 275, 
        turretspawnrange = 375, 
        landunitburst = 10, --remember, around 50% actually ends up spawning on average due to burnblow+sprayangle interaction
        landturretburst = 4, --same here
        waterburst = 10, --remember, around 50% actually ends up spawning on average due to burnblow+sprayangle interaction
	},
	["xxl"] = {
        autoheal = 500,
        buildtime = 25500,
        explodeas = "",--"mistexploxxl",
        explosiongenerator = "custom:scavmistxl",
		health = 5000,
        jamandlosdistance = 300,
        power = 2000,
        selfdestructas = "",--"mistexploxxl",
        unitname = "scavmistxxl",
        workertime = 600,

        --unitspawning
        landunitspawns = "armmeatball armassimilator armpwt4 armraz corthermite corakt4 corkarg cordemon armmar armlun corshiva corsok armmar armlun corshiva corsok armmar armlun corshiva corsok armmar armlun corshiva corsok armmar armlun corshiva corsok",
        landturretspawns = "armpb armflak armminivulc corhllllt corflak legbombard legflak corminibuzz armlwall cormwall armlwall cormwall armlwall cormwall",
        waterspawns = "armlun armlun armlship armlship armlship armbats armserp armcrus armcrus corshark corbats corfship corfship corfship corfship corssub corcrus corcrus corsok corsok ",
        unitspawnrange = 300, 
        turretspawnrange = 400, 
        landunitburst = 10, --remember, around 50% actually ends up spawning on average due to burnblow+sprayangle interaction
        landturretburst = 4, --same here
        waterburst = 12, --remember, around 50% actually ends up spawning on average due to burnblow+sprayangle interaction

	},
}
local unitsTable = {}
for lvl, stats in pairs(lvlParams) do
	unitsTable["scavmist" .. lvl] = {
        maxacc = 0.207,
		autoheal = 50,
		maxdec = 0.6486,
		energycost = 1,
		metalcost = 1,
		builddistance = 200,
		--builder = true,
		buildpic = "scavengers/SCAVMIST.DDS",
		buildtime = stats.buildtime,
		canmove = true,
		canassist = true,
		cancloak = true,
        initcloaked = true,
		decloakonfire = false,
		category = "ALL BOT MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "64 24 64",
		collisionvolumetype = "CylY",
		--corpse = "DEAD",
		explodeas = stats.explodeas,
		floater = true,
		footprintx = 4,
		footprintz = 4,
		hidedamage = true,
		kamikaze = true,
		kamikazedistance = 50,
		idleautoheal = 5,
		idletime = 600,
		mass = 1000,
		health = stats.health,
		speed = 30.0,
		maxwaterdepth = 0,
		movementclass = "SCAVMIST",
		nochasecategory = "ALL",
		objectname = "scavs/scavmistflare.s3o",
        power = stats.power,
        radardistancejam = stats.jamandlosdistance,
		script = "scavs/SCAVMIST.cob",
		seismicsignature = 0,
		selfdestructas = stats.selfdestructas,
		selfdestructcountdown = 0,
		sightdistance = stats.jamandlosdistance,
		stealth = true,
		strafetoattack = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.5,
		turnrate = 1200,
		workertime = stats.workertime,
		unitname = stats.unitname,
		customparams = {
			model_author = "SethDGamre",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.001,
			subfolder = "Scavengers",
            inheritxpratemultiplier = 0.1,
			childreninheritxp = "BOTCANNON",
			parentsinheritxp = "BOTCANNON",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = stats.explosiongenerator,
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
				[1] = "count1",
			},
			ok = {
				[1] = "spider2",
			},
			select = {
				[1] = "spider",
			},
		},
		weapondefs = {
			landunitspawner = {
				areaofeffect = 1,
				avoidfriendly = false,
				avoidground = false,
				avoidfeature = false,
				burnblow = true,
				burst = stats.landunitburst,
				burstrate = 0.1,
				collidefriendly = false,
				collideenemy = false,
				collideneutral = false,
				collidefeature = false,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				heightboostfactor = 0,
                model = "",
				name = "Teleporter",
				noselfdamage = true,
				range = stats.unitspawnrange,
				reloadtime = 60,
                rgb = 0.0, 0.0, 0.0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				sprayangle = 18000,
				targetborder = 1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 3000,
				customparams = {
					spawns_name = stats.landunitspawns,
					spawns_surface = "LAND",
					spawns_mode = "random",
                    spawns_ceg = "scav-spawnexplo",
					spawns_stun = 1
				},
				damage = {
					default = 0,
				},
			},
			landturretspawner = {
				areaofeffect = 1,
				avoidfriendly = false,
				avoidground = false,
				avoidfeature = false,
				burnblow = true,
				burst = stats.landturretburst,
				burstrate = 0.1,
				collidefriendly = false,
				collideenemy = false,
				collideneutral = false,
				collidefeature = false,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				heightboostfactor = 0,
                model = "",
				name = "Teleporter",
				noselfdamage = true,
				proximitypriority = -1,
				range = stats.turretspawnrange,
				reloadtime = 60,
                rgb = 0.0, 0.0, 0.0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				sprayangle = 18000,
				targetborder = 1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 3000,
				customparams = {
					spawns_name = stats.landturretspawns,
					spawns_surface = "LAND",
					spawns_mode = "random",
					spawns_expire = 60,
                    spawns_ceg = "scav-spawnexplo",
					spawns_stun = 1
				},
				damage = {
					default = 0,
				},
			},
			waterspawner = {
				areaofeffect = 1,
				avoidfriendly = false,
				avoidground = false,
				avoidfeature = false,
				burnblow = true,
				burst = stats.waterburst,
				burstrate = 0.1,
                craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				collidefriendly = false,
				collideenemy = false,
				collideneutral = false,
				collidefeature = false,
				cylindertargeting = 1,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				heightboostfactor = 0,
                model = "",
				name = "Teleporter",
				noselfdamage = true,
				proximitypriority = -1,
				range = stats.turretspawnrange,
				reloadtime = 60,
                rgb = 0.0, 0.0, 0.0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				sprayangle = 18000,
				targetborder = 1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 3000,
				customparams = {
					spawns_name = stats.waterspawns,
					spawns_surface = "SEA",
					spawns_mode = "random",
                    spawns_ceg = "scav-spawnexplo",
					spawns_stun = 1
				},
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
                badtargetcategory = "VTOL",
				def = "landunitspawner",
                onlytargetcategory = "NOTSUB",
			},
			[2] = {
                badtargetcategory = "VTOL UNDERWATER",
				def = "landturretspawner",
			},
			[3] = {
                badtargetcategory = "VTOL",
				def = "waterspawner",
			},

		},
	}
end
return unitsTable
