function onCreate()
    makeLuaSprite('bg','doki/wilt/bg',-1200,-900)
    setScrollFactor('bg',0.9,0.9)
    scaleObject('bg',200.0,200.0)
    addLuaSprite('bg')

    makeLuaSprite('pocBackground','doki/credits/pocBackground',-780,-600)
    setScrollFactor('pocBackground',0.9,0.9)
    scaleObject('pocBackground',1.7,1.7)
    addLuaSprite('pocBackground')
end