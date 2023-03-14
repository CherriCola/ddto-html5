function onCreate()
    makeLuaSprite('musicroomBG','doki/musicroom/Music_Room',-780,-600)
    setScrollFactor('musicroomBG',0.9,0.9)
    scaleObject('musicroomBG',1.7,1.7)
    addLuaSprite('musicroomBG')

    makeLuaSprite('RoomLight','doki/musicroom/Music_RoomLight',0,0)
    setScrollFactor('RoomLight',0.9,0.9)
    scaleObject('RoomLight',1.7,1.7)
    setObjectCamera('RoomLight','hud')
    addLuaSprite('RoomLight')

    makeLuaSprite('musicroomFG','doki/musicroom/Music_Room_FG',-825,-600)
    setScrollFactor('musicroomFG',0.9,0.9)
    scaleObject('musicroomFG',1.7,1.7)
    addLuaSprite('musicroomFG')
end