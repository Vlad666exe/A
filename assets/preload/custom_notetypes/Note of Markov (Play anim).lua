function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Note of Markov (Play anim)' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'MARKOVNOTE_assets');
end
end
end
