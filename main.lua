-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Resolution
_W = display.contentWidth
_H = display.contentHeight


-- Background
local background_img = display.newImageRect('images/background.jpg', _W, _H)
background_img.x = _W/2
background_img.y = _H/2


-- 						Load samples

-- BIG Applause
local applause = display.newImageRect('images/applause.png', 100, 100)
local applause_text = display.newText('Большие', _W/16+50, _H/7+60, native.systemFont, 16)
applause.x = _W/15+40
applause.y = _H/7
local applause_audio = audio.loadSound('sounds/applause7.wav')
-- SMALL Applause
local applause_s = display.newImageRect('images/applause.png', 100, 100)
local applause_text_s = display.newText('Малые', _W/2+10, _H/7+60, native.systemFont, 16)
applause_s.x = _W/2
applause_s.y = _H/7
local applause_audio_s = audio.loadSound('sounds/applause10.wav')
-- Boo
local boo = display.newImageRect('images/boo.png', 100, 100)
local boo_text = display.newText('Уууу!', _W/1.2, _H/7+60, native.systemFont, 16)
boo.x = _W/1.2
boo.y = _H/7
local boo_audio = audio.loadSound('sounds/boo.wav')
-- Badum Tss
local badum = display.newImageRect('images/badum.png', 110, 110)
local badum_text = display.newText('Бадум тсс', _W/16+50, _H/1.9, native.systemFont, 16)
badum.x = _W/15+50
badum.y = _H/2.5
local badum_audio = audio.loadSound('sounds/badum.wav')
-- Censor Beep
local censor = display.newImageRect('images/censor.png', 100, 100)
local censor_text = display.newText('Цензура', _W/2+10, _H/1.9, native.systemFont, 16)
censor.x = _W/1.9
censor.y = _H/2.5
local censor_audio = audio.loadSound('sounds/censor.wav')
-- Laugh
local laugh = display.newImageRect('images/laugh.png', 100, 100)
local laugh_text = display.newText('Смех', _W/1.2, _H/1.9, native.systemFont, 16)
laugh.x = _W/1.2
laugh.y = _H/2.5
local laugh_audio = audio.loadSound('sounds/laugh.wav')

-- 						Touch handler

function applause:touch(event)
	if(event.phase == 'ended') then
		audio.play(applause_audio)
	end
end
applause:addEventListener('touch', applause)

function applause_s:touch(event)
	if(event.phase == 'ended') then
		audio.play(applause_audio_s)
	end
end
applause_s:addEventListener('touch', applause_s)

function boo:touch(event)
	if(event.phase == 'ended') then
		audio.play(boo_audio)
	end
end
boo:addEventListener('touch', boo)

function badum:touch(event)
	if(event.phase == 'ended') then
		audio.play(badum_audio)
	end
end
badum:addEventListener('touch', badum)

function censor:touch(event)
	if(event.phase == 'ended') then
		audio.play(censor_audio)
	end
end
censor:addEventListener('touch', censor)

function laugh:touch(event)
	if(event.phase == 'ended') then
		audio.play(laugh_audio)
	end
end
laugh:addEventListener('touch', laugh)