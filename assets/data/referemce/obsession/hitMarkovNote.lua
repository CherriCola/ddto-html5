function onUpdate()
    if curStep > 449 and curStep < 537 then
        for notesLength = 0,getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes',notesLength,'noteType') == 'Markov Note' and getPropertyFromGroup('notes',notesLength,'mustPress') == false then
                setPropertyFromGroup('notes',notesLength,'ignoreNote',false)
            end
        end
    end
end