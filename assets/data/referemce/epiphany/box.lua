function onCreate()
    makeAnimatedLuaSprite('deletingMonikaBox','doki/bigmonika/bigika_delete',410,455)
    setObjectCamera('deletingMonikaBox','hud')
    scaleObject('deletingMonikaBox',0.82,0.82)
    addAnimationByPrefix('deletingMonikaBox','deleting','PopUpAnim',24,false)
    precacheImage('doki/bigmonika/bigika_delete')
end
function onStepHit()
    if curStep == 2592 then
        addLuaSprite('deletingMonikaBox')
    end
end