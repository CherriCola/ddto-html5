function onEvent(name, value1, value2)
	if name == 'Change Icon' then
		local contents = {idk = {}, rgb = {}, result}
		contents.idk = Split(value1, ',')
		contents.rgb = Split(value2, ',')

		if isSurroundedWith(contents.idk[2], '"') then
			local charName = string.gsub(contents.idk[2], '"', '')
			contents.idk[2] = getProperty(charName .. '.healthIcon')
			contents.result = rgbToHex(getProperty(charName .. '.healthColorArray'))
		else
			if contents.rgb[1] == 'rgb' then
				contents.result = rgbToHex({tonumber(contents.rgb[2]), tonumber(contents.rgb[3]), tonumber(contents.rgb[4])})
			elseif contents.rgb[1] == 'hex' then
				contents.result = contents.rgb[2]
			else
				debugPrint('Color type "' .. contents.rgb[1] .. '" is invalid.')
			end
		end

		changeIcon(contents.idk[1], contents.idk[2], contents.result)
	end
end

---@param str string
---@param surrounder string
---@return boolean
function isSurroundedWith(str, surrounder)
	if stringStartsWith(str, surrounder) and stringEndsWith(str, surrounder) then
		return true
	else
		return false
	end
	return
end

---@param character string
---@param icon string
---@param color RGBorHEX
function changeIcon(character, icon, color)
	if character == 'bf' or character == 'dad' then
		setHealthBarColors((character == 'dad' and color or rgbToHex(getProperty('dad.healthColorArray'))), (character == 'bf' and color or rgbToHex(getProperty('boyfriend.healthColorArray'))))
		runHaxeCode('game.icon' .. (character == 'dad' and 'P2' or character == 'bf' and 'P1') .. '.changeIcon("' .. icon .. '")')
		-- setProperty((character == 'bf' and 'boyfriend' or 'dad') .. '.healthIcon', icon)
		setOnLuas((character == 'bf' and 'boyfriend' or 'dad') .. 'IconName', icon)
	else
		debugPrint('Character type "' .. character .. '" is invalid.')
	end
end

---@param isP1 boolean
---@return yourMom- not really
local function fuckChangeCharCaseShit(isP1)
	if isP1 then
		setOnLuas('boyfriendIconName', getProperty('boyfriend.healthIcon'))
	else
		setOnLuas('dadIconName', getProperty('dad.healthIcon'))
	end
	-- return yourMom
end

function onCreatePost()
	fuckChangeCharCaseShit(false)
	fuckChangeCharCaseShit(true)
end

function onEvent(name, value1)
	if name == 'Change Character' then
		if value1 == 'gf' or value1 == 'girlfriend' or value1 == '1' then
			-- Blank on Purpose
		elseif value1 == 'dad' or value1 == 'opponent' or value1 == '0' then
			fuckChangeCharCaseShit(false)
		else
			fuckChangeCharCaseShit(true)
		end
	end
end

---@param varName string
---@param valueInput string
function setOnLuas(varName, valueInput)
	-- MAYO YOU'RE THE BEST, HOLY SHIT!
	if not setOnLuas_init then --makes the var holder
		setOnLuas_init = true
		runHaxeCode('setVar("setOnLuas_varHolder", null);')
	end
	setProperty('setOnLuas_varHolder', {varName, valueInput}) --sets the temp shit
	--actually set the whatever
	runHaxeCode("game.setOnLuas(getVar('setOnLuas_varHolder')[0], getVar('setOnLuas_varHolder')[1]);")
	setProperty('setOnLuas_varHolder', nil) --go away DIE DIE DIE!!!!!!!!
	--if its onCreate then it doesnt work because the lua file wouldn't be in the luaArray yet
	if _G[varName] == nil then _G[varName] = valueInput end
end

---@param s string
---@param delimiter string
---@return table.string
function Split(s, delimiter)
	-- cool stuff Unholy
	local result = {}
	for match in (s..delimiter):gmatch('(.-)'..delimiter) do
		table.insert(result, stringTrim(tostring(match)))
	end
	return result
end

---@param rgb hex
---@return table.number
function rgbToHex(rgb) --https://www.codegrepper.com/code-examples/lua/rgb+to+hex+lua
	return string.format("%02x%02x%02x", math.floor(rgb[1]), math.floor(rgb[2]), math.floor(rgb[3]))
end