-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 10;
		["execute"] = "SallyPLD.HotBarConfig.DivineVeil.enabled = true\
SallyPLD.HotBarConfig.Provoke.enabled = true\
SallyPLD.HotBarConfig.Shirks.enabled = true\
SallyPLD.HotBarConfig.Reprisal.enabled = true\
SallyPLD.HotBarConfig.Sheltron.enabled = true\
SallyPLD.HotBarConfig.Rampart.enabled = true\
SallyPLD.HotBarConfig.LowBlow.enabled = true\
SallyPLD.HotBarConfig.Sentinel.enabled = true\
SallyPLD.HotBarConfig.HollowGround.enabled = true\
SallyPLD.HotBarConfig.Intervention.enabled = true\
SallyPLD.HotBarConfig.FoF.enabled = true\
SallyPLD.HotBarConfig.Intervention.enabled = true\
SallyPLD.HotBarConfig.Sprint.enabled = true\
SallyPLD.HotBarConfig.Interject.enabled = true\
SallyPLD.HotBarConfig.Armslength.enabled = true\
SallyPLD.HotBarConfig.Requiescat.enabled = true\
SallyPLD.HotBarConfig.CoverTarget.enabled = true\
SallyPLD.HotBarConfig.ShieldBash.enabled = true\
SallyPLD.HotBarConfig.ClemencyTarget.enabled = true\
SallyPLD.HotBarConfig.CoverOT.enabled = true\
SallyPLD.HotBarConfig.Clemency.enabled = true\
SallyPLD.HotBarConfig.InterventionOT.enabled = true\
SallyPLD.HotBarConfig.Passage.enabled = true\
SallyPLD.HotBarConfig.SmartPassage.enabled = true\
self.used = true\
";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "Reset Hotbar on death";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "e8738461-c3dd-c0bb-9e54-79779f9dc7f5";
	};
	[2] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 9;
		["execute"] = "SallyPLD.HotBarConfig.DivineVeil.enabled = true\
SallyPLD.HotBarConfig.Provoke.enabled = true\
SallyPLD.HotBarConfig.Shirks.enabled = true\
SallyPLD.HotBarConfig.Reprisal.enabled = true\
SallyPLD.HotBarConfig.Sheltron.enabled = true\
SallyPLD.HotBarConfig.Rampart.enabled = true\
SallyPLD.HotBarConfig.LowBlow.enabled = true\
SallyPLD.HotBarConfig.Sentinel.enabled = true\
SallyPLD.HotBarConfig.HollowGround.enabled = true\
SallyPLD.HotBarConfig.Intervention.enabled = true\
SallyPLD.HotBarConfig.FoF.enabled = true\
SallyPLD.HotBarConfig.Intervention.enabled = true\
SallyPLD.HotBarConfig.Sprint.enabled = true\
SallyPLD.HotBarConfig.Interject.enabled = true\
SallyPLD.HotBarConfig.Armslength.enabled = true\
SallyPLD.HotBarConfig.Requiescat.enabled = true\
SallyPLD.HotBarConfig.CoverTarget.enabled = true\
SallyPLD.HotBarConfig.ShieldBash.enabled = true\
SallyPLD.HotBarConfig.ClemencyTarget.enabled = true\
SallyPLD.HotBarConfig.CoverOT.enabled = true\
SallyPLD.HotBarConfig.Clemency.enabled = true\
SallyPLD.HotBarConfig.InterventionOT.enabled = true\
SallyPLD.HotBarConfig.Passage.enabled = true\
SallyPLD.HotBarConfig.SmartPassage.enabled = true\
\
SallyPLD.SkillSettings.Opener.enabled = false\
SallyPLD.SkillSettings.FoF.enabled = true\
SallyPLD.SkillSettings.Requiescat.enabled = true\
SallyPLD.SkillSettings.SaveCD.enabled = false\
SallyPLD.SkillSettings.Range.enabled = true\
SallyPLD.SkillSettings.BurnBoss.enabled = false\
SallyPLD.SkillSettings.Confiteor.enabled = true\
SallyPLD.SkillSettings.Atonement.enabled = true\
SallyPLD.SkillSettings.Intervene.enabled = true\
SallyPLD.SkillSettings.DoTs.enabled = true\
SallyPLD.SkillSettings.SpiritWithin.enabled = true\
SallyPLD.SkillSettings.CirceOfScorn.enabled = true\
SallyPLD.SkillSettings.SaveJumpStack.enabled = false\
SallyPLD.SkillSettings.UseAOE.enabled = true\
SallyPLD.SkillSettings.JumpRange.enabled = true\
if eventArgs.oldData.PotsEnabled ~= nil then\
SallyPLD.SkillSettings.Potion.enabled = true\
end\
self.used = true\
\
";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "Reset Hotbar/QT on wipe";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "10c80885-5136-300c-977e-4259385c88f1";
	};
	[3] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
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
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 1;
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
		};
		["conditions"] = {
			[1] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneReactionSettings == nil";
				["conditionType"] = 1;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = -1;
				["eventEntityID"] = -1;
				["eventEntityName"] = "";
				["eventMarkerID"] = -1;
				["eventOwnerContentID"] = -1;
				["eventOwnerID"] = -1;
				["eventOwnerName"] = "";
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 0;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = -1;
				["matchAnyBuff"] = false;
				["mpType"] = 1;
				["mpValue"] = 0;
				["name"] = "";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = 1;
				["rangeCheckSourceSubType"] = 1;
				["rangeCheckSourceType"] = 1;
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
		};
		["enabled"] = true;
		["eventType"] = 1;
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
		Settings.AnyoneReactionSettings.DrawOrbs = Settings.AnyoneReactionSettings.DrawOrbs \
	end\
	\
	if Settings.AnyoneReactionSettings.DrawDragonHeads == nil then\
		Settings.AnyoneReactionSettings.DrawDragonHeads = true -- true is default\
		Settings.AnyoneReactionSettings.DrawDragonHeads = Settings.AnyoneReactionSettings.DrawDragonHeads \
	end\
	\
	if Settings.AnyoneReactionSettings.KnockbackMirrorUptime == nil then\
		Settings.AnyoneReactionSettings.KnockbackMirrorUptime = true -- true is default\
		Settings.AnyoneReactionSettings.KnockbackMirrorUptime = Settings.AnyoneReactionSettings.KnockbackMirrorUptime \
	end\
	\
	if Settings.AnyoneReactionSettings.InterruptSecondAdd == nil then\
		Settings.AnyoneReactionSettings.InterruptSecondAdd = false -- false is default\
		Settings.AnyoneReactionSettings.InterruptSecondAdd = Settings.AnyoneReactionSettings.InterruptSecondAdd \
	end\
