local comboCount = 0
local comboDestroyed = 0

local enableCombo = true
local numbersCount = 0
local numbersDestroyed = 0

local comboImage = 'num'
local ratingImage = ''
local comboScale = 0.705
local comboColor = 'FFFFFF'

local comboNumOffset = 300

function onCreate()
setProperty('showCombo',false)
setProperty('showComboNum',false)
setProperty('showRating',false)
end

function goodNoteHit(id,data,type,sus)
if not sus and enableCombo then

local comboX = 400
local comboY = 230

createCombo(ratingImage..detectRating(getPropertyFromGroup('notes',id,'strumTime')-getSongPosition()),comboX,comboY,comboColor,comboOrder)
if getProperty('combo') >= 10 then
createNumbers(comboX + (comboNumOffset*comboScale),comboY + ((comboNumOffset-100)*comboScale),comboImage,comboColor,comboOrder)
end
end
end

function createCombo(image,x,y,color,order)
local name = 'customCombo'..comboCount
makeLuaSprite(name,image,x,y)
setProperty(name..'.velocity.y',-200)
setProperty(name..'.acceleration.y',800)
setObjectCamera(name, 'hud')
addLuaSprite(name,true)
scaleObject(name,comboScale,comboScale)
if color ~= nil then
setProperty(name..'.color',getColorFromHex(color))
end
if order ~= nil then
setObjectOrder(name,order)
end
comboCount = comboCount + 1
end

function createNumbers(x,y,image,color,order)
local detectPotence = math.max(2,#tostring(getProperty('combo')) - 1)
if image == nil then
image = 'num'
end

for numbers = 0,detectPotence do
local numberSprite = tostring(getProperty('combo'))
if #numberSprite - numbers > 0 then
numberSprite = string.sub(numberSprite,#numberSprite - numbers,#numberSprite - numbers)

else
numberSprite = '0'
end
local numberScale = comboScale - 0.2
numbersCount = numbersCount + 1
local number = 'customNumber'..numbersCount
makeLuaSprite(number,image..numberSprite,x,y)
setProperty(number..'.velocity.y',-200 - (50*numbers))
setProperty(number..'.acceleration.y',800)
setProperty(number..'.alpha',1)
scaleObject(number,numberScale,numberScale)
setProperty(number..'.x',x - (getProperty(number..'.width')*numbers))
setObjectCamera(number, 'hud')
addLuaSprite(number,true)

if color ~= nil then
setProperty(number..'.color',getColorFromHex(color));
end
if order ~= nil then
setObjectOrder(number,order)
end
end
end

function detectRating(time)
time = math.abs(time)

if stringStartsWith(version, '0.5') or stringStartsWith(version, '0.6') then
if time < getPropertyFromClass('ClientPrefs','sickWindow') then
return 'sick'
elseif time < getPropertyFromClass('ClientPrefs','goodWindow') then
return 'good'
elseif time < getPropertyFromClass('ClientPrefs','badWindow') then
return 'bad'
else
return 'shit'
end

else

if time < getPropertyFromClass('backend.ClientPrefs','data.sickWindow') then
return 'sick'
elseif time < getPropertyFromClass('backend.ClientPrefs','data.goodWindow') then
return 'good'
elseif time < getPropertyFromClass('backend.ClientPrefs','data.badWindow') then
return 'bad'
else
return 'shit'
end

end

return ''
end

function onEvent(name,value1,value2)
if name == 'MakeRating' then 
ratingImage=value1
comboImage=value2
end
end

function onUpdate(el)
--[[if luaSpriteExists('customCombo') then
if getProperty('customCombo.alpha') <= 0 then
removeLuaSprite('customCombo',true)
else
if getProperty('customCombo.velocity.y') > 0 then
setProperty('customCombo.alpha',getProperty('customCombo.alpha')-el)
end
end
end
for numbers = 0,maxNumbers do
local name = 'customNumber'..numbers
if luaSpriteExists(name) then
if getProperty(name..'.velocity.y') > 0 then
setProperty(name..'.alpha',getProperty(name..'.alpha')-el)
end
if getProperty(name..'.alpha') <= 0 then
--numbersDestroyed = numbersDestroyed + 1
removeLuaSprite(name,true)
end
end
end]]--
if comboCount > comboDestroyed then
for combos = comboDestroyed,comboCount do
local name = 'customCombo'..combos
if luaSpriteExists(name) then
if getProperty(name..'.velocity.y') > 0 then
setProperty(name..'.alpha',getProperty(name..'.alpha')-(el*3))
end
if getProperty(name..'.alpha') <= 0 then
removeLuaSprite(name,true)
comboDestroyed = comboDestroyed + 1
end
end
end
end
if numbersCount > numbersDestroyed then
for numbers = numbersDestroyed+1,numbersCount do
local name = 'customNumber'..numbers
if luaSpriteExists(name) then
if getProperty(name..'.velocity.y') > 0 then
setProperty(name..'.alpha',getProperty(name..'.alpha')-(el*3))
end
if getProperty(name..'.alpha') <= 0 then
removeLuaSprite(name,true)
numbersDestroyed = numbersDestroyed + 1
end
end
end
end
end


