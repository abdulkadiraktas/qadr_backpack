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
        pos = vector3(-0.5, 0.0, 0.08),
        rot = vector3(-80.0, 0.0, -90.0),
        fixedRot = true,
        softping = true,
        vertex = 2,
        collision = true
    },
    p_ambpack02x={
        weight = 3.0,
        pos = vector3(-0.5, 0.0, 0.08),
        rot = vector3(-80.0, 0.0, -90.0),
        fixedRot = true,
        softping = true,
        vertex = 2,
        collision = true
    },
    p_ambpack05x={
        weight = 2.0,
        pos = vector3(-0.5, 0.0, 0.08),
        rot = vector3(-80.0, 0.0, -90.0),
        fixedRot = true,
        softping = true,
        vertex = 2,
        collision = true
    },
    p_ambpack04x={
        weight = 1.0,
        pos = vector3(-0.5, 0.0, 0.08),
        rot = vector3(-80.0, 0.0, -90.0),
        fixedRot = true,
        softping = true,
        vertex = 2,
        collision = true
    }
}