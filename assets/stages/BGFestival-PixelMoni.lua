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
	
	
	makeLuaSprite('FarBack', 'stage festival/FarBack', -700, -500);
	setLuaSpriteScrollFactor('FarBack', 1, 0.9);
	scaleObject('FarBack', 1.6, 1.6);
	-- sprites that only load if Low Quality is turned off

		makeAnimatedLuaSprite('lights_back', 'stage festival/lights_back',210, 130);
        setLuaSpriteScrollFactor('lights_back', 1, 0.9);		
        scaleObject('lights_back', 1.6, 1.6);
		
		makeAnimatedLuaSprite('sayori', 'stage festival/sayori',0, 250);
        setLuaSpriteScrollFactor('sayori', 1, 0.9);		
        scaleObject('sayori', 0.7, 0.7);
		
		
		makeAnimatedLuaSprite('protag', 'stage festival/protag',400, 120);
        setLuaSpriteScrollFactor('protag', 1, 0.9);		
        scaleObject('protag', 0.7, 0.7);
		
		makeAnimatedLuaSprite('natsuki', 'stage festival/natsuki',1160, 300);
        setLuaSpriteScrollFactor('natsuki', 1, 0.9);		
        scaleObject('natsuki', 0.7, 0.7);
		makeAnimatedLuaSprite('yuri', 'stage festival/yuri',1000, 150);
        setLuaSpriteScrollFactor('yuri', 1, 0.9);	
        scaleObject('yuri', 0.7, 0.7);

		
		makeAnimatedLuaSprite('lights_front', 'stage festival/lights_front',-1305, 700);
        setLuaSpriteScrollFactor('lights_front',1, 0.9);		
        scaleObject('lights_front', 1.5, 1);
		setPropertyLuaSprite('lights_front', 'flipX', true);
   
   	makeLuaSprite('weebSky2','school153/weebSky2',-230, -20);
	setLuaSpriteScrollFactor('weebSky2', 0.6,0.90);
	scaleObject('weebSky2', 9.3, 6);
	makeLuaSprite('weebSchool2', 'school153/weebSchool2', -270, 0);
	setLuaSpriteScrollFactor('weebSchool2', 0.6,0.90);
	scaleObject('weebSchool2',6.3, 7);
	makeLuaSprite('weebStreet2', 'school153/weebStreet2',-270, 0);
	setLuaSpriteScrollFactor('weebStreet2',  0.95, 0.95);
	scaleObject('weebStreet2', 7.3, 7);
	
	makeLuaSprite('weebTreesBack2','school153/weebTreesBack2',-270, -20)
	setLuaSpriteScrollFactor('weebTreesBack2', 0.85, 0.85);
	scaleObject('weebTreesBack2', 6.3, 7);
	makeAnimatedLuaSprite('weebTrees2', 'school153/weebTrees2',-250, -20);
    setLuaSpriteScrollFactor('weebTrees2', 0.85, 0.85);		
	scaleObject('weebTrees2',6.3, 7)
	makeAnimatedLuaSprite('petals2', 'school153/petals2',-250, 200);
    setLuaSpriteScrollFactor('petals2', 0.85, 0.85);		
	scaleObject('petals2',7.3, 7);
	setProperty('weebSky2.antialiasing', false);
	setProperty('weebSchool2.antialiasing', false);
	setProperty('weebTreesBack2.antialiasing', false);
	setProperty('petals2.antialiasing', false);
    setProperty('weebStreet2.antialiasing', false);
   
	

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




	
	addLuaSprite('weebSky2', false);
	addLuaSprite('weebSchool2', false);
	addLuaSprite('weebStreet2', false);
	addLuaSprite('weebTreesBack2', false);
	addLuaSprite('weebTrees2', false);
	addAnimationByPrefix('weebTrees2','idle', 'weebTrees2 idle',12,true);
	addLuaSprite('petals2', false);
	addAnimationByPrefix('petals2','idle', 'PETALS ALL',24,true);
	addLuaSprite('bgFreaks2', false);
	addAnimationByPrefix('bgFreaks2','idle', 'BG girls group',24,true);
	setProperty('weebSky2.visible', false)
	setProperty('weebSchool2.visible', false)
	setProperty('weebStreet2.visible', false)
	setProperty('weebTreesBack2.visible', false)
	setProperty('weebTrees2.visible', false)
	setProperty('petals2.visible', false)
    setProperty('bgFreaks2.visible', false)

	
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
	

		if value1 == '2' then
    setProperty('weebSky2.visible', true);
	setProperty('weebSchool2.visible', true);
	setProperty('weebStreet2.visible', true);
	setProperty('weebTreesBack2.visible', true);
	setProperty('weebTrees2.visible', true);
	setProperty('petals2.visible', true);
	setProperty('MainBG.visible', false);
	setProperty('lights_back.visible', false);
	setProperty('sayori.visible', false);
	setProperty('yuri.visible', false);
	setProperty('protag.visible', false);
	setProperty('monika.visible', false);
    setProperty('natsuki.visible', false);
	 setProperty('DesksFestival.visible', false);
	  setProperty('lights_front.visible', false);
	  setProperty('FestivalBanner.visible', false);
	
		end

		if value1 == '1' then
	setProperty('weebSky2.visible', false);
	setProperty('weebSchool2.visible', false);
	setProperty('weebStreet2.visible', false);
	setProperty('weebTreesBack2.visible', false);
	setProperty('weebTrees2.visible', false);
	setProperty('petals2.visible', false);
 	setProperty('MainBG.visible', true);
	setProperty('lights_back.visible', true);
	setProperty('sayori.visible', true);
	setProperty('yuri.visible', true);
	setProperty('protag.visible', true);
	setProperty('monika.visible', true);
    setProperty('natsuki.visible', true);
	 setProperty('DesksFestival.visible', true);
	  setProperty('lights_front.visible', true);
	  setProperty('FestivalBanner.visible', true);
	
		end
		
	end
end