\
	if Settings.AnyoneReactionSettings.LeftSide == nil then\
		Settings.AnyoneReactionSettings.LeftSide = true -- true is default\
		Settings.AnyoneReactionSettings.LeftSide = Settings.AnyoneReactionSettings.LeftSide \
	end	\
	\
	if Settings.AnyoneReactionSettings.DisableAssist == nil then\
		Settings.AnyoneReactionSettings.DisableAssist = false -- false is default\
		Settings.AnyoneReactionSettings.DisableAssist = Settings.AnyoneReactionSettings.DisableAssist \
	end	\
	\
	if Settings.AnyoneReactionSettings.AddsPhasePot == nil then\
		Settings.AnyoneReactionSettings.AddsPhasePot = true -- true is default\
		Settings.AnyoneReactionSettings.AddsPhasePot = Settings.AnyoneReactionSettings.AddsPhasePot \
	end	\
	\
	if Settings.AnyoneReactionSettings.AutoSetSpeedHacks == nil then\
		Settings.AnyoneReactionSettings.AutoSetSpeedHacks = false -- false is default\
		Settings.AnyoneReactionSettings.AutoSetSpeedHacks = Settings.AnyoneReactionSettings.AutoSetSpeedHacks \
	end\
	\
	if Settings.AnyoneReactionSettings.AutoSetCameraZoom == nil then\
		Settings.AnyoneReactionSettings.AutoSetCameraZoom = false -- false is default\
		Settings.AnyoneReactionSettings.AutoSetCameraZoom = Settings.AnyoneReactionSettings.AutoSetCameraZoom \
	end\
	\
	if Settings.AnyoneReactionSettings.NeverSprint == nil then\
		Settings.AnyoneReactionSettings.NeverSprint = false -- false is default\
		Settings.AnyoneReactionSettings.NeverSprint = Settings.AnyoneReactionSettings.NeverSprint \
	end\
	\
	if Settings.AnyoneReactionSettings.NeverEnpi == nil then\
		Settings.AnyoneReactionSettings.NeverEnpi = false -- false is default\
		Settings.AnyoneReactionSettings.NeverEnpi = Settings.AnyoneReactionSettings.NeverEnpi \
	end\
	\
	if Settings.AnyoneReactionSettings.AttackingGaruda == nil then\
		Settings.AnyoneReactionSettings.AttackingGaruda = false -- false is default\
		Settings.AnyoneReactionSettings.AttackingGaruda = Settings.AnyoneReactionSettings.AttackingGaruda \
	end\
