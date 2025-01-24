function onCreate()
makeAnimatedLuaSprite('Yuri', 'characters/silhouette_yuri', 1000, 50);
addAnimationByPrefix('Yuri', 'idle', 'Yuri Idle', 24, true); 
addAnimationByPrefix('Yuri', 'singLEFT', 'Yuri Sing Note Left', 24, true);
addAnimationByPrefix('Yuri', 'singDOWN', 'Yuri Sing Note Down', 24, true);
addAnimationByPrefix('Yuri', 'singUP', 'Yuri Sing Note Up', 24, true);
addAnimationByPrefix('Yuri', 'singRIGHT', 'Yuri Sing Note Right', 24, true);
setProperty('Yuri.flipX', true);
objectPlayAnimation('Yuri', 'idle');
addLuaSprite('Yuri', false);

makeAnimatedLuaSprite('sayori', 'characters/silhouette_sayo', -50, 120);
addAnimationByPrefix('sayori', 'idle', 'Sayo Idle nrw test', 24, true); 
addAnimationByPrefix('sayori', 'singLEFT', 'Sayo Sing Note Left', 24, true);
addAnimationByPrefix('sayori', 'singDOWN', 'Sayo Sing Note Down', 24, true);
addAnimationByPrefix('sayori', 'singUP', 'Sayo Sing Note Up', 24, true);
addAnimationByPrefix('sayori', 'singRIGHT', 'Sayo Sing Note Right', 24, true);
objectPlayAnimation('sayori', 'idle');
addLuaSprite('sayori', false);

setProperty('Yuri.alpha', 0)
setProperty('sayori.alpha', 0)
end

function onEvent(name, value1, value2)
if name == 'Summon Sayori or Yuri' then
if value1 == 'sayori' then
doTweenAlpha('sayori', 'sayori', 1, 0.7, 'linear') 
end  
if value1 == 'yuri' then
doTweenAlpha('Yuri', 'Yuri', 1, 0.7, 'linear') 
end  
end
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Yuri Sing' then
idleYu=false
objectPlayAnimation('Yuri', singAnims[direction + 1], true)
end
if noteType == 'Sayo Sing' then
idleSa=false
objectPlayAnimation('sayori', singAnims[direction + 1], true)
runTimer('idleSayo',0.5)
end
end 

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='idleSayo' then 
idleSa=true
end  
if tag=='idleYu' then 
idleYu=true
end  
end

function onUpdate()
if getProperty('sayori.animation.curAnim.name') == 'idle' then
setProperty('sayori.x', -50)
setProperty('sayori.y', 120)
end
if getProperty('sayori.animation.curAnim.name') == 'singLEFT' then
setProperty('sayori.x', 0)
setProperty('sayori.y', 120)
end
if getProperty('sayori.animation.curAnim.name') == 'singDOWN' then
setProperty('sayori.x', 45)
setProperty('sayori.y', 170)
end
if getProperty('sayori.animation.curAnim.name') == 'singUP' then
setProperty('sayori.x', 20)
setProperty('sayori.y', 35)
end
if getProperty('sayori.animation.curAnim.name') == 'singRIGHT' then
setProperty('sayori.x', 45)
setProperty('sayori.y', 155)
end

if getProperty('Yuri.animation.curAnim.name') == 'idle' then
setProperty('Yuri.x', 1000)
setProperty('Yuri.y', 50)
end
if getProperty('Yuri.animation.curAnim.name') == 'singLEFT' then
setProperty('Yuri.x', 980)
setProperty('Yuri.y', 70)
end
if getProperty('Yuri.animation.curAnim.name') == 'singDOWN' then
setProperty('Yuri.x', 983)
setProperty('Yuri.y', 70)
end
if getProperty('Yuri.animation.curAnim.name') == 'singUP' then
setProperty('Yuri.x', 993)
setProperty('Yuri.y', 25)
end
if getProperty('Yuri.animation.curAnim.name') == 'singRIGHT' then
setProperty('Yuri.x', 1000)
setProperty('Yuri.y', 50)
end
end

function onBeatHit()
if curBeat % 2 == 0 and idleSa then
objectPlayAnimation('sayori', 'idle');
end
if curBeat % 2 == 0 and idleYu then
objectPlayAnimation('Yuri', 'idle');
end
end