function onCreate()
    makeLuaSprite('musicroomBG','doki/musicroom/Music_RoomLNF',-780,-600)
    setScrollFactor('musicroomBG',0.9,0.9)
    scaleObject('musicroomBG',1.7,1.7)
    addLuaSprite('musicroomBG')

    makeLuaSprite('RoomLight','doki/musicroom/Music_RoomLight',0,0)
    setScrollFactor('RoomLight',0.9,0.9)
    scaleObject('RoomLight',1.7,1.7)
    setObjectCamera('RoomLight','hud')
    addLuaSprite('RoomLight')
end