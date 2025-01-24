function onCreate()
makeAnimatedLuaSprite('icono', 'icons/icon-sayoripoem', getProperty('iconP2.x'), getProperty('iconP2.y'))
addAnimationByPrefix('icono', 'nor', 'idle', 24, false)
addAnimationByPrefix('icono', 'perder', 'losing', 24, false)
setScrollFactor('icono', 0, 0)
setObjectCamera('icono', 'hud')
addLuaSprite('icono', false)
objectPlayAnimation('icono', 'nor', false)

makeAnimatedLuaSprite('icono2', 'icons/icon-bfpoem', getProperty('iconP1.x'), getProperty('iconP1.y'))
addAnimationByPrefix('icono2', 'nor', 'idle', 24, false)
addAnimationByPrefix('icono2', 'perder', 'losing', 24, false)
setScrollFactor('icono2', 0, 0)
setObjectCamera('icono2', 'hud')
addLuaSprite('icono2', false)
objectPlayAnimation('icono2', 'nor', false)

setProperty('icono.visible',false)
setProperty('icono2.visible',false)
end

function onUpdate(elapsed)
setProperty('icono2.flipX',true)
setProperty('iconor2.flipX',true)

setProperty('icono.alpha', icn1)
setProperty('icono2.alpha', icn2)
icn1 = getProperty('iconP2.alpha');
icn2 = getProperty('iconP1.alpha');

if getProperty('health') > 1.6 then
objectPlayAnimation('icono', 'perder', false)
else
objectPlayAnimation('icono', 'nor', false)
end

if getProperty('health') > 0.4 then
objectPlayAnimation('icono2', 'nor', false)
 else
objectPlayAnimation('icono2', 'perder', false)
end

setProperty('icono.x', getProperty('iconP2.x'))
setProperty('icono.angle', getProperty('iconP2.angle'))
setProperty('icono.y', getProperty('iconP2.y')-10)
setProperty('icono.scale.x', getProperty('iconP2.scale.x'))
setProperty('icono.scale.y', getProperty('iconP2.scale.y'))

setProperty('icono2.x', getProperty('iconP1.x'))
setProperty('icono2.angle', getProperty('iconP1.angle'))
setProperty('icono2.y', getProperty('iconP1.y')-10)
setProperty('icono2.scale.x', getProperty('iconP1.scale.x'))
setProperty('icono2.scale.y', getProperty('iconP1.scale.y'))
 

setObjectOrder('icono2', getObjectOrder('iconP1') + 1);
setObjectOrder('icono', getObjectOrder('iconP2') + 1);
end


function onBeatHit()
if curBeat == 327 then
setProperty('iconP1.visible',false)
setProperty('iconP2.visible',false)
setProperty('icono.visible',true)
setProperty('icono2.visible',true)
end
if curBeat == 456 then
setProperty('iconP1.visible',true)
setProperty('iconP2.visible',true)
setProperty('icono.visible',false)
setProperty('icono2.visible',false)
end
if curBeat == 584 then
setProperty('iconP1.visible',false)
setProperty('iconP2.visible',false)
setProperty('icono.visible',true)
setProperty('icono2.visible',true)
end
end