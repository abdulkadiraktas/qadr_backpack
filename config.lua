tempBackPacks = {}
tempBackPack = nil
stashWweight = 0
qadr_backpacks = {
    config = {
        useWeight = true,
        -- Bu değeri true olarak ayarlarsanız, çantanın ağırlığı hesaplanır ve karakteriniz ağırlığa göre yavaşlar.
        -- EN : If you set this value to true, the weight of the backpack is calculated and your character slows down according to the weight.
    },
    p_ambpack01x={
        weight = 4.0,
        pos = vector3(0, -0.18, -0.59),
        rot = vector3( 0.0, 0.0, 0.0),
        fixedRot = true,
        boneIndex = 432,
        softping = true,
        vertex = 2,
        collision = true
    },
    p_ambpack02x={
        weight = 3.0,
        pos = vector3(0.0,-0.26,0.4),
        rot = vector3( 0.0, 180.0, 0.0),
        fixedRot = true,
        boneIndex = 278,
        softping = true,
        vertex = 2,
        collision = true
    },
    p_ambpack05x={
        weight = 2.0,
        pos = vector3(0.0,-0.26,0.4),
        rot = vector3( 0.0, 180.0, 0.0),
        fixedRot = true,
        boneIndex = 278,
        softping = true,
        vertex = 2,
        collision = true
    },
    p_ambpack04x={
        weight = 1.0,
        pos = vector3(-0.16, -0.18, 0.35),
        rot = vector3(-90, 0, 180),
        fixedRot = true,
        boneIndex = 278,
        softping = true,
        vertex = 2,
        collision = true
    }
}
