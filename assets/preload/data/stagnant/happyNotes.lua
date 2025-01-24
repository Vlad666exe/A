function onSongStart()
triggerEvent('MakeRating', 'normalUI/Nor', 'normalUI/num')
end

local NoAnimDuration = 1
function disableNotes(mustPress,disable)
for notes = 0,getProperty('notes.length')-1 do
if getPropertyFromGroup('notes',notes,'strumTime') - getSongPosition() <= NoAnimDuration * 1005 then
if getPropertyFromGroup('notes', notes, 'noteType') == 'Note of Markov' then
setPropertyFromGroup('notes',notes, 'texture', 'poemUI/MARKOVNOTE_assets');
else
setPropertyFromGroup('notes',notes, 'texture', 'poemUI/NOTE_assets');
end
end
end
end

function onUpdate()
if happy then
disableNotes(true,true)
end
end

function onBeatHit()
if curBeat == 72 then
triggerEvent('MakeRating', '', 'num')
end
if curBeat == 136 then
triggerEvent('MakeRating', 'normalUI/Nor', 'normalUI/num')
end
if curBeat == 200 then
triggerEvent('MakeRating', '', 'num')
end
if curBeat == 327 then
triggerEvent('MakeRating', 'poemUI/Poem', 'poemUI/num')
triggerEvent('MakeSplash', 'poemUI/noteSplashes', 'true')
happy=true
end
if curBeat == 455 then
triggerEvent('MakeRating', '', 'num')
triggerEvent('MakeSplash', 'noteSplashes/NOTE_splashes_doki', 'false')
happy=false
end
if curBeat == 584 then
triggerEvent('MakeRating', 'poemUI/Poem', 'poemUI/num')
triggerEvent('MakeSplash', 'poemUI/noteSplashes', 'true')
happy=true
end
end