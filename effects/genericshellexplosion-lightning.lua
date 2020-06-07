-- genericshellexplosion-medium-lightning
-- genericshellexplosion-small-lightning
-- genericshellexplosion-large-lightning

local definitions = {

  ["genericshellexplosion-small-lightning"] = {
    blueelectricityspikes = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.7 0.7 0.9 0.03   0.5 0.5 0.9 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 6,
        particlelife       = 7,
        particlelifespread = 1,
        particlesize       = 8,
        particlesizespread = 1,
        particlespeed      = 2,
        particlespeedspread = 1.5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[whitelightb]],
        useairlos          = false,
      },
    },
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
                heat               = 7,
        heatfalloff        = 1.6,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 4,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
    electricstorm = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 2,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        delay              = [[10 r70]],
        explosiongenerator = [[custom:lightning_stormbolt]],
        pos                = [[-40 r60, 1, -40 r60]],
      },
    },
    groundflash = {
      air                = true,
            flashalpha         = 0.18,
      flashsize          = 50,
      ground             = true,
      ttl                = 20,
      water              = true,
	  underwater         = true,
      color = {
        [1]  = 0,
        [2]  = 0.4,
        [3]  = 1,
      },
    },
    electricity = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        airdrag            = 0.89,
        colormap           = [[0 0 0 0.0	 1 1 1 0.04	 0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.04	 0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   1 1 1 0.03   0 0 0 0.0   0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0   0 0 0 0.0  	 0 0 0 0.0  1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  1 1 1 0.02	  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0	  1 1 1 0.015	 0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  	 0 0 0 0.0   1 1 1 0.012  0 0 0 0.0  ]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 5,
        emitvector         = [[0, 1.1, 0]],
        gravity            = [[0, 0.1, 0]],
        numparticles       = 5,
        particlelife       = 3,
        particlelifespread = 24,
        particlesize       = 0.8,
        particlesizespread = 1.4,
        particlespeed      = 0.8,
        particlespeedspread = 3.5,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.4,
        sizemod            = 1.0,
        texture            = [[whitelightb]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
                heat               = 7,
        heatfalloff        = 1.6,
        maxheat            = 14,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 8,
        speed              = [[0, 1 0, 0]],
        texture            = [[brightblueexplo]],
      },
    },
  },


  ["genericshellexplosion-medium-lightning"] = {
    blueelectricityspikes = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.7 0.7 0.9 0.037   0.5 0.5 0.9 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 8,
        particlelife       = 7,
        particlelifespread = 1,
        particlesize       = 2,
        particlesizespread = 6,
        particlespeed      = 0,
        particlespeedspread = 4,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.75,
        sizemod            = 1,
        texture            = [[whitelightb]],
        useairlos          = false,
      },
    },
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 7,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
    electricstorm = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        delay              = [[10 r70]],
        explosiongenerator = [[custom:lightning_stormbolt]],
        pos                = [[-55 r70, 1, -55 r70]],
      },
    },
    groundflash = {
      air                = true,
      flashalpha         = 0.13,
      flashsize          = 80,
      ground             = true,
      ttl                = 45,
      water              = true,
      underwater         = true,
      color = {
        [1]  = 0,
        [2]  = 0.4,
        [3]  = 1,
      },
    },
    electricity = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.86,
        colormap           = [[0 0 0 0.0	 1 1 1 0.04	 0 0 0 0.0 	 0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.04	 0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   1 1 1 0.03   0 0 0 0.0	 0 0 0 0.0    0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0   0 0 0 0.0  	 0 0 0 0.0  1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  1 1 1 0.02	  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0	  1 1 1 0.015	 0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  	 0 0 0 0.0 	 0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.012  0 0 0 0.0  ]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 5,
        emitvector         = [[0, 1.1, 0]],
        gravity            = [[0, 0.07, 0]],
        numparticles       = 4,
        particlelife       = 3,
        particlelifespread = 26,
        particlesize       = 0.5,
        particlesizespread = 1.5,
        particlespeed      = 0.5,
        particlespeedspread = 7.5,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.22,
        sizemod            = 1.0,
        texture            = [[whitelightb]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 8,
        heatfalloff        = 1.7,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 8,
        speed              = [[0, 1 0, 0]],
        texture            = [[brightblueexplo]],
      },
    },
  },


  ["genericshellexplosion-medium-lightning2"] = {
    blueelectricityspikes = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.65 0.7 0.9 0.037   0.5 0.6 0.9 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 1,
        particlelife       = 7,
        particlelifespread = 1,
        particlesize       = 2,
        particlesizespread = 6,
        particlespeed      = 0,
        particlespeedspread = 3.3,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.75,
        sizemod            = 1,
        texture            = [[whitelightb]],
        useairlos          = false,
      },
    },
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 6,
        heatfalloff        = 1.6,
        maxheat            = 12,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1.2,
        sizegrowth         = 7,
        speed              = [[0, 1 0, 0]],
        texture            = [[plasmaball]],
      },
    },
    -- electricstorm = {
    --  air                = true,
    --  class              = [[CExpGenSpawner]],
    --  count              = 1,
    --  ground             = true,
    --  water              = true,
    --  underwater         = true,
    --  properties = {
    --    delay              = [[10 r70]],
    --    explosiongenerator = [[custom:lightning_stormbolt]],
    --    pos                = [[-55 r70, 1, -55 r70]],
    --  },
    -- },
    flare = {
        air                = true,
        class              = [[CSimpleParticleSystem]],
        count              = 1,
        ground             = true,
        water              = true,
        underwater         = true,
        properties = {
            airdrag            = 0.8,
            colormap           = [[0.5 0.5 0.75 0.02   0.0 0.0 0.0 0.0]],
            directional        = true,
            emitrot            = 90,
            emitrotspread      = 0,
            emitvector         = [[0, 1, 0]],
            gravity            = [[0, 0, 0]],
            numparticles       = 1,
            particlelife       = 5,
            particlelifespread = 1,
            particlesize       = 48.5,
            particlesizespread = 1.5,
            particlespeed      = 0.1,
            particlespeedspread = 0.1,
            pos                = [[0, 0, 0]],
            sizegrowth         = -0.5,
            sizemod            = 1,
            texture            = [[flare2]],
            useairlos          = false,
        },
    },
    groundflash = {
      air                = true,
      flashalpha         = 0.04,
      flashsize          = 80,
      ground             = true,
      ttl                = 12,
      water              = true,
      underwater         = true,
      color = {
        [1]  = 0,
        [2]  = 0.4,
        [3]  = 1,
      },
    },
    electricity = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.86,
        colormap           = [[0 0 0 0.0	 1 1 1 0.04	 0 0 0 0.0 	 0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.04	 0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   1 1 1 0.03   0 0 0 0.0	 0 0 0 0.0    0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0   0 0 0 0.0  	 0 0 0 0.0  1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  1 1 1 0.02	  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0	  1 1 1 0.015	 0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  	 0 0 0 0.0 	 0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.012  0 0 0 0.0  ]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 5,
        emitvector         = [[0, 1.1, 0]],
        gravity            = [[0, 0.07, 0]],
        numparticles       = 1,
        particlelife       = 3,
        particlelifespread = 15,
        particlesize       = 0.6,
        particlesizespread = 1.5,
        particlespeed      = 0.5,
        particlespeedspread = 7.5,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.22,
        sizemod            = 1.0,
        texture            = [[whitelightb]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 3,
        heatfalloff        = 2,
        maxheat            = 10,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 8,
        speed              = [[0, 1 0, 0]],
        texture            = [[brightblueexplo]],
      },
    },
  },


  ["genericshellexplosion-large-lightning"] = {
    blueelectricityspikes = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.7 0.7 0.9 0.03   0.5 0.5 0.9 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 8,
        particlelife       = 8,
        particlelifespread = 4,
        particlesize       = 3,
        particlesizespread = 3,
        particlespeed      = 0,
        particlespeedspread = 13,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.7,
        sizemod            = 1,
        texture            = [[whitelightb]],
        useairlos          = false,
      },
    },
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 10,
        heatfalloff        = 1.2,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 12,
        speed              = [[0, 1 0, 0]],
        texture            = [[bluenovaexplo]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
    underwater         = true,
      properties = {
        airdrag            = 0.80,
        colormap           = [[0.6 0.6 1 0.017   0.6 0.6 1 0.011   0 0 0 0]],
        directional        = true,
        emitrot            = 30,
        emitrotspread      = 40,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 7,
        particlelife       = 4,
        particlelifespread = 6,
        particlesize       = 14,
        particlesizespread = 20,
        particlespeed      = 14.5,
        particlespeedspread = 14.4,
        pos                = [[0, 4, 0]],
        sizegrowth         = 1,
        sizemod            = 0.78,
        texture            = [[laser]],
        useairlos          = false,
      },
    },
    electricstorm = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 3,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        delay              = [[10 r40]],
        explosiongenerator = [[custom:lightning_storm_emp]],
        pos                = [[-50 r120, 20, -50 r120]],
      },
    },
    groundflash = {
      air                = true,
      flashalpha         = 0.13,
      flashsize          = 120,
      ground             = true,
      ttl                = 170,
      water              = true,
      underwater         = true,
      color = {
        [1]  = 0,
        [2]  = 0.4,
        [3]  = 1,
      },
    },
    shockwave = {
        class              = [[CSpherePartSpawner]],
            count              = 1,
            ground             = true,
            water              = true,
            underwater         = true,
            air                = true,
            properties = {
                alpha           = 0.3,
                ttl             = 8,
                expansionSpeed  = 9,
                color           = [[0.6, 0.60, 1]],
                --alwaysvisible      = true,
            },
    },
    grounddust = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.86,
        colormap           = [[0.25 0.25 0.5 0.1   0 0 0 0.0]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = -2,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.03, 0]],
        numparticles       = 6,
        particlelife       = 120,
        particlelifespread = 60,
        particlesize       = 26,
        particlesizespread = 26,
        particlespeed      = 6.5,
        particlespeedspread = 3,
        pos                = [[0, 100, 0]],
        sizegrowth         = 0.2,
        sizemod            = 1,
        texture            = [[smoke_puff]],
        --alwaysvisible      = true,
      },
    },
    electricity = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.85,
        colormap           = [[0 0 0 0.0	 1 1 1 0.04	 0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.04	 0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   1 1 1 0.03   0 0 0 0.0   0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0   0 0 0 0.0  	 0 0 0 0.0  1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  1 1 1 0.02	  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0	  1 1 1 0.015	 0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  	 0 0 0 0.0   1 1 1 0.012  0 0 0 0.0  ]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = -30,
        emitvector         = [[0, 1.15, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 4,
        particlelife       = 3,
        particlelifespread = 30,
        particlesize       = 2,
        particlesizespread = 6,
        particlespeed      = 0,
        particlespeedspread = 10,
        pos                = [[0, 1, 0]],
        sizegrowth         = -0.11,
        sizemod            = 1.0,
        texture            = [[whitelightb]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 8,
        heatfalloff        = 1.8,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1.5,
        sizegrowth         = 17,
        speed              = [[0, 1 0, 0]],
        texture            = [[brightblueexplo]],
      },
    },
  },


  ["genericshellexplosion-huge-lightning"] = {
    blueelectricityspikes = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.7 0.7 0.9 0.03   0.5 0.5 0.9 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 20,
        particlelife       = 8,
        particlelifespread = 4,
        particlesize       = 6,
        particlesizespread = 3,
        particlespeed      = 0,
        particlespeedspread = 13,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.7,
        sizemod            = 1,
        texture            = [[whitelightb]],
        useairlos          = false,
      },
    },
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 14,
        heatfalloff        = 1.1,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 2,
        sizegrowth         = 14,
        speed              = [[0, 1 0, 0]],
        texture            = [[bluenovaexplo]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
    underwater         = true,
      properties = {
        airdrag            = 0.81,
        colormap           = [[0.6 0.6 1 0.017   0.6 0.6 1 0.015   0 0 0 0]],
        directional        = true,
        emitrot            = 30,
        emitrotspread      = 40,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 10,
        particlelife       = 8,
        particlelifespread = 9,
        particlesize       = 30,
        particlesizespread = 28,
        particlespeed      = 15,
        particlespeedspread = 15,
        pos                = [[0, 4, 0]],
        sizegrowth         = 1,
        sizemod            = 0.78,
        texture            = [[laser]],
        useairlos          = false,
      },
    },
    electricstorm = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 7,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        delay              = [[10 r80]],
        explosiongenerator = [[custom:lightning_storm_emp]],
        pos                = [[-50 r120, 20, -50 r120]],
      },
    },
    groundflash = {
      air                = true,
      flashalpha         = 0.13,
      flashsize          = 130,
      ground             = true,
      ttl                = 200,
      water              = true,
      underwater         = true,
      color = {
        [1]  = 0,
        [2]  = 0.4,
        [3]  = 1,
      },
    },
    shockwave = {
        class              = [[CSpherePartSpawner]],
            count              = 1,
            ground             = true,
            water              = true,
            underwater         = true,
            air                = true,
            properties = {
                alpha           = 0.4,
                ttl             = 9,
                expansionSpeed  = 14,
                color           = [[0.6, 0.6, 1]],
                --alwaysvisible      = true,
            },
    },
    grounddust = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.85,
        colormap           = [[0.3 0.3 0.6 0.1   0 0 0 0.0]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = -2,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.03, 0]],
        numparticles       = 10,
        particlelife       = 180,
        particlelifespread = 60,
        particlesize       = 36,
        particlesizespread = 30,
        particlespeed      = 8,
        particlespeedspread = 3,
        pos                = [[0, 100, 0]],
        sizegrowth         = 0.2,
        sizemod            = 1,
        texture            = [[smoke_puff]],
        --alwaysvisible      = true,
      },
    },
    electricity = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.85,
        colormap           = [[0 0 0 0.0   1 1 1 0.04  0 0 0 0.0   0 0 0 0.0   1 1 1 0.04  0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   1 1 1 0.03   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   1 1 1 0.025   0 0 0 0.0  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  1 1 1 0.025  0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  1 1 1 0.02    0 0 0 0.0   0 0 0 0.0    0 0 0 0.0    1 1 1 0.015  0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0    0 0 0 0.0   1 1 1 0.012  0 0 0 0.0  ]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = -30,
        emitvector         = [[0, 1.15, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 10,
        particlelife       = 4,
        particlelifespread = 30,
        particlesize       = 2,
        particlesizespread = 6,
        particlespeed      = 0,
        particlespeedspread = 10,
        pos                = [[0, 1, 0]],
        sizegrowth         = -0.16,
        sizemod            = 1.0,
        texture            = [[whitelightb]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 3,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 10,
        heatfalloff        = 1.7,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 2.2,
        sizegrowth         = 20,
        speed              = [[0, 1 0, 0]],
        texture            = [[brightblueexplo]],
      },
    },
  },


  ["genericshellexplosion-splash-lightning"] = {
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 7,
        heatfalloff        = 1.6,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 4,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
    groundflash = {
      air                = true,
      flashalpha         = 0.12,
      flashsize          = 35,
      ground             = true,
      ttl                = 16,
      water              = true,
      underwater         = true,
      color = {
        [1]  = 0,
        [2]  = 0.4,
        [3]  = 1,
      },
    },
    electricity = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.89,
        colormap           = [[0 0 0 0.0	 1 1 1 0.04	 0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.04	 0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   1 1 1 0.03   0 0 0 0.0   0 0 0 0.0 	 0 0 0 0.0   1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0   0 0 0 0.0  	 0 0 0 0.0  1 1 1 0.025	 0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  1 1 1 0.02	  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0	  1 1 1 0.015	 0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  	 0 0 0 0.0   1 1 1 0.012  0 0 0 0.0  ]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 5,
        emitvector         = [[0, 1.1, 0]],
        gravity            = [[0, 0.1, 0]],
        numparticles       = 3,
        particlelife       = 3,
        particlelifespread = 24,
        particlesize       = 0.8,
        particlesizespread = 1.4,
        particlespeed      = 0.8,
        particlespeedspread = 3.5,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.4,
        sizemod            = 1.0,
        texture            = [[whitelightb]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 5,
        heatfalloff        = 1.7,
        maxheat            = 12,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 0.8,
        sizegrowth         = 5.5,
        speed              = [[0, 1 0, 0]],
        texture            = [[brightblueexplo]],
      },
    },
  },




  ["juno_stormbolt"] = {
    groundflash = {
      circlealpha        = 1,
      circlegrowth       = 0,
      flashalpha         = 0.12,
      flashsize          = 40,
      ttl                = 3,
      color = {
        [1]  = 0.66,
        [2]  = 0.66,
        [3]  = 1,
      },
    },
    lightningballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater		 = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0 0 0 0.01   0.66 1 0.5 0.01   0 0 0 0.01]],
        directional        = true,
        emitrot            = 80,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 3,
        particlelifespread = 0,
        particlesize       = 1.8,
        particlesizespread = 7.5,
        particlespeed      = 0.01,
        particlespeedspread = 0,
        pos                = [[-10 r10, 1.0, -10 r10]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[lightbw]],
      },
    },
  },
  ["genericshellexplosion-juno-lightning"] = {
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 11,
        heatfalloff        = 1.25,
        maxheat            = 22,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 15,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
    electricstorm = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 33,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        delay              = [[20 r1000]],
        explosiongenerator = [[custom:juno_stormbolt]],
        pos                = [[-500 r1000, 1, -500 r1000]],
      },
    },
    groundflash = {
      air                = true,
      flashalpha         = 0.28,
      flashsize          = [[330]],
      ground             = true,
      ttl                = 200,
      water              = true,
      underwater         = true,
      alwaysVisible=1,
      color = {
        [1]  = 0.4,
        [2]  = 1,
        [3]  = 0.2,
      },
    },
    electricity = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.85,
        colormap           = [[0 0 0 0.0	 0.66 1 0.5 0.04	 0 0 0 0.0 	 0 0 0 0.0   0.66 1 0.5 0.0     0 0 0 0.0 	 0 0 0 0.0   0.66 1 0.5 0.025	 0 0 0 0.0   0 0 0 0.0	 0.66 1 0.5 0.04    0 0 0 0.0 	 0 0 0 0.0   0.66 1 0.5 0.04    0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   0.66 1 0.5 0.03   0 0 0 0.0   0 0 0 0.0 	 0 0 0 0.0   0.66 1 0.5 0.025	 0 0 0 0.0  0 0 0 0.0   0 0 0 0.0  	 0 0 0 0.0  0.66 1 0.5 0.025	 0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  0.66 1 0.5 0.02	  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0	  0.66 1 0.5 0.015	 0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  	 0 0 0 0.0   0.66 1 0.5 0.012  0 0 0 0.0  ]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = -30,
        emitvector         = [[0, 1.15, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 18,
        particlelife       = 15,
        particlelifespread = 75,
        particlesize       = 0.8,
        particlesizespread = 2.3,
        particlespeed      = 0,
        particlespeedspread = 34,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.11,
        sizemod            = 1.0,
        texture            = [[whitelightb]],
      },
    },
  },
}


