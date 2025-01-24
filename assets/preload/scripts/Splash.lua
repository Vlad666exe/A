local texture = 'noteSplashes/NOTE_splashes_doki' 

function onCreate()
Create()
end

function Create()
makeAnimatedLuaSprite('splashLeft', texture)
makeAnimatedLuaSprite('splashDown', texture)
makeAnimatedLuaSprite('splashUp', texture)
makeAnimatedLuaSprite('splashRight', texture)

for i=1, 3 do
addAnimationByPrefix('splashLeft', 'splash' ..i, 'note splash purple ' ..i, 0, false)
addAnimationByPrefix('splashDown', 'splash' ..i, 'note splash blue ' ..i, 0, false)
addAnimationByPrefix('splashUp', 'splash' ..i, 'note splash green ' ..i, 0, false)
addAnimationByPrefix('splashRight', 'splash' ..i, 'note splash red ' ..i, 0, false)
end

setProperty('splashLeft.alpha', 0.70)
setProperty('splashDown.alpha', 0.70)
setProperty('splashUp.alpha', 0.70)
setProperty('splashRight.alpha', 0.70)

setObjectCamera('splashLeft', 'camHUD')
setObjectCamera('splashDown', 'camHUD')
setObjectCamera('splashUp', 'camHUD')
setObjectCamera('splashRight', 'camHUD')

setProperty('splashLeft.visible', false)
setProperty('splashDown.visible', false)
setProperty('splashUp.visible', false)
setProperty('splashRight.visible', false)

setProperty('splashLeft.offset.x', 39)
setProperty('splashLeft.offset.y', 44)
setProperty('splashDown.offset.x', 39)
setProperty('splashDown.offset.y', 44)
setProperty('splashUp.offset.x', 39)
setProperty('splashUp.offset.y', 44)
setProperty('splashRight.offset.x', 39)
setProperty('splashRight.offset.y', 44)

setObjectOrder('splashLeft', getObjectOrder('grpNoteSplashes')+1)
setObjectOrder('splashDown', getObjectOrder('grpNoteSplashes')+1)
setObjectOrder('splashUp', getObjectOrder('grpNoteSplashes')+1)
setObjectOrder('splashRight', getObjectOrder('grpNoteSplashes')+1)

addLuaSprite('splashLeft', true)
addLuaSprite('splashDown', true)
addLuaSprite('splashUp', true)
addLuaSprite('splashRight', true)
return Function_Continue
end

function goodNoteHit(id, dir, type, sus)
if getPropertyFromGroup('notes', id, 'rating') == 'sick' then
if dir == 0 and not sus then
if not poem then
setProperty('splashLeft.x', getPropertyFromGroup('playerStrums', 0, 'x')-(111*0.8)*0.95)
setProperty('splashLeft.y', getPropertyFromGroup('playerStrums', 0, 'y')-(111*0.75))
else
setProperty('splashLeft.x', getPropertyFromGroup('playerStrums', 0, 'x')-(111*1.0)*0.95)
setProperty('splashLeft.y', getPropertyFromGroup('playerStrums', 0, 'y')-(111*0.7))
end
setProperty('splashLeft.visible', true)
objectPlayAnimation('splashLeft', 'splash'.. getRandomInt(1,2), true)
setProperty('splashLeft.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
elseif dir == 1 and not sus then
if not poem then
setProperty('splashDown.x', getPropertyFromGroup('playerStrums', 1, 'x')-(111*0.8)*0.95)
setProperty('splashDown.y', getPropertyFromGroup('playerStrums', 1, 'y')-(111*0.75))
else
setProperty('splashDown.x', getPropertyFromGroup('playerStrums', 1, 'x')-(111*1.0)*0.95)
setProperty('splashDown.y', getPropertyFromGroup('playerStrums', 1, 'y')-(111*0.7))
end
setProperty('splashDown.visible', true)
objectPlayAnimation('splashDown', 'splash'.. getRandomInt(1,2), true)
setProperty('splashDown.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
elseif dir == 2 and not sus then
if not poem then
setProperty('splashUp.x', getPropertyFromGroup('playerStrums', 2, 'x')-(111*0.8)*0.95)
 setProperty('splashUp.y', getPropertyFromGroup('playerStrums', 2, 'y')-(111*0.75))
else
setProperty('splashUp.x', getPropertyFromGroup('playerStrums', 2, 'x')-(111*1.0)*0.95)
setProperty('splashUp.y', getPropertyFromGroup('playerStrums', 2, 'y')-(111*0.7))
end
setProperty('splashUp.visible', true)
objectPlayAnimation('splashUp', 'splash'.. getRandomInt(1,2), true)
setProperty('splashUp.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
elseif dir == 3 and not sus then
if not poem then
setProperty('splashRight.x', getPropertyFromGroup('playerStrums', 3, 'x')-(111*0.8)*0.95)
setProperty('splashRight.y', getPropertyFromGroup('playerStrums', 3, 'y')-(111*0.75))
else
setProperty('splashRight.x', getPropertyFromGroup('playerStrums', 3, 'x')-(111*1.0)*0.95)
setProperty('splashRight.y', getPropertyFromGroup('playerStrums', 3, 'y')-(111*0.7))
end
setProperty('splashRight.visible', true)
objectPlayAnimation('splashRight', 'splash'.. getRandomInt(1,2), true)
setProperty('splashRight.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
end
end
end

function onUpdate()
setPropertyFromClass('ClientPrefs', 'noteSplashes', false);
setPropertyFromClass('backend.ClientPrefs', 'noteSplashes', false);
setObjectOrder('splashLeft', getObjectOrder('grpNoteSplashes')+1)
setObjectOrder('splashDown', getObjectOrder('grpNoteSplashes')+1)
setObjectOrder('splashUp', getObjectOrder('grpNoteSplashes')+1)
setObjectOrder('splashRight', getObjectOrder('grpNoteSplashes')+1)

addLuaSprite('splashLeft', true)
addLuaSprite('splashDown', true)
addLuaSprite('splashUp', true)
addLuaSprite('splashRight', true)

if getProperty('splashLeft.animation.curAnim.finished') and getProperty('splashLeft.visible') then
setProperty('splashLeft.visible', false)
end
if getProperty('splashDown.animation.curAnim.finished') and getProperty('splashDown.visible') then
setProperty('splashDown.visible', false)
end
if getProperty('splashUp.animation.curAnim.finished') and getProperty('splashUp.visible') then
setProperty('splashUp.visible', false)
end
if getProperty('splashRight.animation.curAnim.finished') and getProperty('splashRight.visible') then
setProperty('splashRight.visible', false)
end
end

function onDestroy()
setPropertyFromClass('ClientPrefs', 'noteSplashes', true);
setPropertyFromClass('backend.ClientPrefs', 'noteSplashes', true);
end

function onEvent(name,value1,value2)
if name == 'MakeSplash' then 
texture = value1
Create()
poem=value2
end
end