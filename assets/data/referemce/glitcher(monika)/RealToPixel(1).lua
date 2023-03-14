local notesEnabled = 0
local functionEnabled = false

local curBF = ''
local curBFX = 0
local curBFY = 0

local curDadX = 0
local curDadY = 0
local curDad = ''

local curGF = ''
local curGFX = 0
local curGFY = 0
local curZoom = 0

local schoolStages = {'Sky','School','Trees','Ground'}

function onCreate()
    addLuaScript('custom_events/Set Cam Zoom')
    addCharacterToList('bf-pixel','boyfriend')
    addCharacterToList('monika','dad')
    makeLuaSprite('schoolSky','schoolStage/weebSky',-200,0)
    setScrollFactor('schoolSky',0.6,0.90)
    setProperty('schoolSky.antialiasing',false)
    scaleObject('schoolSky',6,6)
    addLuaSprite('schoolSky',false)

    makeLuaSprite('schoolSchool','schoolStage/weebSchool',-200,0)
    setScrollFactor('schoolSchool',0.6,0.90)
    setProperty('schoolSchool.antialiasing',false)
    scaleObject('schoolSchool',6,6)
    addLuaSprite('schoolSchool',false)

    makeAnimatedLuaSprite('schoolTrees','schoolStage/weebTrees',-800,-1000)
    addAnimationByPrefix('schoolTrees','idle','tress_',12,true)
    setScrollFactor('schoolTrees',0.85,0.85)
    setProperty('schoolTrees.antialiasing',false)
    scaleObject('schoolTrees',6,6)
    addLuaSprite('schoolTrees',false)

    makeLuaSprite('schoolGround','schoolStage/weebStreet',-200,0)
    setScrollFactor('schoolGround',0.95,0.95)
    setProperty('schoolGround.antialiasing',false)
    scaleObject('schoolGround',6,6)
    addLuaSprite('schoolGround',false)
    for stagePixelLength = 1,#schoolStages do
        setProperty('school'..schoolStages[stagePixelLength]..'.visible',false)
    end
end
function onUpdate()
    if notesEnabled == 2 then
        for notesLength = 0,getProperty('notes.length')-1 do
            setPropertyFromGroup('notes',notesLength,'texture','PIXELNOTE_assets')
        end
    elseif notesEnabled == 1 then
        for notesLength = 0,getProperty('notes.length')-1 do
            setPropertyFromGroup('notes',notesLength,'texture','')
        end
        notesEnabled = 0
    end
    if functionEnabled == false then
        curBF = getProperty('boyfriend.curCharacter')
        curBFX = getProperty('boyfriend.x')
        curBFY = getProperty('boyfriend.y')

        curDadX = getProperty('dad.x')
        curDadY = getProperty('dad.y')

        curDad = getProperty('dad.curCharacter')
        curZoom = getProperty('defaultCamZoom')

        curGFX = getProperty('gf.x')
        curGFY = getProperty('gf.y')
        curGF = getProperty('gf.curCharacter')
    end
end
function changeBG()
    if functionEnabled == false then
        triggerEvent('Set Cam Zoom','1.05,sineOut',0.2)
        setProperty('dokiDesksFestival.visible',false)
        if curBF == 'bf-doki' or curBF == 'bf' then
            triggerEvent('Change Character','bf','bf-pixel')
        end
        if curDad == 'monika-real' then
            triggerEvent('Change Character','dad','monika')
            setProperty('dad.x',curDadX + 300)
            setProperty('dad.y',curDadY + 300)
        end
        if curGF == 'gf' or curGF == 'gf-realdoki' then
            triggerEvent('Change Character','gf','gf-pixel')
            setProperty('gf.x',curGFX + 200)
            setProperty('gf.y',curGFY + 300)
        end
        for strumLineNotes = 0,7 do
            setPropertyFromGroup('strumLineNotes',strumLineNotes,'texture','PIXELNOTE_assets')
        end
        for stageLength = 1,#schoolStages do
            setProperty('school'..schoolStages[stageLength]..'.visible',true)
        end
        notesEnabled = 2
        functionEnabled = true
    end
end
function backToNormal()
    if functionEnabled == true then
        setProperty('dokiDesksFestival.visible',true)
        if getProperty('defaultCamZoom') ~= curZoom then
            triggerEvent('Set Cam Zoom',curZoom..',sineOut',0.2)
        end
        triggerEvent('Add Camera Zoom',0.1,0.03)
        if getProperty('boyfriend.curCharacter') ~= curBF then
            triggerEvent('Change Character','bf',curBF)
            setProperty('boyfriend.color',getColorFromHex('7A7A7A'))
        end
        if getProperty('dad.curCharacter') ~= curDad then
            triggerEvent('Change Character','dad',curDad)
            setProperty('dad.x',curDadX)
            setProperty('dad.y',curDadY)
            setProperty('dad.color',getColorFromHex('7A7A7A'))
        end
        if getProperty('gf.curCharacter') ~= curGF then
            triggerEvent('Change Character','gf',curGF)
            setProperty('gf.color',getColorFromHex('7A7A7A'))
        end
        for strumLineNotes = 0,7 do
            setPropertyFromGroup('strumLineNotes',strumLineNotes,'texture','NOTE_assets')
        end
        for stageLength = 1,#schoolStages do
            setProperty('school'..schoolStages[stageLength]..'.visible',false)
        end
        notesEnabled = 1


        functionEnabled = false
    end
end
function onStepHit()
    if curStep == 576 or curStep == 1088 or functionEnabled == false and curStep > 1343 and curBeat % 4 == 0 and curBeat % 8 ~= 0 and curStep < 1470 then
        changeBG()
    end
    if curStep == 832 or functionEnabled == true and curStep > 1343 and curBeat % 8 == 0 and curStep < 1470 then
        backToNormal()
    end
    if curStep == 1472 then
        backToNormal()
        for stageLength = 1,#schoolStages do
            removeLuaSprite('school'..schoolStages[stageLength],true)
        end
    end
end