function onCreate()
	-- background shit
	makeLuaSprite('MainBG', 'stage festival/MainBG', -700, -490);
	setLuaSpriteScrollFactor('MainBG', 1, 0.9);
    scaleObject('MainBG', 1.6, 1.6);
	makeLuaSprite('FestivalBanner', 'stage festival/FestivalBanner', -700, -440);
	setLuaSpriteScrollFactor('FestivalBanner', 1, 0.9);
	scaleObject('FestivalBanner', 1.6, 1.6);
    makeLuaSprite('DesksFestival', 'stage festival/DesksFestival', -700, -500);
	setLuaSpriteScrollFactor('DesksFestival', 1, 0.9);
	scaleObject('DesksFestival', 1.6, 1.6);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeAnimatedLuaSprite('lights_back', 'stage festival/lights_back',210, 130);
        setLuaSpriteScrollFactor('lights_back', 1, 0.9);		
        scaleObject('lights_back', 1.6, 1.6);
		
		makeAnimatedLuaSprite('yuri', 'stage festival/yuri',0, 150);
        setLuaSpriteScrollFactor('yuri', 1, 0.9);		
        scaleObject('yuri', 0.7, 0.7);
		
		makeAnimatedLuaSprite('protag', 'stage festival/protag',400, 120);
        setLuaSpriteScrollFactor('protag', 1, 0.9);		
        scaleObject('protag', 0.7, 0.7);
		
		makeAnimatedLuaSprite('natsuki', 'stage festival/natsuki',1000, 300);
        setLuaSpriteScrollFactor('natsuki', 1, 0.9);		
        scaleObject('natsuki', 0.7, 0.7);
		
		makeAnimatedLuaSprite('monika', 'stage festival/monika',1160, 160);
        setLuaSpriteScrollFactor('monika', 1, 0.9);		
        scaleObject('monika', 0.7, 0.7);
		
		makeAnimatedLuaSprite('lights_front', 'stage festival/lights_front',-1305, 700);
        setLuaSpriteScrollFactor('lights_front',1, 0.9);		
        scaleObject('lights_front', 1.5, 1);
		setPropertyLuaSprite('lights_front', 'flipX', true);
   
	end

	addLuaSprite('MainBG', false);
	addLuaSprite('FestivalBanner', false);
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