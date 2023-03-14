function onCreate()
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('skybox','doki/ynm/skybox',-780,-600)
    setScrollFactor('skybox',0.9,0.9)
    scaleObject('skybox',1.3,1.3)
    addLuaSprite('skybox')

    makeLuaSprite('bg3','doki/ynm/bg3',-780,-600)
    setScrollFactor('bg3',0.9,0.9)
    scaleObject('bg3',1.3,1.3)
    addLuaSprite('bg3')

    makeLuaSprite('bg2','doki/ynm/bg2',-780,-600)
    setScrollFactor('bg2',0.9,0.9)
    scaleObject('bg2',1.3,1.3)
    addLuaSprite('bg2')

    makeLuaSprite('bg1','doki/ynm/bg1',-780,-600)
    setScrollFactor('bg1',0.9,0.9)
    scaleObject('bg1',1.3,1.3)
    addLuaSprite('bg1')

    makeLuaSprite('bg','doki/ynm/bg',-780,-600)
    setScrollFactor('bg',0.9,0.9)
    scaleObject('bg',1.3,1.3)
    addLuaSprite('bg')

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
end