\
	if Settings.AnyoneReactionSettings.UseMoogleTTS == nil then\
		Settings.AnyoneReactionSettings.UseMoogleTTS = false -- false is default\
		Settings.AnyoneReactionSettings.UseMoogleTTS = Settings.AnyoneReactionSettings.UseMoogleTTS \
	end\
	\
	if Settings.AnyoneReactionSettings.UnderstandDanger == nil then\
		Settings.AnyoneReactionSettings.UnderstandDanger = false -- false is default\
		Settings.AnyoneReactionSettings.UnderstandDanger = Settings.AnyoneReactionSettings.UnderstandDanger \
	end\
	\
	if Settings.AnyoneReactionSettings.JobCheck == nil then\
		Settings.AnyoneReactionSettings.JobCheck = false -- false is default\
		Settings.AnyoneReactionSettings.JobCheck = Settings.AnyoneReactionSettings.JobCheck \
	end\
	\
	if Settings.AnyoneReactionSettings.e5sQueenGauge == nil then\
		Settings.AnyoneReactionSettings.e5sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneReactionSettings.e5sQueenGauge = Settings.AnyoneReactionSettings.e5sQueenGauge \
	end\
	\
	if Settings.AnyoneReactionSettings.e6sQueenGauge == nil then\
		Settings.AnyoneReactionSettings.e6sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneReactionSettings.e6sQueenGauge = Settings.AnyoneReactionSettings.e6sQueenGauge \
	end\
\
	if Settings.AnyoneReactionSettings.e7sQueenGauge == nil then\
		Settings.AnyoneReactionSettings.e7sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneReactionSettings.e7sQueenGauge = Settings.AnyoneReactionSettings.e7sQueenGauge \
	end\
