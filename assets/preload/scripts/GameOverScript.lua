function onEvent(name,value1,value2)
if name == 'Change Character' then 
if value2 == 'bf-doki' or value2 == 'bf-shadow' then 
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-generic'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/doki_death'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverMonika'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndMonika'); 
end

if value2 == 'sadbf' or value2 == 'bf-home' or value2 == 'sil_bf' then 
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-sadbf'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/sad_death'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); 
end

if value2 == 'bfpoem' then 
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-poem'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/stagnantdeath'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); 
end

if value2 == 'yuri-closet' or value2 == 'yuri-closeup' or value2 == 'yuri-gore' then 
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-markov'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/YuriWatchesYouDie'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); 
end
end
end

function onCreate()
if boyfriendName == 'bf-doki' or boyfriendName == 'bf-shadow' then
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-generic'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/doki_death'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Doki-Doki/gameOverMonika'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Doki-Doki/gameOverEndMonika'); 
end

if boyfriendName == 'sadbf' or boyfriendName == 'bf-home' or boyfriendName == 'sil_bf' then
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-sadbf'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/sad_death'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); 
end

if boyfriendName == 'bfpoem' then
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-poem'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/stagnantdeath'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); 
end

if dadName == 'yuri-closet' or dadName == 'yuri-closeup' or dadName == 'yuri-gore' then
setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-markov'); 
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'DeathSounds/YuriWatchesYouDie'); 
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); 
end
end