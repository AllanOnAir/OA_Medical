Parts = {
    [0]         = 'NONE',               --  [0]     = 'NONE',
    [31085]     = 'HEAD',               --  [31085] = 'HEAD',
    [31086]     = 'HEAD',               --  [31086] = 'HEAD',
    [39317]     = 'HEAD',               --  [39317] = 'NECK',
    [57597]     = 'TORSO',              --  [57597] = 'SPINE',
    [23553]     = 'TORSO',              --  [23553] = 'SPINE',
    [24816]     = 'TORSO',              --  [24816] = 'SPINE',
    [24817]     = 'TORSO',              --  [24817] = 'SPINE',
    [24818]     = 'TORSO',              --  [24818] = 'SPINE',
    [10706]     = 'TORSO',              --  [10706] = 'UPPER_BODY',
    [64729]     = 'TORSO',              --  [64729] = 'UPPER_BODY',
    [11816]     = 'TORSO',              --  [11816] = 'LOWER_BODY',
    [45509]     = 'LARM',               --  [45509] = 'LARM',
    [61163]     = 'LARM',               --  [61163] = 'LARM',
    [18905]     = 'LARM',               --  [18905] = 'LHAND',
    [4089]      = 'LARM',               --  [4089] = 'LFINGER',
    [4090]      = 'LARM',               --  [4090] = 'LFINGER',
    [4137]      = 'LARM',               --  [4137] = 'LFINGER',
    [4138]      = 'LARM',               --  [4138] = 'LFINGER',
    [4153]      = 'LARM',               --  [4153] = 'LFINGER',
    [4154]      = 'LARM',               --  [4154] = 'LFINGER',
    [4169]      = 'LARM',               --  [4169] = 'LFINGER',
    [4170]      = 'LARM',               --  [4170] = 'LFINGER',
    [4185]      = 'LARM',               --  [4185] = 'LFINGER',
    [4186]      = 'LARM',               --  [4186] = 'LFINGER',
    [26610]     = 'LARM',               --  [26610] = 'LFINGER',
    [26611]     = 'LARM',               --  [26611] = 'LFINGER',
    [26612]     = 'LARM',               --  [26612] = 'LFINGER',
    [26613]     = 'LARM',               --  [26613] = 'LFINGER',
    [26614]     = 'LARM',               --  [26614] = 'LFINGER',
    [58271]     = 'LLEG',               --  [58271] = 'LLEG',
    [63931]     = 'LLEG',               --  [63931] = 'LLEG',
    [2108]      = 'LLEG',               --  [2108] = 'LFOOT',
    [14201]     = 'LLEG',               --  [14201] = 'LFOOT',
    [40269]     = 'RARM',               --  [40269] = 'RARM',
    [28252]     = 'RARM',               --  [28252] = 'RARM',
    [57005]     = 'RARM',               --  [57005] = 'RHAND',
    [58866]     = 'RARM',               --  [58866] = 'RFINGER',
    [58867]     = 'RARM',               --  [58867] = 'RFINGER',
    [58868]     = 'RARM',               --  [58868] = 'RFINGER',
    [58869]     = 'RARM',               --  [58869] = 'RFINGER',
    [58870]     = 'RARM',               --  [58870] = 'RFINGER',
    [64016]     = 'RARM',               --  [64016] = 'RFINGER',
    [64017]     = 'RARM',               --  [64017] = 'RFINGER',
    [64064]     = 'RARM',               --  [64064] = 'RFINGER',
    [64065]     = 'RARM',               --  [64065] = 'RFINGER',
    [64080]     = 'RARM',               --  [64080] = 'RFINGER',
    [64081]     = 'RARM',               --  [64081] = 'RFINGER',
    [64096]     = 'RARM',               --  [64096] = 'RFINGER',
    [64097]     = 'RARM',               --  [64097] = 'RFINGER',
    [64112]     = 'RARM',               --  [64112] = 'RFINGER',
    [64113]     = 'RARM',               --  [64113] = 'RFINGER',
    [36864]     = 'RLEG',               --  [36864] = 'RLEG',
    [51826]     = 'RLEG',               --  [51826] = 'RLEG',
    [20781]     = 'RLEG',               --  [20781] = 'RFOOT',
    [52301]     = 'RLEG'                --  [52301] = 'RFOOT'
}

