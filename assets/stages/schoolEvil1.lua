function onCreate()
  makeLuaSprite('bg','FinaleBG_1',0,0)
  scaleObject('bg',2,2)
  makeLuaSprite('bg2','FinaleBG_2',-100,-25)
  scaleObject('bg2',2,2)
  makeLuaSprite('fg','FinaleFG',-100,-125)
  scaleObject('fg',1.5,1.7)
  addLuaSprite('bg',false)
  addLuaSprite('bg2',false)
  addLuaSprite('fg',false)
  close(true);
  end