\
	if Settings.AnyoneReactionSettings.e8sQueenGauge == nil then\
		Settings.AnyoneReactionSettings.e8sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneReactionSettings.e8sQueenGauge = Settings.AnyoneReactionSettings.e8sQueenGauge \
	end\
	\
	if Settings.AnyoneReactionSettings.AntiGhosting == nil then\
		Settings.AnyoneReactionSettings.AntiGhosting = true -- true is default\
		Settings.AnyoneReactionSettings.AntiGhosting = Settings.AnyoneReactionSettings.AntiGhosting \
	end\
	\
	if Settings.AnyoneReactionSettings.PrepullHelper == nil then\
		Settings.AnyoneReactionSettings.PrepullHelper = false -- false is default\
		Settings.AnyoneReactionSettings.PrepullHelper = Settings.AnyoneReactionSettings.PrepullHelper \
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
			AutoSetCameraZoom = Settings.AnyoneReactionSettings.AutoSetCameraZoom,\
			NeverSprint = Settings.AnyoneReactionSettings.NeverSprint,\
			NeverEnpi = Settings.AnyoneReactionSettings.NeverEnpi,\
			AttackingGaruda = Settings.AnyoneReactionSettings.AttackingGaruda,\
			UseMoogleTTS = Settings.AnyoneReactionSettings.UseMoogleTTS,\
			UnderstandDanger = Settings.AnyoneReactionSettings.UnderstandDanger,\
			JobCheck = Settings.AnyoneReactionSettings.JobCheck,\
			e5sQueenGauge = Settings.AnyoneReactionSettings.e5sQueenGauge,\
			e6sQueenGauge = Settings.AnyoneReactionSettings.e6sQueenGauge,\
			e7sQueenGauge = Settings.AnyoneReactionSettings.e7sQueenGauge,\
			e8sQueenGauge = Settings.AnyoneReactionSettings.e8sQueenGauge,\
			AntiGhosting = Settings.AnyoneReactionSettings.AntiGhosting,\
			PrepullHelper = Settings.AnyoneReactionSettings.PrepullHelper\
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
		Settings.AnyoneReactionSettings.NeverSprint = AnyoneReactionSettings.Settings.NeverSprint\
		Settings.AnyoneReactionSettings.NeverSprint = Settings.AnyoneReactionSettings.NeverSprint\
		\
		Settings.AnyoneReactionSettings.NeverEnpi = AnyoneReactionSettings.Settings.NeverEnpi\
		Settings.AnyoneReactionSettings.NeverEnpi = Settings.AnyoneReactionSettings.NeverEnpi\
		\
		Settings.AnyoneReactionSettings.AttackingGaruda = AnyoneReactionSettings.Settings.AttackingGaruda\
		Settings.AnyoneReactionSettings.AttackingGaruda = Settings.AnyoneReactionSettings.AttackingGaruda\
		\
		Settings.AnyoneReactionSettings.UseMoogleTTS = AnyoneReactionSettings.Settings.UseMoogleTTS\
		Settings.AnyoneReactionSettings.UseMoogleTTS = Settings.AnyoneReactionSettings.UseMoogleTTS\
