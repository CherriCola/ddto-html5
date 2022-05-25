function onCreate()
	-- background shit
	makeLuaSprite('MainBG', 'stage ddlc/DDLCbg', -700, -490);
	setLuaSpriteScrollFactor('MainBG', 1, 0.9);
    scaleObject('MainBG', 1.6, 1.6);

    makeLuaSprite('DesksFestival', 'stage ddlc/DesksFront', -700, -500);
	setLuaSpriteScrollFactor('DesksFestival', 1, 0.9);
	scaleObject('DesksFestival', 1.6, 1.6);
	
	
	makeLuaSprite('FarBack', 'stage festival/FarBack', -700, -500);
	setLuaSpriteScrollFactor('FarBack', 1, 0.9);
	scaleObject('FarBack', 1.6, 1.6);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		

   
	end

	addLuaSprite('MainBG', false);

	addLuaSprite('lights_back', false); 
	addAnimationByPrefix('lights_back', 'idle', 'lights back', 24, true);
	addLuaSprite('sayori', false); 
	addAnimationByPrefix('sayori', 'idle', 'Sayori BG', 24, true);
	addLuaSprite('yuri', false); 
	addAnimationByPrefix('yuri', 'idle', 'Yuri BG', 24, true);
	addLuaSprite('protag', false); 
	addAnimationByPrefix('protag', 'idle', 'Protag-kun BG', 24, true);
	addLuaSprite('monika', false); 
	addAnimationByPrefix('monika', 'idle', 'Moni BG', 24, true);
	addLuaSprite('natsuki', false); 
	addAnimationByPrefix('natsuki', 'idle', 'Natsu BG', 24, true);
	addLuaSprite('DesksFestival', false);
	addLuaSprite('lights_front', false); 
	addAnimationByPrefix('lights_front', 'idle', 'Lights front', 24, true);
        addLuaSprite('FestivalBanner', false); 




	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end