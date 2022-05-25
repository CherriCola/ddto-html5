function onCreate()
	-- background shit
	makeLuaSprite('justmonika', 'justmonika', -600, -300);
	setLuaSpriteScrollFactor('justmonika', 0.9, 0.9);
	
	makeLuaSprite('justmonikafront', 'justmonikafront', -650, 600);
	setLuaSpriteScrollFactor('justmonikafront', 0.9, 0.9);
	scaleObject('justmonikafront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('nothing', 'nothing', -125, -100);
		setLuaSpriteScrollFactor('nothing', 0.9, 0.9);
		scaleObject('nothing', 1.1, 1.1);
		
		makeLuaSprite('nothing', 'nothing', 1225, -100);
		setLuaSpriteScrollFactor('nothing', 0.9, 0.9);
		scaleObject('nothing', 1.1, 1.1);
		setPropertyLuaSprite('nothing', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains3', 'stagecurtains3', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains3', 1.3, 1.3);
		scaleObject('stagecurtains3', 0.9, 0.9);
	end

	addLuaSprite('justmonika', false);
	addLuaSprite('justmonikafront', false);
	addLuaSprite('nothing', false);
	addLuaSprite('nothing', false);
	addLuaSprite('stagecurtains3', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end