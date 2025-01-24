local xx = 480
local yy = 450
local xx2=780
local yy2=480

local followchars = true;

function onUpdate()
if followchars == true then
if mustHitSection == false then
triggerEvent('Camera Follow Pos',xx,yy)
else
triggerEvent('Camera Follow Pos',xx2,yy2)
end
else
triggerEvent('Camera Follow Pos','','')
end
end


