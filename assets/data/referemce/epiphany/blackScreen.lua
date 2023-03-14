function onCreate()
    makeLuaSprite('blackScreenMonika',nil,0,0)
    setObjectCamera('blackScreenMonika','hud')
    makeGraphic('blackScreenMonika',screenWidth,screenHeight,'000000')
    setProperty('blackScreenMonika.alpha',0)
end
function onStepHit()
    if curStep == 3148 then
        doTweenAlpha('byeP2Icon','iconP2',0,0.8,'linear')
    end
    if curStep == 3161 then
        addLuaSprite('blackScreenMonika',false)
        doTweenAlpha('helloScreenMonika','blackScreenMonika',1,0.8,'linear')
    end
end