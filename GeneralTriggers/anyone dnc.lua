-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 10,
		["execute"] = "if Player.job ~= 38 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
data.nilsPlayground.timeOfDeath = Now()\
\
if SallyDNC ~= nil then\
  -- reset hotbar\
  SallyDNC.HotBarConfig.Armslength.enabled = true\
  SallyDNC.HotBarConfig.CuringWaltz.enabled = true\
  SallyDNC.HotBarConfig.Devilment.enabled = true\
  SallyDNC.HotBarConfig.EnAvant.enabled = true\
  SallyDNC.HotBarConfig.Flourish.enabled = true\
  SallyDNC.HotBarConfig.Improv.enabled = true\
  SallyDNC.HotBarConfig.LB.enabled = true\
  SallyDNC.HotBarConfig.SecondWind.enabled = true\
  SallyDNC.HotBarConfig.ShieldSamba.enabled = true\
  SallyDNC.HotBarConfig.Sprint.enabled = true\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset: on death",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "a4e01799-ba95-a0f1-8e72-f997f037c8c5",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 9,
		["execute"] = "if Player.job ~= 38 or SallyDNC == nil then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
\
-- reset hotbar\
SallyDNC.HotBarConfig.Armslength.enabled = true\
SallyDNC.HotBarConfig.CuringWaltz.enabled = true\
SallyDNC.HotBarConfig.Devilment.enabled = true\
SallyDNC.HotBarConfig.EnAvant.enabled = true\
SallyDNC.HotBarConfig.Flourish.enabled = true\
SallyDNC.HotBarConfig.Improv.enabled = true\
SallyDNC.HotBarConfig.LB.enabled = true\
SallyDNC.HotBarConfig.SecondWind.enabled = true\
SallyDNC.HotBarConfig.ShieldSamba.enabled = true\
SallyDNC.HotBarConfig.Sprint.enabled = true\
\
\
-- reset quick toggles\
SallyDNC.SkillSettings.BurnCD.enabled = false\
SallyDNC.SkillSettings.Devilment.enabled = true\
SallyDNC.SkillSettings.FanDance3IsAOE.enabled = true\
SallyDNC.SkillSettings.Flourish.enabled = true\
SallyDNC.SkillSettings.Opener.enabled = false\
-- SallyDNC.SkillSettings.Potion.enabled = true\
SallyDNC.SkillSettings.SaberDance.enabled = true\
SallyDNC.SkillSettings.SaberIsAOE.enabled = true\
SallyDNC.SkillSettings.SaveCD.enabled = false\
SallyDNC.SkillSettings.StandardStep.enabled = true\
SallyDNC.SkillSettings.TechStep.enabled = true\
SallyDNC.SkillSettings.UseAOE.enabled = true\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true \
return nil",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset: toggles on wipe",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 10,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "eb121c78-18a1-7114-8468-e7ddc1e349b1",
	},
	[3] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 11,
		["execute"] = "---enables auto partner after changing maps (ie loading into savage zones), can be disabled afterwards and won't be used again in that instance\
---alternatively just disable this if you're 3000 iq and remember to use dance partner\
SallyDNC.SkillSettings.AutoPartner.enabled = true\
self.used = true",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "auto partner once at map change",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "32e7c405-5f17-35a4-bfce-e25fc47837cf",
	},
	[4] = {
		["actions"] = {
			[1] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "if not gReactionAddonInit then\
    AnyoneReactionSettings = {\
        enabled = true,\
        data = {},\
        visible = true,\
        open = false,\
    }\
\
    AnyoneReactionSettings.Settings = {\
        DrawLROrbs = true,\
        DrawDragonHeads = true\
    }\
        \
    function AnyoneReactionSettings.draw()\
        if self.reference.enabled and AnyoneReactionSettings.enabled and AnyoneReactionSettings.open then\
            GUI:SetNextWindowSize(250,400,GUI.SetCond_FirstUseEver)\
            AnyoneReactionSettings.visible, AnyoneReactionSettings.open = GUI:Begin(\"Anyone's Reactions Settings\", AnyoneReactionSettings.open)\
            if ( AnyoneReactionSettings.visible ) then\
                GUI:Text(\"Change settings\")\
                AnyoneReactionSettings.Settings.DrawDragonHeads = GUI:Checkbox(\"Draw Dragon Heads\", AnyoneReactionSettings.Settings.DrawDragonHeads)\
                AnyoneReactionSettings.Settings.DrawLROrbs = GUI:Checkbox(\"Draw Orbs\", AnyoneReactionSettings.Settings.DrawLROrbs)\
            end\
            GUI:End()\
        end\
    end\
\
    -- RegisterEventHandler(\"Gameloop.Update\", AnyoneReactionSettings.func, \"AnyoneReactionSettings\")\
    ml_gui.ui_mgr:AddMember({ id = \"FFXIVMINION##MENU_AnyoneReactionSettings\", name = \"AnyoneReactionSettings\", onClick = function() AnyoneReactionSettings.open = not AnyoneReactionSettings.open end, tooltip = \"Anyone's Reactions Settings\"},\"FFXIVMINION##MENU_HEADER\")\
    RegisterEventHandler(\"Gameloop.Draw\", AnyoneReactionSettings.draw, \"AnyoneReactionSettings\")\
    d\"registered\"\
    gReactionAddonInit = true\
end\
\
self.eventConditionMismatch = true\
self.used = true",
				["allowInterrupt"] = false,
				["conditions"] = {
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["stopCasting"] = false,
				["stopMoving"] = false,
				["targetContentID"] = -1,
				["targetName"] = "",
				["targetSubType"] = 1,
				["targetType"] = 1,
				["untarget"] = false,
				["useForWeaving"] = false,
				["usePot"] = false,
				["used"] = false,
				["variableTogglesType"] = 1,
			},
		},
		["conditions"] = {
			[1] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return AnyoneReactionSettings == nil",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "",
				["eventEntityContentID"] = -1,
				["eventEntityID"] = -1,
				["eventEntityName"] = "",
				["eventMarkerID"] = -1,
				["eventOwnerContentID"] = -1,
				["eventOwnerID"] = -1,
				["eventOwnerName"] = "",
				["eventSpellID"] = -1,
				["eventSpellName"] = -1,
				["eventTargetContentID"] = -1,
				["eventTargetID"] = -1,
				["eventTargetName"] = "",
				["gaugeIndex"] = 1,
				["gaugeValue"] = 0,
				["hpType"] = 1,
				["hpValue"] = 0,
				["inCombatType"] = 1,
				["inRangeValue"] = 0,
				["lastSkillID"] = -1,
				["localmapid"] = -1,
				["matchAnyBuff"] = false,
				["mpType"] = 1,
				["mpValue"] = 0,
				["name"] = "",
				["partyHpType"] = 1,
				["partyHpValue"] = 0,
				["partyMpType"] = 1,
				["partyMpValue"] = 0,
				["partyTargetContentID"] = -1,
				["partyTargetName"] = "",
				["partyTargetNumber"] = 1,
				["partyTargetSubType"] = 1,
				["partyTargetType"] = 1,
				["rangeCheckSourceSubType"] = 1,
				["rangeCheckSourceType"] = 1,
				["rangeSourceContentID"] = -1,
				["rangeSourceName"] = "",
				["setEventTargetSubtype"] = 1,
				["setFirstMatch"] = false,
			},
		},
		["enabled"] = true,
		["eventType"] = 1,
		["execute"] = "if not gAnyoneReactionAddonInit then\
	AnyoneReactionSettings = {\
		enabled = true,\
		data = {},\
		visible = true,\
		open = false,\
	}\
\
	if Settings.AnyoneReactionSettings.AutoSetCameraZoom == true then\
		gDevHackMaxZoom = 35.0\
		Hacks:SetCamMaxZoom(gDevHackMinZoom,gDevHackMaxZoom)\
	end\
\
	if Settings.AnyoneReactionSettings.DrawOrbs == nil then\
		Settings.AnyoneReactionSettings.DrawOrbs = true -- true is default\
		Settings.AnyoneReactionSettings.DrawOrbs = Settings.AnyoneReactionSettings.DrawOrbs -- hoping to god it saves\
	end\
	\
	if Settings.AnyoneReactionSettings.DrawDragonHeads == nil then\
		Settings.AnyoneReactionSettings.DrawDragonHeads = true -- true is default\
		Settings.AnyoneReactionSettings.DrawDragonHeads = Settings.AnyoneReactionSettings.DrawDragonHeads -- hoping to god it saves\
	end\
	\
	if Settings.AnyoneReactionSettings.KnockbackMirrorUptime == nil then\
		Settings.AnyoneReactionSettings.KnockbackMirrorUptime = true -- true is default\
		Settings.AnyoneReactionSettings.KnockbackMirrorUptime = Settings.AnyoneReactionSettings.KnockbackMirrorUptime -- hoping to god it saves\
	end\
	\
	if Settings.AnyoneReactionSettings.InterruptSecondAdd == nil then\
		Settings.AnyoneReactionSettings.InterruptSecondAdd = false -- false is default\
		Settings.AnyoneReactionSettings.InterruptSecondAdd = Settings.AnyoneReactionSettings.InterruptSecondAdd -- hoping to god it saves\
	end\
\
	if Settings.AnyoneReactionSettings.LeftSide == nil then\
		Settings.AnyoneReactionSettings.LeftSide = true -- true is default\
		Settings.AnyoneReactionSettings.LeftSide = Settings.AnyoneReactionSettings.LeftSide -- hoping to god it saves\
	end	\
	\
	if Settings.AnyoneReactionSettings.DisableAssist == nil then\
		Settings.AnyoneReactionSettings.DisableAssist = false -- false is default\
		Settings.AnyoneReactionSettings.DisableAssist = Settings.AnyoneReactionSettings.DisableAssist -- hoping to god it saves\
	end	\
	\
	if Settings.AnyoneReactionSettings.AddsPhasePot == nil then\
		Settings.AnyoneReactionSettings.AddsPhasePot = true -- true is default\
		Settings.AnyoneReactionSettings.AddsPhasePot = Settings.AnyoneReactionSettings.AddsPhasePot -- hoping to god it saves\
	end	\
	\
	if Settings.AnyoneReactionSettings.AutoSetSpeedHacks == nil then\
		Settings.AnyoneReactionSettings.AutoSetSpeedHacks = false -- false is default\
		Settings.AnyoneReactionSettings.AutoSetSpeedHacks = Settings.AnyoneReactionSettings.AutoSetSpeedHacks -- hoping to god it saves\
	end\
	\
	if Settings.AnyoneReactionSettings.AutoSetCameraZoom == nil then\
		Settings.AnyoneReactionSettings.AutoSetCameraZoom = false -- false is default\
		Settings.AnyoneReactionSettings.AutoSetCameraZoom = Settings.AnyoneReactionSettings.AutoSetCameraZoom -- hoping to god it saves\
	end\
	\
	AnyoneReactionSettings.Settings = {\
			DrawOrbs = Settings.AnyoneReactionSettings.DrawOrbs,\
			DrawDragonHeads = Settings.AnyoneReactionSettings.DrawDragonHeads,\
			KnockbackMirrorUptime = Settings.AnyoneReactionSettings.KnockbackMirrorUptime,\
			InterruptSecondAdd = Settings.AnyoneReactionSettings.InterruptSecondAdd,\
			LeftSide = Settings.AnyoneReactionSettings.LeftSide,\
			DisableAssist = Settings.AnyoneReactionSettings.DisableAssist,\
			AddsPhasePot = Settings.AnyoneReactionSettings.AddsPhasePot,\
			AutoSetSpeedHacks = Settings.AnyoneReactionSettings.AutoSetSpeedHacks,\
			AutoSetCameraZoom = Settings.AnyoneReactionSettings.AutoSetCameraZoom\
		}\
\
	function AnyoneReactionSettings.save()\
		Settings.AnyoneReactionSettings.DrawOrbs = AnyoneReactionSettings.Settings.DrawOrbs\
		Settings.AnyoneReactionSettings.DrawOrbs = Settings.AnyoneReactionSettings.DrawOrbs\
\
		Settings.AnyoneReactionSettings.DrawDragonHeads = AnyoneReactionSettings.Settings.DrawDragonHeads\
		Settings.AnyoneReactionSettings.DrawDragonHeads = Settings.AnyoneReactionSettings.DrawDragonHeads\
		\
		Settings.AnyoneReactionSettings.KnockbackMirrorUptime = AnyoneReactionSettings.Settings.KnockbackMirrorUptime\
		Settings.AnyoneReactionSettings.KnockbackMirrorUptime = Settings.AnyoneReactionSettings.KnockbackMirrorUptime\
		\
		Settings.AnyoneReactionSettings.InterruptSecondAdd = AnyoneReactionSettings.Settings.InterruptSecondAdd\
		Settings.AnyoneReactionSettings.InterruptSecondAdd = Settings.AnyoneReactionSettings.InterruptSecondAdd\
		\
		Settings.AnyoneReactionSettings.LeftSide = AnyoneReactionSettings.Settings.LeftSide\
		Settings.AnyoneReactionSettings.LeftSide = Settings.AnyoneReactionSettings.LeftSide	\
\
		Settings.AnyoneReactionSettings.DisableAssist = AnyoneReactionSettings.Settings.DisableAssist\
		Settings.AnyoneReactionSettings.DisableAssist = Settings.AnyoneReactionSettings.DisableAssist		\
		\
		Settings.AnyoneReactionSettings.AddsPhasePot = AnyoneReactionSettings.Settings.AddsPhasePot\
		Settings.AnyoneReactionSettings.AddsPhasePot = Settings.AnyoneReactionSettings.AddsPhasePot	\
		\
		Settings.AnyoneReactionSettings.AutoSetSpeedHacks = AnyoneReactionSettings.Settings.AutoSetSpeedHacks\
		Settings.AnyoneReactionSettings.AutoSetSpeedHacks = Settings.AnyoneReactionSettings.AutoSetSpeedHacks\
		\
		Settings.AnyoneReactionSettings.AutoSetCameraZoom = AnyoneReactionSettings.Settings.AutoSetCameraZoom\
		Settings.AnyoneReactionSettings.AutoSetCameraZoom = Settings.AnyoneReactionSettings.AutoSetCameraZoom\
	end\
		\
	AnyoneReactionSettings.main_tabs = GUI_CreateTabs(\"General,Hacks\")\
	function AnyoneReactionSettings.draw()\
		if self.reference.enabled and AnyoneReactionSettings.enabled and AnyoneReactionSettings.open then\
			GUI:SetNextWindowSize(250,400,GUI.SetCond_FirstUseEver)\
			AnyoneReactionSettings.visible, AnyoneReactionSettings.open = GUI:Begin(\"Anyone's Reactions Settings\", AnyoneReactionSettings.open)\
			if AnyoneReactionSettings.visible then\
				local tabindex, tabname = GUI_DrawTabs(AnyoneReactionSettings.main_tabs)\
				if (tabname == GetString(\"General\")) then\
				local changed = false\
				\
				GUI:Text(\"e7s settings\")\
				local hovered = false\
				AnyoneReactionSettings.Settings.DisableAssist, changed = GUI:Checkbox(\"Disable Assist for Away With Thee\", AnyoneReactionSettings.Settings.DisableAssist)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Disables minion's assist function slightly before Away With Thee teleports go out. Allows you to position yourself correctly without getting mispositioned by a skill usage.\\n\")\
					GUI:TextColored(1,1,0,1,\"Alternatively, you can use LMB + RMB + S and then wiggle your camera while facing the correct direction. This will result in much better uptime. Test this on a striking dummy first to get the feel for it.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				if Player.job == 31 then\
				local hovered = false\
				AnyoneReactionSettings.Settings.AddsPhasePot, changed = GUI:Checkbox(\"Adds Phase Pot\", AnyoneReactionSettings.Settings.AddsPhasePot)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Uses pot during adds phase immediately after Away With Thee teleport ends. This will allow you to get in a 3rd pot usage if your kill time is over 9 minutes and 30 seconds long.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. If your kill time is shorter than 9 minutes and 30 seconds, turn this off.\")\
					GUI:TextColored(1,1,0,1,\"Potions still need to be turned on with your quick toggles at the start of the fight for this to work.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				\
				GUI:Text(\"e8s settings\")\
				local hovered = false\
				AnyoneReactionSettings.Settings.KnockbackMirrorUptime, changed = GUI:Checkbox(\"Knockback Mirror Uptime Strat\", AnyoneReactionSettings.Settings.KnockbackMirrorUptime)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Automatically uses Arm's Length or Surecast during knockback mirrors. Will allow you to nullify both knockbacks.\\n\")\
					GUI:TextColored(1,1,0,1,\"If you're getting knocked back still, check the read me for more information on how to modify the timing based on your needs.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.DrawDragonHeads, changed = GUI:Checkbox(\"Draw Dragon Heads\", AnyoneReactionSettings.Settings.DrawDragonHeads)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Draws the explosion radius of the dragon heads during Wyrm's Lament in e8s.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.DrawOrbs, changed = GUI:Checkbox(\"Draw Orbs\", AnyoneReactionSettings.Settings.DrawOrbs)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Draws the explosion radius of the orbs during Light's Rampant in e8s.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				if Player.job == 31 or Player.job == 23 then\
				local hovered = false\
				AnyoneReactionSettings.Settings.LeftSide, changed = GUI:Checkbox(\"Left Side Adds\", AnyoneReactionSettings.Settings.LeftSide)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Uncheck this if you're on the right side for adds phase. Affects Earthen Aether interrupt order.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're machinist or bard, it's disabled otherwise.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