WeaponClasses = {
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

InjuryType = {
    [1]     = {{type = "Blessure par balle", temporaire = false}},
    [2]     = {{type = "Blessure par balle", temporaire = false}},
    [3]     = {{type = "Blessure par balle", temporaire = false}},
    [4]     = {{type = "Blessure par balle", temporaire = false}},
    [5]     = {{type = "Coupure", temporaire = false}},
    [6]     = {{type = "Equimause", temporaire = true}},
    [7]     = {{type = "Equimause", temporaire = true}},
    [8]     = {{type = "Brulure 70e degrer", temporaire = true}},
    [9]     = {{type = "Brulure 70e degrer", temporaire = true}},
    [10]    = {{type = "Brulure 70e degrer", temporaire = true}},
    [11]    = {{type = "Equimause", temporaire = true}},
    [12]    = {{type = "Morsure", temporaire = false}},
}




Weapons = {
    --[[ Small Caliber ]]--
    [GetHashKey('WEAPON_PISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_COMBATPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_APPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_COMBATPDW')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_MACHINEPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_MICROSMG')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_MINISMG')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_PISTOL_MK2')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_SNSPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_SNSPISTOL_MK2')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_VINTAGEPISTOL')] = WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]]--
    [GetHashKey('WEAPON_ADVANCEDRIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_ASSAULTSMG')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_BULLPUPRIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_CARBINERIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_CARBINERIFLE_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_COMPACTRIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_DOUBLEACTION')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_GUSENBERG')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_HEAVYPISTOL')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_MARKSMANPISTOL')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_PISTOL50')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_REVOLVER')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_REVOLVER_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SMG')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SMG_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SPECIALCARBINE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]]--
    [GetHashKey('WEAPON_ASSAULTRIFLE')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_COMBATMG')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_COMBATMG_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_HEAVYSNIPER')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MARKSMANRIFLE')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MG')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MINIGUN')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MUSKET')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_RAILGUN')] = WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]]--
    [GetHashKey('WEAPON_ASSAULTSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_BULLUPSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_DBSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_HEAVYSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_PUMPSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_SWEEPERSHOTGUN')] = WeaponClasses['SHOTGUN'],

    --[[ Animals ]]--
    [4194021054] = WeaponClasses['WILDLIFE'], -- Animal
    [148160082] = WeaponClasses['WILDLIFE'], -- Cougar
    [1223143800] = WeaponClasses['WILDLIFE'], -- Barbed Wire
    
    --[[ Cutting Weapons ]]--
    [GetHashKey('WEAPON_BATTLEAXE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_BOTTLE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_DAGGER')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_HATCHET')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_KNIFE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_MACHETE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_SWITCHBLADE')] = WeaponClasses['CUTTING'],

    --[[ Light Impact ]]--
    [3794977420] = WeaponClasses['WILDLIFE'], -- Garbage Bag
    [2294779575] = WeaponClasses['WILDLIFE'], -- Briefcase
    [28811031] = WeaponClasses['WILDLIFE'], -- Briefcase 2
    [GetHashKey('WEAPON_BALL')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_FLASHLIGHT')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_KNUCKLE')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_NIGHTSTICK')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_SNOWBALL')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_UNARMED')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_PARACHUTE')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_NIGHTVISION')] = WeaponClasses['LIGHT_IMPACT'],
    
    --[[ Heavy Impact ]]--
    [GetHashKey('WEAPON_BAT')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_CROWBAR')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_FIREEXTINGUISHER')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_FIRWORK')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_GOLFLCUB')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_HAMMER')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_PETROLCAN')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_POOLCUE')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_WRENCH')] = WeaponClasses['HEAVY_IMPACT'],
    
    --[[ Explosives ]]--
    [539292904] = WeaponClasses['EXPLOSIVE'], -- Explosion
    [GetHashKey('WEAPON_GRENADE')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_COMPACTLAUNCHER')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_HOMINGLAUNCHER')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_PIPEBOMB')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_PROXMINE')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_RPG')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_STICKYBOMB')] = WeaponClasses['EXPLOSIVE'],
    
    --[[ Other ]]--
    [3452007600] = WeaponClasses['OTHER'], -- Fall
    [3425972830] = WeaponClasses['OTHER'], -- Water Cannon
    [133987706] = WeaponClasses['OTHER'], -- Rammed
    [2741846334] = WeaponClasses['OTHER'], -- Ran Over
    [341774354] = WeaponClasses['OTHER'], -- Heli Crash
    [GetHashKey('WEAPON_STUNGUN')] = WeaponClasses['OTHER'],
    
    --[[ Fire ]]--
    [2461879995] = WeaponClasses['FIRE'], -- Electric Fence 
    [3750660587] = WeaponClasses['FIRE'], -- Fire
    [GetHashKey('WEAPON_MOLOTOV')] = WeaponClasses['FIRE'],
    [GetHashKey('WEAPON_FLARE')] = WeaponClasses['FIRE'],
    [GetHashKey('WEAPON_FLAREGUN')] = WeaponClasses['FIRE'],

    --[[ Suffocate ]]--
    [4284007675] = WeaponClasses['SUFFOCATING'], -- Drowning
    [1936677264] = WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [910830060] = WeaponClasses['SUFFOCATING'], -- Exhaust
    [GetHashKey('WEAPON_BZGAS')] = WeaponClasses['SUFFOCATING'],
    [GetHashKey('WEAPON_SMOKEGRENADE')] = WeaponClasses['SUFFOCATING'],
}

