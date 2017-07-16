local spawnpos = minetest.setting_get_pos("static_spawnpoint")

local playtime = 70
local timer = playtime - 10

local function playsound()
	minetest.sound_play("Imagine_Dragons_-_Believer",{
		pos = spawnpos,
		max_hear_distance = 50,
		gain = 2.0,
	})
end

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer > playtime +2 then
		timer = 0
		playsound()
	end
end)