\
		Settings.AnyoneReactionSettings.UnderstandDanger = AnyoneReactionSettings.Settings.UnderstandDanger\
		Settings.AnyoneReactionSettings.UnderstandDanger = Settings.AnyoneReactionSettings.UnderstandDanger\
		\
		Settings.AnyoneReactionSettings.JobCheck = AnyoneReactionSettings.Settings.JobCheck\
		Settings.AnyoneReactionSettings.JobCheck = Settings.AnyoneReactionSettings.JobCheck\
		\
		Settings.AnyoneReactionSettings.AntiGhosting = AnyoneReactionSettings.Settings.AntiGhosting\
		Settings.AnyoneReactionSettings.AntiGhosting = Settings.AnyoneReactionSettings.AntiGhosting\
		\
		Settings.AnyoneReactionSettings.PrepullHelper = AnyoneReactionSettings.Settings.PrepullHelper\
		Settings.AnyoneReactionSettings.PrepullHelper = Settings.AnyoneReactionSettings.PrepullHelper\
		\
		if AnyoneReactionSettings.Settings.e5sQueenGauge > 80 then\
			AnyoneReactionSettings.Settings.e5sQueenGauge = 80\
			AnyoneReactionSettings.save()\
		elseif AnyoneReactionSettings.Settings.e5sQueenGauge < 50 then\
			AnyoneReactionSettings.Settings.e5sQueenGauge = 50\
			AnyoneReactionSettings.save()\
		else\
			Settings.AnyoneReactionSettings.e5sQueenGauge = AnyoneReactionSettings.Settings.e5sQueenGauge\
			Settings.AnyoneReactionSettings.e5sQueenGauge = Settings.AnyoneReactionSettings.e5sQueenGauge\
		end\
		\
		if AnyoneReactionSettings.Settings.e6sQueenGauge > 80 then\
			AnyoneReactionSettings.Settings.e6sQueenGauge = 80\
			AnyoneReactionSettings.save()\
		elseif AnyoneReactionSettings.Settings.e6sQueenGauge < 50 then\
			AnyoneReactionSettings.Settings.e6sQueenGauge = 50\
			AnyoneReactionSettings.save()\
		else\
			Settings.AnyoneReactionSettings.e6sQueenGauge = AnyoneReactionSettings.Settings.e6sQueenGauge\
			Settings.AnyoneReactionSettings.e6sQueenGauge = Settings.AnyoneReactionSettings.e6sQueenGauge\
		end\
		\
		if AnyoneReactionSettings.Settings.e7sQueenGauge > 80 then\
			AnyoneReactionSettings.Settings.e7sQueenGauge = 80\
			AnyoneReactionSettings.save()\
		elseif AnyoneReactionSettings.Settings.e7sQueenGauge < 50 then\
			AnyoneReactionSettings.Settings.e7sQueenGauge = 50\
			AnyoneReactionSettings.save()\
		else\
			Settings.AnyoneReactionSettings.e7sQueenGauge = AnyoneReactionSettings.Settings.e7sQueenGauge\
			Settings.AnyoneReactionSettings.e7sQueenGauge = Settings.AnyoneReactionSettings.e7sQueenGauge\
		end\
		\
		if AnyoneReactionSettings.Settings.e8sQueenGauge > 80 then\
			AnyoneReactionSettings.Settings.e8sQueenGauge = 80\
			AnyoneReactionSettings.save()\
		elseif AnyoneReactionSettings.Settings.e8sQueenGauge < 50 then\
			AnyoneReactionSettings.Settings.e8sQueenGauge = 50\
			AnyoneReactionSettings.save()\
		else\
			Settings.AnyoneReactionSettings.e8sQueenGauge = AnyoneReactionSettings.Settings.e8sQueenGauge\
			Settings.AnyoneReactionSettings.e8sQueenGauge = Settings.AnyoneReactionSettings.e8sQueenGauge\
		end\
	end\
		\
	AnyoneReactionSettings.main_tabs = GUI_CreateTabs(\"General,Fight Specific,Job Specific,Hacks\")\
	function AnyoneReactionSettings.draw()\
		if self.reference.enabled and AnyoneReactionSettings.enabled and AnyoneReactionSettings.open then\
			GUI:SetNextWindowSize(250,400,GUI.SetCond_FirstUseEver)\
			AnyoneReactionSettings.visible, AnyoneReactionSettings.open = GUI:Begin(\"Anyone's Reactions Settings\", AnyoneReactionSettings.open)\
			if AnyoneReactionSettings.visible then\
			local tabindex, tabname = GUI_DrawTabs(AnyoneReactionSettings.main_tabs)\
			if (tabname == \"General\") then\
				if Player.job == 23 or Player.job == 27 or Player.job == 31 then\
				local hovered = false\
				AnyoneReactionSettings.Settings.PrepullHelper, changed = GUI:Checkbox(\"Prepull Helper\", AnyoneReactionSettings.Settings.PrepullHelper)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Helps with pre-pull before you start the boss fight. Pelotons at a random time after countdown starts, enables 'Start Combat' in Assist settings or targets the boss at the correct time.\\n\")\
					GUI:TextColored(1,1,0,1,\"Careful if you've got a trigger happy team. If this is enabled and you're AFK, your team will be really confused how you were attacking the boss while AFK.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.JobCheck, changed = GUI:Checkbox(\"Warn me if I'm using the wrong profile\", AnyoneReactionSettings.Settings.JobCheck)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Sends a text message to the chat box (client sided) when you're currently using the wrong profile relative to what job you're playing. Message is sent upon entering a savage/ultimate fight for general triggers, and is sent upon the fight starting if the timeline is wrong.\\n\")\
					GUI:TextColored(1,1,0,1,\"The message is entirely client sided but could pose a problem if you stream and don't use a chat blocker (you should be using a chat blocker while streaming anyways), or if you take a screenshot with your chat visible.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
			elseif (tabname == \"Fight Specific\") then\
				local changed = false\
				\
				---GUI:Text(\"e5s settings\")\
				---GUI:Text(\"Currently don't have any settings for e5s.\\n\")\
				\
				---GUI:Text(\"e6s settings\")\
				---GUI:Text(\"Current job doesn't have any settings for e6s.\\n\")\
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
\
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
				if Player.job == 31 or Player.job == 23 or Player.job == 38 then\
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
				end -- end of brd/mch/dnc job check\
				\
			elseif (tabname == \"Job Specific\") then\
				if Player.job == 31 then -- check for machinist\
				\
				GUI:Text(\"Machinist General\")\
				local hovered = false\
				AnyoneReactionSettings.Settings.AntiGhosting, changed = GUI:Checkbox(\"Anti-ghosting tech\", AnyoneReactionSettings.Settings.AntiGhosting)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Sometimes if your ping is too high and you cast a skill right as the boss is going away, the skill will be used but it will deal no damage. But if you use a skill that generates gauge, you will gain that gauge but not deal any damage. So we can disable drill shortly before a phase transition to use a gauge skill instead.\\n\")\
					GUI:TextColored(1,1,0,1,\"You can disable this if you have a fairly low ping, like under 30 ping. If your drills are still getting used but dealing no damage, you can just turn it back on.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:Text(\"Machinist e5s settings\")\
				local hovered = false\
				AnyoneReactionSettings.Settings.e5sQueenGauge, changed = GUI:InputInt(\"e5s queen gauge\", AnyoneReactionSettings.Settings.e5sQueenGauge)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes when your Summon Queen is used in TensorMagnum settings when you start this fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. Make sure you're using my e5s machinist reactions.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end			\
				GUI:Text(\"Machinist e6s settings\")\
				local hovered = false\
				AnyoneReactionSettings.Settings.e6sQueenGauge, changed = GUI:InputInt(\"e6s queen gauge\", AnyoneReactionSettings.Settings.e6sQueenGauge)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes when your Summon Queen is used in TensorMagnum settings when you start this fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. Make sure you're using my e6s machinist reactions.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:Text(\"Machinist e7s settings\")\
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
				local hovered = false\
				AnyoneReactionSettings.Settings.e7sQueenGauge, changed = GUI:InputInt(\"e7s queen gauge\", AnyoneReactionSettings.Settings.e7sQueenGauge)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes when your Summon Queen is used in TensorMagnum settings when you start this fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. Make sure you're using my e7s machinist reactions.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:Text(\"Machinist e8s settings\")\
				local hovered = false\
				AnyoneReactionSettings.Settings.e8sQueenGauge, changed = GUI:InputInt(\"e8s queen gauge\", AnyoneReactionSettings.Settings.e8sQueenGauge)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes when your Summon Queen is used in TensorMagnum settings when you start this fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. Make sure you're using my e8s machinist reactions.\")\
					GUI:TextColored(1,0,0,1,\"Queen gauge will ALWAYS be set to 80 at the start of the fight. This is what the value will be changed to AFTER phase 1.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end -- end of machinist job check\
\
				\
				\
				if Player.job == 34 then -- check for samurai\
				local hovered = false\
				GUI:Text(\"Samurai\")\
				AnyoneReactionSettings.Settings.NeverSprint, changed = GUI:Checkbox(\"Never Sprint For Me\", AnyoneReactionSettings.Settings.NeverSprint)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Reactions will never use sprint. Lets you manually do it yourself.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines for e5s through e8s.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.NeverEnpi, changed = GUI:Checkbox(\"Never Enable/Disable Enpi For Me\", AnyoneReactionSettings.Settings.NeverEnpi)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Reactions will never enable/disable Enpi usage for you. Allows you to change it by yourself as you please.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines for e5s through e8s.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.UseMoogleTTS, changed = GUI:Checkbox(\"Remind Me To Use Meditate With MoogleTTS\", AnyoneReactionSettings.Settings.UseMoogleTTS)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Reminds you using MoogleTTS to press Meditate when the boss goes untargetable.\\n\")\
					GUI:TextColored(1,1,0,1,\"MoogleTTS has to be installed, will do nothing otherwise. Check pins in FFXIVMinion Discord's #addon-file-sharing channel to download.\")\
					GUI:TextColored(1,0,0,1,\"Do not recommend using if you're streaming or recording to show other people, it will be heard. You can probably pass it off as an ACT trigger, but be careful.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.AttackingGaruda, changed = GUI:Checkbox(\"Attacking Garuda During Split\", AnyoneReactionSettings.Settings.AttackingGaruda)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Only enable if you're specifically attacking garuda during the e6s split phase. If enabled, will not waste the time re-applying Higanbana to ifrit if it won't last long enough to be worth it.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're using my e6s timeline.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end -- end of samurai job check\
				\
\
				\
				if Player.job ~= 31 and Player.job ~= 34 then\
				GUI:Text(\"No settings for current job.\")\
				end\
			\
			elseif (tabname == \"Hacks\") then\
			\
			\
			if AnyoneReactionSettings.Settings.UnderstandDanger == false then\
				local hovered = false\
				AnyoneReactionSettings.Settings.UnderstandDanger, changed = GUI:Checkbox(\"I understand that these options are dangerous to use and can get me banned\", AnyoneReactionSettings.Settings.UnderstandDanger)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:TextColored(1,0,0,1,\"These options will not get you automatically banned from Square Enix's detection FOR NOW, but getting caught with speed hacks is an extreme possibility if someone records you moving slightly faster than normal. IT HAS HAPPENED IN THE PAST AND THE PERSON WAS POSTED ALL OVER REDDIT AND THE BALANCE DISCORD. The zoom hacks can't be seen by other people but if you post screenshots, videos or stream your gameplay, then it can be fairly obvious you are zoomed out more than normally allowed.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				elseif AnyoneReactionSettings.Settings.UnderstandDanger == true then\
				\
				local hovered = false\
				AnyoneReactionSettings.Settings.AutoSetSpeedHacks, changed = GUI:Checkbox(\"Auto Set Speed Hacks\", AnyoneReactionSettings.Settings.AutoSetSpeedHacks)\
				if changed then AnyoneReactionSettings.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Sets your character speed to 7 (default is 6.0) at the start of a fight. Changes it back upon wiping. Approximately 15% faster walking speed.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines for e5s through e8s.\")\
					GUI:TextColored(1,0,0,1,\"Changing the speed is safe detection-wise FOR NOW, but someone can report you. It could be especially dangerous if someone spots you running slightly faster than the rest of the group and saves a video of you doing so. In that case, it is dangerous to use, so use at your own discretion.\")\
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
self.used = true";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "Anyone's Reaction Menu GUI";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "1fb826ce-b891-f1b2-b606-35bf9bd03e05";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 11;
		["execute"] = "if Player.localmapid == 906 or Player.localmapid == 907 or Player.localmapid == 908 or Player.localmapid == 909 or Player.localmapid == 733 or Player.localmapid == 887 or Player.localmapid == 777 then\
		if Player.job ~= 19 and AnyoneReactionSettings.Settings.JobCheck == true then\
				d(\"[Anyone's Reactions] - Job check failed, sending text command.\")\
				SendTextCommand(\"/e You're using the wrong general triggers. Check that you're set to the paladin profile.\")\
		elseif Player.job == 19 then\
				d(\"[Anyone's Reactions] - Player job check succeeded\")\
		elseif Player.job ~= 19 and AnyoneReactionSettings.Settings.JobCheck == false then\
				d(\"[Anyone's Reactions] - Job check failed, but player has not enabled the setting to send a warning in chat.\")\
		end\
end\
self.used = true";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "job check";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "336d8baf-f749-db77-a527-0ef59a848557";
	};
}
return obj1
