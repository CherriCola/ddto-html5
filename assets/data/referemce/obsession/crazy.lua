local bgObjects = {'dokiFarBG','dokiBG','dokiFront'}
function onCreate()
    makeLuaSprite('blackScreenYuri',nil,0,0)
    setObjectCamera('blackScreenYuri','other')
    makeGraphic('blackScreenYuri',screenWidth,screenHeight,'000000')

    makeLuaSprite('vignetteYuri','vignette',0,0)
    setObjectCamera('vignetteYuri','hud')
    precacheImage('doki/vignette')
end
function onStepHit()
    if curStep == 537 then
        addLuaSprite('blackScreenYuri',true)
        addLuaSprite('vignetteYuri',false)
        setProperty('boyfriend.x',getProperty('dad.x') + (250 + getProperty('boyfriend.positionArray[0]')))
        for bgAlpha = 1,#bgObjects do
            setProperty(bgObjects[bgAlpha]..'.alpha',0.2)
        end
    end
    if curStep == 567 then
        doTweenAlpha('byeBlackYuri','blackScreenYuri',0,0.5,'linear')
    end
    if curStep == 843 then
        addLuaSprite('blackScreenYuri',false)
        setObjectCamera('blackScreenYuri','hud')
        setProperty('blackScreenYuri.alpha',1)
    end
end
function onTweenCompleted(tag)
    if tag == 'byeBlackYuri' then
        removeLuaSprite('blackScreenYuri',false)
    end
end