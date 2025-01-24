function onCreatePost()
for strum = 0,7 do
setPropertyFromGroup('strumLineNotes',strum,'useRGBShader',false)
end
for i = 0, getProperty('unspawnNotes.length')-1 do
setPropertyFromGroup('unspawnNotes',i,'rgbShader.enabled',false)
end
end

function onCreate()
setPropertyFromClass('PlayState','SONG.arrowSkin','noteSkins/NOTE_assets')
setPropertyFromClass('states.PlayState','SONG.arrowSkin','noteSkins/NOTE_assets')
end

function onDestroy()
setPropertyFromClass('states.PlayState','SONG.arrowSkin','')
setPropertyFromClass('PlayState','SONG.arrowSkin','')
end