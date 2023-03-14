function onCreate()
    makeLuaSprite('bg','doki/wilt/bg',-1200,-900)
    setScrollFactor('bg',0.9,0.9)
    scaleObject('bg',200.0,200.0)
    addLuaSprite('bg')

    makeLuaSprite('pocBackground','doki/credits/pocBackground',-780,-600)
    setScrollFactor('pocBackground',0.9,0.9)
    scaleObject('pocBackground',1.7,1.7)
    addLuaSprite('pocBackground')

    makeLuaSprite('bg2','doki/wilt/bg2',-780,-600)
    setScrollFactor('bg2',0.9,0.9)
    scaleObject('bg2',1.7,1.7)
    addLuaSprite('bg2')

    makeLuaSprite('bg1','doki/wilt/bg1',-780,-600)
    setScrollFactor('bg1',0.9,0.9)
    scaleObject('bg1',1.7,1.7)
    addLuaSprite('bg1')

    makeLuaSprite('p1','doki/wilt/p1',-780,-600)
    setScrollFactor('p1',0.9,0.9)
    scaleObject('p1',1.7,1.7)
    addLuaSprite('p1')
end