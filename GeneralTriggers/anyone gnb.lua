-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
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
	AnyoneReactionSettings.Settings = {\
			DrawOrbs = Settings.AnyoneReactionSettings.DrawOrbs,\
			DrawDragonHeads = Settings.AnyoneReactionSettings.DrawDragonHeads,\
			KnockbackMirrorUptime = Settings.AnyoneReactionSettings.KnockbackMirrorUptime,\
			InterruptSecondAdd = Settings.AnyoneReactionSettings.InterruptSecondAdd,\
			LeftSide = Settings.AnyoneReactionSettings.LeftSide,\
			DisableAssist = Settings.AnyoneReactionSettings.DisableAssist,\
			AddsPhasePot = Settings.AnyoneReactionSettings.AddsPhasePot\
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
	end\
		\
	function AnyoneReactionSettings.draw()\
		if self.reference.enabled and AnyoneReactionSettings.enabled and AnyoneReactionSettings.open then\
			GUI:SetNextWindowSize(250,400,GUI.SetCond_FirstUseEver)\
			AnyoneReactionSettings.visible, AnyoneReactionSettings.open = GUI:Begin(\"Anyone's Reactions Settings\", AnyoneReactionSettings.open)\
			if AnyoneReactionSettings.visible then\
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
		["name"] = "draw gui",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "c8ca173e-611a-0827-8040-9524027ed423",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 9,
		["execute"] = "SallyGNB.HotBarConfig.Provoke.enabled = true\
SallyGNB.HotBarConfig.Shirk.enabled = true\
SallyGNB.HotBarConfig.Reprisal.enabled = true\
SallyGNB.HotBarConfig.HeartOfLight.enabled = true\
SallyGNB.HotBarConfig.Rampart.enabled = true\
SallyGNB.HotBarConfig.Camouflage.enabled = true\
SallyGNB.HotBarConfig.Nebula.enabled = true\
SallyGNB.HotBarConfig.SuperBolide.enabled = true\
SallyGNB.HotBarConfig.HeartOfStone.enabled = true\
SallyGNB.HotBarConfig.HeartOfStone_OT.enabled = true\
SallyGNB.HotBarConfig.Aurora.enabled = true\
SallyGNB.HotBarConfig.Aurora_OT.enabled = true\
SallyGNB.HotBarConfig.BloodFest.enabled = true\
SallyGNB.HotBarConfig.Sprint.enabled = true\
SallyGNB.HotBarConfig.Interject.enabled = true\
SallyGNB.HotBarConfig.ArmsLength.enabled = true\
SallyGNB.HotBarConfig.BlastingZone.enabled = true\
SallyGNB.HotBarConfig.BowShock.enabled = true\
SallyGNB.HotBarConfig.NoMercy.enabled = true\
SallyGNB.HotBarConfig.RoughDivide.enabled = true\
SallyGNB.HotBarConfig.LimitBreak.enabled = true\
\
SallyGNB.SkillSettings.Opener.enabled = false\
SallyGNB.SkillSettings.BloodFest.enabled = true\
SallyGNB.SkillSettings.BowShock.enabled = true\
SallyGNB.SkillSettings.SaveCD.enabled = false\
SallyGNB.SkillSettings.Range.enabled = true\
SallyGNB.SkillSettings.RoughDivide.enabled = true\
SallyGNB.SkillSettings.SonicBreak.enabled = true\
SallyGNB.SkillSettings.NoMercy.enabled = true\
SallyGNB.SkillSettings.UseAOE.enabled = true\
SallyGNB.SkillSettings.JumpRange.enabled = true\
SallyGNB.SkillSettings.BlastingZone.enabled = true\
SallyGNB.SkillSettings.Ammo.enabled = true\
SallyGNB.SkillSettings.BurnBoss.enabled = false\
SallyGNB.SkillSettings.RangeComboBreak.enabled = true\
SallyGNB.SkillSettings.SaveRoughDivide.enabled = false\
SallyGNB.SkillSettings.GnashingFang.enabled = true\
\
\
-- SallyGNB.SkillSettings.Potion.enabled = true\
--- remove \"--\" from the above line to have it enable potions on wipe.\
self.used = true\
\
if Player.job ~= 37 then\
self.eventConditionMismatch = true\
self.used = true\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "reset hotbar/qt on wipe",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "19670044-75f0-27f5-bfce-3ba622db1f85",
	},
	[3] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 10,
		["execute"] = "SallyGNB.HotBarConfig.Provoke.enabled = true\
SallyGNB.HotBarConfig.Shirk.enabled = true\
SallyGNB.HotBarConfig.Reprisal.enabled = true\
SallyGNB.HotBarConfig.HeartOfLight.enabled = true\
SallyGNB.HotBarConfig.Rampart.enabled = true\
SallyGNB.HotBarConfig.Camouflage.enabled = true\
SallyGNB.HotBarConfig.Nebula.enabled = true\
SallyGNB.HotBarConfig.SuperBolide.enabled = true\
SallyGNB.HotBarConfig.HeartOfStone.enabled = true\
SallyGNB.HotBarConfig.HeartOfStone_OT.enabled = true\
SallyGNB.HotBarConfig.Aurora.enabled = true\
SallyGNB.HotBarConfig.Aurora_OT.enabled = true\
SallyGNB.HotBarConfig.BloodFest.enabled = true\
SallyGNB.HotBarConfig.Sprint.enabled = true\
SallyGNB.HotBarConfig.Interject.enabled = true\
SallyGNB.HotBarConfig.ArmsLength.enabled = true\
SallyGNB.HotBarConfig.BlastingZone.enabled = true\
SallyGNB.HotBarConfig.BowShock.enabled = true\
SallyGNB.HotBarConfig.NoMercy.enabled = true\
SallyGNB.HotBarConfig.RoughDivide.enabled = true\
SallyGNB.HotBarConfig.LimitBreak.enabled = true\
self.used = true\
\
if Player.job ~= 37 then\
self.eventConditionMismatch = true\
self.used = true\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "reset hotbar on death",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "b574aadf-7e06-af4c-b9b7-6b5a3c1dc700",
	},
}
return obj1
