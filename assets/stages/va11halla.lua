function onCreate()
    makeAnimatedLuaSprite('BarAds', 'doki/va11halla/BarAds',0,0)
    addAnimationByPrefix('BarAds', 'loop', 'BarAdvert', 24, true);
    setLuaSpriteScrollFactor('BarAds',0.9,0.9)
    addLuaSprite('BarAds')
    scaleObject('barbg',6,6)
    setProperty('BarAds.antialiasing', false);

    makeLuaSprite('barbg','doki/va11halla/barbg',0,0)
    setScrollFactor('barbg',0.9,0.9)
    scaleObject('barbg',6,6)
    addLuaSprite('barbg')
    setProperty('barbg.antialiasing', false);

    makeAnimatedLuaSprite('Dana', 'doki/va11halla/Dana',700,100)
    addAnimationByPrefix('Dana', 'loop', 'dana', 24, true);
    setLuaSpriteScrollFactor('Dana',0.9,0.9)
    addLuaSprite('Dana')
    scaleObject('Dana',6,6)
    setProperty('Dana.antialiasing', false);

    makeLuaSprite('barbg2','doki/va11halla/barbg2',0,0)
    setScrollFactor('barbg2',0.9,0.9)
    scaleObject('barbg2',6,6)
    addLuaSprite('barbg2')
    setProperty('barbg2.antialiasing', false);

    makeAnimatedLuaSprite('Alma', 'doki/va11halla/Alma',1300,0)
    addAnimationByPrefix('Alma', 'loop', 'alma', 24, true);
    setLuaSpriteScrollFactor('Alma',0.9,0.9)
    addLuaSprite('Alma')
    scaleObject('Alma',6,6)
    setProperty('Alma.antialiasing', false);
    

    makeAnimatedLuaSprite('dorth', 'doki/va11halla/dorth',75,225)
    addAnimationByPrefix('dorth', 'loop', 'dortohy_left', 24, true);
    setLuaSpriteScrollFactor('dorth',0.9,0.9)
    addLuaSprite('dorth')
    scaleObject('dorth',6,6)
    setProperty('dorth.antialiasing', false);
end