\
				local hovered = false\
				AnyoneReactionSettings.Settings.InterruptSecondAdd, changed = GUI:Checkbox(\"Interrupt Second Earthen Aether\", AnyoneReactionSettings.Settings.InterruptSecondAdd)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"If checked, reactions will interrupt the second Earthen Aether instead of the first. Unchecked, it will interrupt the first.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're on left side.\")\
					GUI:TextColored(2,2,0,2,\"Only matters if you're machinist or bard, it's disabled otherwise.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				\
			elseif (tabname == GetString(\"Hacks\")) then\
			\
				local hovered = false\
				AnyoneReactionSettings.Settings.AutoSetSpeedHacks, changed = GUI:Checkbox(\"Auto Set Speed Hacks\", AnyoneReactionSettings.Settings.AutoSetSpeedHacks)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Sets your character speed to 7.2 (default is 6.0) at the start of a fight. Changes it back upon wiping.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines for e5s through e8s.\")\
					GUI:TextColored(1,0,0,1,\"Changing the speed is safe, but I wouldn't recommend using this if someone on your team is streaming. It could be dangerous if someone spots you running slightly faster than the rest of the group.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.AutoSetCameraZoom, changed = GUI:Checkbox(\"Auto Set Max Camera Zoom\", AnyoneReactionSettings.Settings.AutoSetCameraZoom)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes your maximum camera zoom to 35 upon attaching bot (default is 20).\\n\")\
					GUI:TextColored(1,1,0,1,\"Reload lua after enabling. Disable and reload lua to change it back.\")\
					GUI:TextColored(1,0,0,1,\"Absolutely do not use this while streaming. Be careful taking screenshots too. It is very noticable that your camera is zoomed out more than normal.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
			end -- end of tabs\
			end\
			GUI:End()\
		end\
	end\
\
	-- RegisterEventHandler(\"Gameloop.Update\", AnyoneReactionSettings.func, \"AnyoneReactionSettings\")\
	ml_gui.ui_mgr:AddMember({ id = \"FFXIVMINION##MENU_AnyoneReactionSettings\", name = \"AnyoneReactionSettings\", onClick = function() AnyoneReactionSettings.open = not AnyoneReactionSettings.open end, tooltip = \"Anyone's Reactions Settings\"},\"FFXIVMINION##MENU_HEADER\")\
	RegisterEventHandler(\"Gameloop.Draw\", AnyoneReactionSettings.draw, \"AnyoneReactionSettings\")\
	d(\"Loaded Anyone's Reactions Settings\")\
	gAnyoneReactionAddonInit = true\
end\
\
self.eventConditionMismatch = true\
self.used = true",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Anyone's Reaction Menu GUI",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "7f10e422-8ebf-de76-a3c4-1781596a8106",
	},
}
return obj1
