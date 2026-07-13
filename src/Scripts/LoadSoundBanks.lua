-- Loads the mod's FMOD sound bank when entering the Crossroads, so its custom song events are available in the Music Maker
local bankPath = "Audio\\ModsNikkelMCrossroadsSingingSilverSistersMusic.bank"

local function loadBank()
	rom.audio.load_bank(rom.path.combine(_PLUGIN.plugins_data_mod_folder_path, bankPath))
end

-- This must be the same as the wrap for HubPostBountyLoad and HubPostDreamLoad
modutil.mod.Path.Wrap("DeathAreaRoomTransition", function(base, source, args)
	loadBank()
	return base(source, args)
end)

-- If returning from a Chaos Trial, this will be called instead of DeathAreaRoomTransition
modutil.mod.Path.Wrap("HubPostBountyLoad", function(base, source, args)
	loadBank()
	return base(source, args)
end)

-- If returning from a Dream Dive, this will be called instead of DeathAreaRoomTransition
modutil.mod.Path.Wrap("HubPostDreamLoad", function(base, source, args)
	loadBank()
	return base(source, args)
end)
