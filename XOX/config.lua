--
-- For more information on config.lua see the Corona SDK Project Configuration Guide at:
-- https://docs.coronalabs.com/guide/basics/configSettings
--

application =
{
	content =
	{
		width = 320, --screen resolution of the target device (portrait)
		height = 480, --screen resolution height of the device (portrait)
		scale = "letterBox",
		fps = 60,

		--[[
			scale: 

			letterbox -uniform scaling
			zoomEven -scale up to fit screen
			zoommStrech -scales up nonumiformly to fit screen

		  ]]
		
		--[[
		imageSuffix =
		{
			    ["@2x"] = 2,
			    ["@4x"] = 4,
		},
		--]]
	},
}
