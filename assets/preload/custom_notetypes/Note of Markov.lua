function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Note of Markov' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'MARKOVNOTE_assets');
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
end
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); 
end
end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Note of Markov' then
setProperty('health', -500);
end
end