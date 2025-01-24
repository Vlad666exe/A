function onCreatePost()
if stringStartsWith(version, '0.5') or stringStartsWith(version, '0.6') then
enableShader = getPropertyFromClass('ClientPrefs','shaders')
else
enableShader = getPropertyFromClass('backend.ClientPrefs','data.shaders')
end

if enableShader == true then
initLuaShader("vcr")
initLuaShader("glitch")
initLuaShader("static")

makeLuaSprite("shaderImage1")
setSpriteShader("shaderImage1", "vcr")

makeLuaSprite("shaderImage2")
setSpriteShader("shaderImage2", "static")

makeLuaSprite("shaderImage3")
setSpriteShader("shaderImage3", "glitch")

runHaxeCode([[
trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shaderImage1").shader),new ShaderFilter(game.getLuaObject("shaderImage2").shader),new ShaderFilter(game.getLuaObject("shaderImage3").shader)]);
]])
end
end

function onGameOver()
Chromashit = 0;
Glitch = 0;
end

Chromashit = 0;
Glitch = 0;
function setChrome(chromeOffset)
setShaderFloat("shaderImage1", "rOffset", chromeOffset);
setShaderFloat("shaderImage1", "gOffset", 0.0);
setShaderFloat("shaderImage1", "bOffset", chromeOffset * -1);
end

function onUpdate(elapsed)
if Glitch >= 2 then
setShaderFloat("shaderImage2", "strength", 45.0)
setShaderFloat("shaderImage3", "time", os.clock())
else
setShaderFloat("shaderImage2", "strength", 0.0)
end
setShaderFloat("shaderImage2", "iTime", os.clock())
setShaderFloat("shaderImage3", "glitchAmount", Glitch)
setChrome(Chromashit)
end

function boundTo(value, min, max) return math.max(min, math.min(max, value)) end
function math.lerp(from,to,i) return from+(to-from)*i end

function onEvent(name,value1,value2)
if name == 'Glitch Effect' then 
Chromashit = 0.01;
Glitch = 3;
runTimer('remov',value1);
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='remov' then
Chromashit = 0;
Glitch = 0;
end
end