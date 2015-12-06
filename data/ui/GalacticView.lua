-- Copyright © 2008-2015 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

local Engine = import("Engine")
local Game = import("Game")
local Lang = import("Lang")
local GalaxyMap = import("UI.Game.GalaxyMap")

local ui = Engine.ui
local l = Lang.GetResource("ui-core");

local zoomSlider = ui:VSlider()
local map = GalaxyMap.New(ui):SetFont('LARGE')
local scaleIndicator =
		ui:Image("icons/map_scale_indicator.png", { "PRESERVE_ASPECT" })
local scaleLabel = ui:NumberLabel('DISTANCE_LY')

map.onMapScaleChanged:Connect(function (new_scale)
	scaleLabel:SetValue(scaleIndicator.width * new_scale * 8)
end)

local resetCurrentSector = function (map)
	local sysPath = Game.system.path
	local x = sysPath.sectorX
	local y = sysPath.sectorY

	map:ClearLabels()
	map:SetCentreSector(x, y)
	map
		:AddAreaLabel(-3250,  1875, "3kpc arm")
		:AddAreaLabel(-3900,  2812, "Norma arm")
		:AddAreaLabel( 1500,  1200, "Perseus arm")
		:AddAreaLabel(-2600, -5100, "Outer arm")
		:AddAreaLabel(-4100,  4375, "Sagittarius arm")
		:AddAreaLabel(-4300,  3450, "Scutum Centaurus arm")
		:AddAreaLabel(  100, -1100, "Local arm")
		:AddPointLabel(   x,     y, Game.system.name)
end

zoomSlider:SetRange(-1, 3.322)
zoomSlider.onValueChanged:Connect(function (new_zoom_pos)
	map:SetZoom(math.pow(2, new_zoom_pos))
end)

local controls =
	ui:Margin(30, 'ALL',
		ui:Align('LEFT',
			ui:HBox():PackEnd({
				ui:VBox(10):PackEnd({
					l.ZOOM,
					ui:Expand('VERTICAL', ui:Align('MIDDLE', zoomSlider)),
				}),
				ui:Align('BOTTOM', ui:HBox(10):PackEnd({scaleIndicator, scaleLabel}))
			})
		)
	)

local galacticView = ui:OverlayStack():AddLayer(map):AddLayer(controls)

ui.templates.GalacticView = function ()
	resetCurrentSector(map)
	return galacticView
end