function tableMerge(t1, t2)
  for k,v in pairs(t2) do
    if type(v) == "table" then
      if type(t1[k] or false) == "table" then
        tableMerge(t1[k] or {}, t2[k] or {})
      else
        t1[k] = v
      end
    else
      t1[k] = v
    end
  end
  return t1
end

function deepcopy(orig)
  local orig_type = type(orig)
  local copy
  if orig_type == 'table' then
    copy = {}
    for orig_key, orig_value in next, orig, nil do
      copy[deepcopy(orig_key)] = deepcopy(orig_value)
    end
    setmetatable(copy, deepcopy(getmetatable(orig)))
  else -- number, string, boolean, etc
    copy = orig
  end
  return copy
end


-- add purple scavenger variants
local scavengerDefs = {}
for k,v in pairs(definitions) do
  scavengerDefs[k..'-purple'] = deepcopy(definitions[k])
end

local purpleEffects = {
  blueelectricityspikes = {
    properties = {
      colormap = [[0.7 0.2 0.9 0.03   0.5 0.15 0.9 0.01]],
    },
  },
  groundflash = {
    color = {
      [1]  = 0.66,
      [2]  = 0.2,
      [3]  = 1,
    },
  },
  electricity = {
    properties = {
      colormap = [[0 0 0 0.0	 0.5 1 0.7 0.04	 0 0 0 0.0 	 0 0 0 0.0   0.5 0. 0.7 0.0     0 0 0 0.0 	 0 0 0 0.0   0.66 0.3 1 0.025	 0 0 0 0.0   0 0 0 0.0	 0.66 0.2 1 0.04    0 0 0 0.0 	 0 0 0 0.0   0.66 0.25 1 0.04    0 0 0 0.12   0 0 0 0.0   0 0 0 0.0   0.66 0.2 1 0.03   0 0 0 0.0   0 0 0 0.0 	 0 0 0 0.0   0.66 0.4 1 0.025	 0 0 0 0.0  0 0 0 0.0   0 0 0 0.0  	 0 0 0 0.0  0.6 0.5 1 0.025	 0 0 0 0.0  0 0 0 0.0    0 0 0 0.0  0.66 0.25 1 0.02	  0 0 0 0.0   0 0 0 0.0    0 0 0 0.0	  0.66 0.15 1 0.015	 0 0 0 0.0   0 0 0 0.0   0 0 0 0.0   0 0 0 0.0    0 0 0 0.0  	 0 0 0 0.0   0.66 0.2 1 0.012  0 0 0 0.0  ]],
    },
  },
  lightningballs = {
    properties = {
      colormap = [[0 0 0 0.01   0.66 0.33 1 0.01   0 0 0 0.01]],
    },
  },

}
for defName, def in pairs(scavengerDefs) do
  for effect, effectParams in pairs(purpleEffects) do
    if scavengerDefs[defName][effect] then
      for param, paramValue in pairs(effectParams) do
        if scavengerDefs[defName][effect][param] then
          if param == 'properties' then
            for property,propertyValue in pairs(paramValue) do
              if scavengerDefs[defName][effect][param][property] then
                scavengerDefs[defName][effect][param][property] = propertyValue
              end
            end
          else
            scavengerDefs[defName][effect][param] = paramValue
          end
        end
      end
    end
  end
end

definitions = tableMerge(definitions, scavengerDefs)

return definitions