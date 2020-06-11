-- Persistent Data
local multiRefObjects = {
{};{};{};{};{};{};{};{};{};{};{};{};
} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "--misc reactions--";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "9e26fe14-65f5-2d4d-96c0-bfc76439b48b";
	};
	[2] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 9;
		["execute"] = "-- Quick Toggles\
ACR_TensorMagnum_CD = true\
ACR_TensorMagnum_AOE = false\
ACR_TensorMagnum_Hypercharge = true\
ACR_TensorMagnum_Reassemble = true\
ACR_TensorMagnum_SummonQueen = true\
ACR_TensorMagnum_WildfireInAOE = true\
ACR_TensorMagnum_Flamethrower = false\
ACR_TensorMagnum_Drill = true\
ACR_TensorMagnum_Bioblaster = true\
ACR_TensorMagnum_AirAnchor = true\
ACR_TensorMagnum_Peloton = false\
ACR_TensorMagnum_HoldGR = false\
ACR_TensorMagnum_HoldRico = false\
-- Normal Hotbar\
ACR_TensorMagnum_Hotbar_Tactician = false\
ACR_TensorMagnum_Hotbar_ArmsLength = false\
ACR_TensorMagnum_Hotbar_SummonQueen = false\
ACR_TensorMagnum_Hotbar_QueenOverdrive = false\
ACR_TensorMagnum_Hotbar_Detonate = false\
ACR_TensorMagnum_Hotbar_HeadGraze = false\
ACR_TensorMagnum_Hotbar_SecondWind = false\
ACR_TensorMagnum_Hotbar_Potion = false\
ACR_TensorMagnum_Hotbar_Sprint = false\
ACR_TensorMagnum_Hotbar_LimitBreak = false\
ACR_TensorMagnum_Hotbar_Flamethrower = false\
-- Safe Hotbar \
ACR_TensorMagnum_Hotbar_Tactician_Safe = false\
ACR_TensorMagnum_Hotbar_ArmsLength_Safe = false\
ACR_TensorMagnum_Hotbar_SummonQueen_Safe = false\
ACR_TensorMagnum_Hotbar_QueenOverdrive_Safe = false\
ACR_TensorMagnum_Hotbar_Detonate_Safe = false\
ACR_TensorMagnum_Hotbar_Potion_Safe = false\
ACR_TensorMagnum_Hotbar_HeadGraze_Safe = false\
ACR_TensorMagnum_Hotbar_SecondWind_Safe = false\
ACR_TensorMagnum_Hotbar_Sprint_Safe = false\
ACR_TensorMagnum_Hotbar_LimitBreak_Safe = false\
ACR_TensorMagnum_Hotbar_Flamethrower_Safe = false\
\
-- Custom Hotbar\
ACR_TensorMagnum_Hotbar_HeadGraze_Custom = false\
ACR_TensorMagnum_Hotbar_HeadGraze_Custom_Safe = false\
\
if eventArgs.oldData.PotsEnabled ~= nil then\
		ACR_TensorMagnum_Potion = true\
end\
self.used = true\
\
if not AnyoneCore.Settings.AutoSetSpeedHacks == nil then\
		if AnyoneCore.Settings.AutoSetSpeedHacks == true then\
				gDevHackWalkSpeed = 6.0\
				Player:SetSpeed(1,gDevHackWalkSpeed,gDevHackWalkSpeed,gDevHackWalkSpeed)\
		end\
end\
\
Player:ClearTarget()\
\
--- End Reaction\
self.used = true\
\
";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "reset toggles on wipe";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "dfbbddcf-91b4-f0a6-ac91-7468ba52fdc9";
	};
	[3] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
				};
				["endIfUsed"] = true;
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
		};
		["enabled"] = true;
		["eventType"] = 10;
		["execute"] = "-- Normal Hotbar\
ACR_TensorMagnum_Hotbar_Tactician = false\
ACR_TensorMagnum_Hotbar_ArmsLength = false\
ACR_TensorMagnum_Hotbar_SummonQueen = false\
ACR_TensorMagnum_Hotbar_QueenOverdrive = false\
ACR_TensorMagnum_Hotbar_Detonate = false\
ACR_TensorMagnum_Hotbar_Potion = false\
ACR_TensorMagnum_Hotbar_HeadGraze = false\
ACR_TensorMagnum_Hotbar_SecondWind = false\
ACR_TensorMagnum_Hotbar_Sprint = false\
ACR_TensorMagnum_Hotbar_LimitBreak = false\
ACR_TensorMagnum_Hotbar_Flamethrower = false\
-- Safe Hotbar \
ACR_TensorMagnum_Hotbar_Tactician_Safe = false\
ACR_TensorMagnum_Hotbar_ArmsLength_Safe = false\
ACR_TensorMagnum_Hotbar_SummonQueen_Safe = false\
ACR_TensorMagnum_Hotbar_QueenOverdrive_Safe = false\
ACR_TensorMagnum_Hotbar_Detonate_Safe = false\
ACR_TensorMagnum_Hotbar_Potion_Safe = false\
ACR_TensorMagnum_Hotbar_HeadGraze_Safe = false\
ACR_TensorMagnum_Hotbar_SecondWind_Safe = false\
ACR_TensorMagnum_Hotbar_Sprint_Safe = false\
ACR_TensorMagnum_Hotbar_LimitBreak_Safe = false\
ACR_TensorMagnum_Hotbar_Flamethrower_Safe = false\
-- Custom Hotbar\
ACR_TensorMagnum_Hotbar_HeadGraze_Custom = false\
ACR_TensorMagnum_Hotbar_HeadGraze_Custom_Safe = false\
\
\
-- End Reaction\
self.used = true";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "reset hotbar on death";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "8fcd65b6-5efb-1221-94a1-efdec8ed11d0";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if not gAnyoneCoreInitialize then\
	AnyoneCore = {\
		enabled = true,\
		data = {},\
		visible = true,\
		open = false,\
	}\
\
	if Settings.AnyoneCore.AutoSetMaxCameraZoom == true then\
		gDevHackMaxZoom = 35.0\
		Hacks:SetCamMaxZoom(gDevHackMinZoom,gDevHackMaxZoom)\
	end\
\
	if Settings.AnyoneCore.DrawOrbs == nil then\
		Settings.AnyoneCore.DrawOrbs = true -- true is default\
		Settings.AnyoneCore.DrawOrbs = Settings.AnyoneCore.DrawOrbs \
	end\
	\
	if Settings.AnyoneCore.DrawDragonHeads == nil then\
		Settings.AnyoneCore.DrawDragonHeads = true -- true is default\
		Settings.AnyoneCore.DrawDragonHeads = Settings.AnyoneCore.DrawDragonHeads \
	end\
	\
	if Settings.AnyoneCore.KnockbackMirrorUptime == nil then\
		Settings.AnyoneCore.KnockbackMirrorUptime = true -- true is default\
		Settings.AnyoneCore.KnockbackMirrorUptime = Settings.AnyoneCore.KnockbackMirrorUptime \
	end\
	\
	if Settings.AnyoneCore.InterruptSecondAdd == nil then\
		Settings.AnyoneCore.InterruptSecondAdd = false -- false is default\
		Settings.AnyoneCore.InterruptSecondAdd = Settings.AnyoneCore.InterruptSecondAdd \
	end\
\
	if Settings.AnyoneCore.LeftSide == nil then\
		Settings.AnyoneCore.LeftSide = true -- true is default\
		Settings.AnyoneCore.LeftSide = Settings.AnyoneCore.LeftSide \
	end	\
	\
	if Settings.AnyoneCore.DisableAssist == nil then\
		Settings.AnyoneCore.DisableAssist = false -- false is default\
		Settings.AnyoneCore.DisableAssist = Settings.AnyoneCore.DisableAssist \
	end	\
	\
	if Settings.AnyoneCore.AddsPhasePot == nil then\
		Settings.AnyoneCore.AddsPhasePot = true -- true is default\
		Settings.AnyoneCore.AddsPhasePot = Settings.AnyoneCore.AddsPhasePot \
	end	\
	\
	if Settings.AnyoneCore.AutoSetSpeedHacks == nil then\
		Settings.AnyoneCore.AutoSetSpeedHacks = false -- false is default\
		Settings.AnyoneCore.AutoSetSpeedHacks = Settings.AnyoneCore.AutoSetSpeedHacks \
	end\
	\
	if Settings.AnyoneCore.AutoSetMaxCameraZoom == nil then\
		Settings.AnyoneCore.AutoSetMaxCameraZoom = false -- false is default\
		Settings.AnyoneCore.AutoSetMaxCameraZoom = Settings.AnyoneCore.AutoSetMaxCameraZoom \
	end\
	\
	if Settings.AnyoneCore.UseSprint == nil then\
		Settings.AnyoneCore.UseSprint = false -- false is default\
		Settings.AnyoneCore.UseSprint = Settings.AnyoneCore.UseSprint \
	end\
	\
	if Settings.AnyoneCore.NeverEnpi == nil then\
		Settings.AnyoneCore.NeverEnpi = false -- false is default\
		Settings.AnyoneCore.NeverEnpi = Settings.AnyoneCore.NeverEnpi \
	end\
	\
	if Settings.AnyoneCore.AttackingGaruda == nil then\
		Settings.AnyoneCore.AttackingGaruda = false -- false is default\
		Settings.AnyoneCore.AttackingGaruda = Settings.AnyoneCore.AttackingGaruda \
	end\
\
	if Settings.AnyoneCore.UseMoogleTTS == nil then\
		Settings.AnyoneCore.UseMoogleTTS = false -- false is default\
		Settings.AnyoneCore.UseMoogleTTS = Settings.AnyoneCore.UseMoogleTTS \
	end\
	\
	if Settings.AnyoneCore.UnderstandDanger == nil then\
		Settings.AnyoneCore.UnderstandDanger = false -- false is default\
		Settings.AnyoneCore.UnderstandDanger = Settings.AnyoneCore.UnderstandDanger \
	end\
	\
	if Settings.AnyoneCore.JobCheck == nil then\
		Settings.AnyoneCore.JobCheck = false -- false is default\
		Settings.AnyoneCore.JobCheck = Settings.AnyoneCore.JobCheck \
	end\
	\
	if Settings.AnyoneCore.e5sQueenGauge == nil then\
		Settings.AnyoneCore.e5sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneCore.e5sQueenGauge = Settings.AnyoneCore.e5sQueenGauge \
	end\
	\
	if Settings.AnyoneCore.e6sQueenGauge == nil then\
		Settings.AnyoneCore.e6sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneCore.e6sQueenGauge = Settings.AnyoneCore.e6sQueenGauge \
	end\
\
	if Settings.AnyoneCore.e7sQueenGauge == nil then\
		Settings.AnyoneCore.e7sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneCore.e7sQueenGauge = Settings.AnyoneCore.e7sQueenGauge \
	end\
\
	if Settings.AnyoneCore.e8sQueenGauge == nil then\
		Settings.AnyoneCore.e8sQueenGauge = 50 -- 50 is default\
		Settings.AnyoneCore.e8sQueenGauge = Settings.AnyoneCore.e8sQueenGauge \
	end\
	\
	if Settings.AnyoneCore.AntiGhosting == nil then\
		Settings.AnyoneCore.AntiGhosting = true -- true is default\
		Settings.AnyoneCore.AntiGhosting = Settings.AnyoneCore.AntiGhosting \
	end\
	\
	if Settings.AnyoneCore.PrepullHelper == nil then\
		Settings.AnyoneCore.PrepullHelper = false -- false is default\
		Settings.AnyoneCore.PrepullHelper = Settings.AnyoneCore.PrepullHelper \
	end\
	\
	if Settings.AnyoneCore.NorthStratMitigation == nil then\
		Settings.AnyoneCore.NorthStratMitigation = true -- true is default\
		Settings.AnyoneCore.NorthStratMitigation = Settings.AnyoneCore.NorthStratMitigation \
	end\
	\
	if Settings.AnyoneCore.DiamondFrostUptime == nil then\
		Settings.AnyoneCore.DiamondFrostUptime = false -- false is default\
		Settings.AnyoneCore.DiamondFrostUptime = Settings.AnyoneCore.DiamondFrostUptime \
	end\
	\
	AnyoneCore.Settings = {\
			DrawOrbs = Settings.AnyoneCore.DrawOrbs,\
			DrawDragonHeads = Settings.AnyoneCore.DrawDragonHeads,\
			KnockbackMirrorUptime = Settings.AnyoneCore.KnockbackMirrorUptime,\
			InterruptSecondAdd = Settings.AnyoneCore.InterruptSecondAdd,\
			LeftSide = Settings.AnyoneCore.LeftSide,\
			DisableAssist = Settings.AnyoneCore.DisableAssist,\
			AddsPhasePot = Settings.AnyoneCore.AddsPhasePot,\
			AutoSetSpeedHacks = Settings.AnyoneCore.AutoSetSpeedHacks,\
			AutoSetMaxCameraZoom = Settings.AnyoneCore.AutoSetMaxCameraZoom,\
			UseSprint = Settings.AnyoneCore.UseSprint,\
			NeverEnpi = Settings.AnyoneCore.NeverEnpi,\
			AttackingGaruda = Settings.AnyoneCore.AttackingGaruda,\
			UseMoogleTTS = Settings.AnyoneCore.UseMoogleTTS,\
			UnderstandDanger = Settings.AnyoneCore.UnderstandDanger,\
			JobCheck = Settings.AnyoneCore.JobCheck,\
			e5sQueenGauge = Settings.AnyoneCore.e5sQueenGauge,\
			e6sQueenGauge = Settings.AnyoneCore.e6sQueenGauge,\
			e7sQueenGauge = Settings.AnyoneCore.e7sQueenGauge,\
			e8sQueenGauge = Settings.AnyoneCore.e8sQueenGauge,\
			AntiGhosting = Settings.AnyoneCore.AntiGhosting,\
			PrepullHelper = Settings.AnyoneCore.PrepullHelper,\
			NorthStratMitigation = Settings.AnyoneCore.NorthStratMitigation,\
			DiamondFrostUptime = Settings.AnyoneCore.DiamondFrostUptime\
		}\
\
	function AnyoneCore.save()\
		Settings.AnyoneCore.DrawOrbs = AnyoneCore.Settings.DrawOrbs\
		Settings.AnyoneCore.DrawOrbs = Settings.AnyoneCore.DrawOrbs\
\
		Settings.AnyoneCore.DrawDragonHeads = AnyoneCore.Settings.DrawDragonHeads\
		Settings.AnyoneCore.DrawDragonHeads = Settings.AnyoneCore.DrawDragonHeads\
		\
		Settings.AnyoneCore.KnockbackMirrorUptime = AnyoneCore.Settings.KnockbackMirrorUptime\
		Settings.AnyoneCore.KnockbackMirrorUptime = Settings.AnyoneCore.KnockbackMirrorUptime\
		\
		Settings.AnyoneCore.InterruptSecondAdd = AnyoneCore.Settings.InterruptSecondAdd\
		Settings.AnyoneCore.InterruptSecondAdd = Settings.AnyoneCore.InterruptSecondAdd\
		\
		Settings.AnyoneCore.LeftSide = AnyoneCore.Settings.LeftSide\
		Settings.AnyoneCore.LeftSide = Settings.AnyoneCore.LeftSide	\
\
		Settings.AnyoneCore.DisableAssist = AnyoneCore.Settings.DisableAssist\
		Settings.AnyoneCore.DisableAssist = Settings.AnyoneCore.DisableAssist		\
		\
		Settings.AnyoneCore.AddsPhasePot = AnyoneCore.Settings.AddsPhasePot\
		Settings.AnyoneCore.AddsPhasePot = Settings.AnyoneCore.AddsPhasePot	\
		\
		Settings.AnyoneCore.AutoSetSpeedHacks = AnyoneCore.Settings.AutoSetSpeedHacks\
		Settings.AnyoneCore.AutoSetSpeedHacks = Settings.AnyoneCore.AutoSetSpeedHacks\
		\
		Settings.AnyoneCore.AutoSetMaxCameraZoom = AnyoneCore.Settings.AutoSetMaxCameraZoom\
		Settings.AnyoneCore.AutoSetMaxCameraZoom = Settings.AnyoneCore.AutoSetMaxCameraZoom\
		\
		Settings.AnyoneCore.UseSprint = AnyoneCore.Settings.UseSprint\
		Settings.AnyoneCore.UseSprint = Settings.AnyoneCore.UseSprint\
		\
		Settings.AnyoneCore.NeverEnpi = AnyoneCore.Settings.NeverEnpi\
		Settings.AnyoneCore.NeverEnpi = Settings.AnyoneCore.NeverEnpi\
		\
		Settings.AnyoneCore.AttackingGaruda = AnyoneCore.Settings.AttackingGaruda\
		Settings.AnyoneCore.AttackingGaruda = Settings.AnyoneCore.AttackingGaruda\
		\
		Settings.AnyoneCore.UseMoogleTTS = AnyoneCore.Settings.UseMoogleTTS\
		Settings.AnyoneCore.UseMoogleTTS = Settings.AnyoneCore.UseMoogleTTS\
\
		Settings.AnyoneCore.UnderstandDanger = AnyoneCore.Settings.UnderstandDanger\
		Settings.AnyoneCore.UnderstandDanger = Settings.AnyoneCore.UnderstandDanger\
		\
		Settings.AnyoneCore.JobCheck = AnyoneCore.Settings.JobCheck\
		Settings.AnyoneCore.JobCheck = Settings.AnyoneCore.JobCheck\
		\
		Settings.AnyoneCore.AntiGhosting = AnyoneCore.Settings.AntiGhosting\
		Settings.AnyoneCore.AntiGhosting = Settings.AnyoneCore.AntiGhosting\
		\
		Settings.AnyoneCore.PrepullHelper = AnyoneCore.Settings.PrepullHelper\
		Settings.AnyoneCore.PrepullHelper = Settings.AnyoneCore.PrepullHelper\
		\
		Settings.AnyoneCore.NorthStratMitigation = AnyoneCore.Settings.NorthStratMitigation\
		Settings.AnyoneCore.NorthStratMitigation = Settings.AnyoneCore.NorthStratMitigation\
		\
		Settings.AnyoneCore.DiamondFrostUptime = AnyoneCore.Settings.DiamondFrostUptime\
		Settings.AnyoneCore.DiamondFrostUptime = Settings.AnyoneCore.DiamondFrostUptime\
		\
		if AnyoneCore.Settings.e5sQueenGauge > 80 then\
			AnyoneCore.Settings.e5sQueenGauge = 80\
			AnyoneCore.save()\
		elseif AnyoneCore.Settings.e5sQueenGauge < 50 then\
			AnyoneCore.Settings.e5sQueenGauge = 50\
			AnyoneCore.save()\
		else\
			Settings.AnyoneCore.e5sQueenGauge = AnyoneCore.Settings.e5sQueenGauge\
			Settings.AnyoneCore.e5sQueenGauge = Settings.AnyoneCore.e5sQueenGauge\
		end\
		\
		if AnyoneCore.Settings.e6sQueenGauge > 80 then\
			AnyoneCore.Settings.e6sQueenGauge = 80\
			AnyoneCore.save()\
		elseif AnyoneCore.Settings.e6sQueenGauge < 50 then\
			AnyoneCore.Settings.e6sQueenGauge = 50\
			AnyoneCore.save()\
		else\
			Settings.AnyoneCore.e6sQueenGauge = AnyoneCore.Settings.e6sQueenGauge\
			Settings.AnyoneCore.e6sQueenGauge = Settings.AnyoneCore.e6sQueenGauge\
		end\
		\
		if AnyoneCore.Settings.e7sQueenGauge > 80 then\
			AnyoneCore.Settings.e7sQueenGauge = 80\
			AnyoneCore.save()\
		elseif AnyoneCore.Settings.e7sQueenGauge < 50 then\
			AnyoneCore.Settings.e7sQueenGauge = 50\
			AnyoneCore.save()\
		else\
			Settings.AnyoneCore.e7sQueenGauge = AnyoneCore.Settings.e7sQueenGauge\
			Settings.AnyoneCore.e7sQueenGauge = Settings.AnyoneCore.e7sQueenGauge\
		end\
		\
		if AnyoneCore.Settings.e8sQueenGauge > 80 then\
			AnyoneCore.Settings.e8sQueenGauge = 80\
			AnyoneCore.save()\
		elseif AnyoneCore.Settings.e8sQueenGauge < 50 then\
			AnyoneCore.Settings.e8sQueenGauge = 50\
			AnyoneCore.save()\
		else\
			Settings.AnyoneCore.e8sQueenGauge = AnyoneCore.Settings.e8sQueenGauge\
			Settings.AnyoneCore.e8sQueenGauge = Settings.AnyoneCore.e8sQueenGauge\
		end\
	end\
		\
	AnyoneCore.main_tabs = GUI_CreateTabs(\"General,Fight Specific,Job Specific,Hacks\")\
	function AnyoneCore.draw()\
		if self.reference.enabled and AnyoneCore.enabled and AnyoneCore.open then\
			GUI:SetNextWindowSize(250,400,GUI.SetCond_FirstUseEver)\
			AnyoneCore.visible, AnyoneCore.open = GUI:Begin(\"AnyoneCore\", AnyoneCore.open)\
			if AnyoneCore.visible then\
			local tabindex, tabname = GUI_DrawTabs(AnyoneCore.main_tabs)\
			if (tabname == \"General\") then\
				if Player.job == 23 or Player.job == 27 or Player.job == 31 then\
				local hovered = false\
				AnyoneCore.Settings.PrepullHelper, changed = GUI:Checkbox(\"Prepull Helper\", AnyoneCore.Settings.PrepullHelper)\
				if changed then AnyoneCore.save() end\
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
				if Player.job == 23 or Player.job == 27 or Player.job == 31 or Player.job == 34 or Player.job == 38 then\
				local hovered = false\
				AnyoneCore.Settings.UseSprint, changed = GUI:Checkbox(\"Use Sprint\", AnyoneCore.Settings.UseSprint)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Enables reactions to use sprint for you..\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines for e5s through e8s.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.JobCheck, changed = GUI:Checkbox(\"Warn me if I'm using the wrong profile\", AnyoneCore.Settings.JobCheck)\
				if changed then AnyoneCore.save() end\
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
				---GUI:Text(\"			e5s settings\")\
				---GUI:Text(\"Currently don't have any settings for e5s.\\n\")\
				if Player.job == 31 or Player.job == 23 or Player.job == 38 then ---brd/mch/dnc\
				GUI:Text(\"			e6s settings\")\
				local hovered = false\
				AnyoneCore.Settings.NorthStratMitigation, changed = GUI:Checkbox(\"Mitigate Strike Spark\", AnyoneCore.Settings.NorthStratMitigation)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Uses rdps mitigation before Strike Spark.\")\
					GUI:TextColored(1,1,0,1,\"Sometimes teams will choose to go north for Strike Spark for the sake of melee uptime. Since there's a lot of outgoing damage here, it's usually a good idea to use rdps mitigations. So enable this to throw out tactician/shield samba/troubador before strike spark.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				---else\
				---GUI:Text(\"Current job doesn't have any settings for e6s.\\n\")\
				\
				end ---end bard/mch/dnc job check\
				\
				GUI:Text(\"			e7s settings\")\
				local hovered = false\
				AnyoneCore.Settings.DisableAssist, changed = GUI:Checkbox(\"Disable Assist for Away With Thee\", AnyoneCore.Settings.DisableAssist)\
				if changed then AnyoneCore.save() end\
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
				GUI:Text(\"			e8s settings\")\
				local hovered = false\
				AnyoneCore.Settings.KnockbackMirrorUptime, changed = GUI:Checkbox(\"Knockback Mirror Uptime Strat\", AnyoneCore.Settings.KnockbackMirrorUptime)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.DiamondFrostUptime, changed = GUI:Checkbox(\"Diamond Frost Uptime Strat\", AnyoneCore.Settings.DiamondFrostUptime)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Automatically uses Arm's Length or Surecast during Diamond Frost. \\n\")\
					GUI:TextColored(1,1,0,1,\"Definitely do not have this enabled if you're not doing this strat.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.DrawDragonHeads, changed = GUI:Checkbox(\"Draw Dragon Heads\", AnyoneCore.Settings.DrawDragonHeads)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.DrawOrbs, changed = GUI:Checkbox(\"Draw Orbs\", AnyoneCore.Settings.DrawOrbs)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.LeftSide, changed = GUI:Checkbox(\"Left Side Adds\", AnyoneCore.Settings.LeftSide)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.InterruptSecondAdd, changed = GUI:Checkbox(\"Interrupt Second Earthen Aether\", AnyoneCore.Settings.InterruptSecondAdd)\
				if changed then AnyoneCore.save() end\
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
				GUI:Text(\"			Machinist General\")\
				local hovered = false\
				AnyoneCore.Settings.AntiGhosting, changed = GUI:Checkbox(\"Anti-ghosting tech\", AnyoneCore.Settings.AntiGhosting)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Sometimes if your ping is too high and you cast a skill right as the boss is going away, the skill will be used but it will deal no damage. But if you use a skill that generates gauge, you will gain that gauge but not deal any damage. So we can disable drill shortly before a phase transition to use a gauge skill instead.\\n\")\
					GUI:TextColored(1,1,0,1,\"You can disable this if you have a fairly low ping, like under 30 ping. If your drills are still getting used but dealing no damage, you can just turn it back on.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:Text(\"			Machinist e5s settings\")\
				local hovered = false\
				AnyoneCore.Settings.e5sQueenGauge, changed = GUI:InputInt(\"e5s queen gauge\", AnyoneCore.Settings.e5sQueenGauge)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes when your Summon Queen is used in TensorMagnum settings when you start this fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. Make sure you're using my e5s machinist reactions.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end			\
				GUI:Text(\"			Machinist e6s settings\")\
				local hovered = false\
				AnyoneCore.Settings.e6sQueenGauge, changed = GUI:InputInt(\"e6s queen gauge\", AnyoneCore.Settings.e6sQueenGauge)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes when your Summon Queen is used in TensorMagnum settings when you start this fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. Make sure you're using my e6s machinist reactions.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:Text(\"			Machinist e7s settings\")\
				local hovered = false\
				AnyoneCore.Settings.AddsPhasePot, changed = GUI:Checkbox(\"Adds Phase Pot\", AnyoneCore.Settings.AddsPhasePot)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.e7sQueenGauge, changed = GUI:InputInt(\"e7s queen gauge\", AnyoneCore.Settings.e7sQueenGauge)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Changes when your Summon Queen is used in TensorMagnum settings when you start this fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. Make sure you're using my e7s machinist reactions.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:Text(\"			Machinist e8s settings\")\
				local hovered = false\
				AnyoneCore.Settings.e8sQueenGauge, changed = GUI:InputInt(\"e8s queen gauge\", AnyoneCore.Settings.e8sQueenGauge)\
				if changed then AnyoneCore.save() end\
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
				\
				GUI:Text(\"			Samurai\")\
				local hovered = false\
				AnyoneCore.Settings.NeverEnpi, changed = GUI:Checkbox(\"Never Enable/Disable Enpi For Me\", AnyoneCore.Settings.NeverEnpi)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.UseMoogleTTS, changed = GUI:Checkbox(\"Remind Me To Use Meditate With MoogleTTS\", AnyoneCore.Settings.UseMoogleTTS)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.AttackingGaruda, changed = GUI:Checkbox(\"Attacking Garuda During Split\", AnyoneCore.Settings.AttackingGaruda)\
				if changed then AnyoneCore.save() end\
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
			if AnyoneCore.Settings.UnderstandDanger == false then\
				local hovered = false\
				AnyoneCore.Settings.UnderstandDanger, changed = GUI:Checkbox(\"I understand that these options are dangerous to use and can get me banned\", AnyoneCore.Settings.UnderstandDanger)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:TextColored(1,0,0,1,\"These options will not get you automatically banned from Square Enix's detection FOR NOW, but getting caught with speed hacks is an extreme possibility if someone records you moving slightly faster than normal. IT HAS HAPPENED IN THE PAST AND THE PERSON WAS POSTED ALL OVER REDDIT AND THE BALANCE DISCORD. The zoom hacks can't be seen by other people but if you post screenshots, videos or stream your gameplay, then it can be fairly obvious you are zoomed out more than normally allowed.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				elseif AnyoneCore.Settings.UnderstandDanger == true then\
				\
				local hovered = false\
				AnyoneCore.Settings.AutoSetSpeedHacks, changed = GUI:Checkbox(\"Auto Set Speed Hacks\", AnyoneCore.Settings.AutoSetSpeedHacks)\
				if changed then AnyoneCore.save() end\
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
				AnyoneCore.Settings.AutoSetMaxCameraZoom, changed = GUI:Checkbox(\"Auto Set Max Camera Zoom\", AnyoneCore.Settings.AutoSetMaxCameraZoom)\
				if changed then AnyoneCore.save() end\
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
	-- RegisterEventHandler(\"Gameloop.Update\", AnyoneCore.func, \"AnyoneCore\")\
	ml_gui.ui_mgr:AddMember({ id = \"FFXIVMINION##MENU_AnyoneCore\", name = \"AnyoneCore\", onClick = function() AnyoneCore.open = not AnyoneCore.open end, tooltip = \"AnyoneCore\"},\"FFXIVMINION##MENU_HEADER\")\
	RegisterEventHandler(\"Gameloop.Draw\", AnyoneCore.draw, \"AnyoneCore\")\
	d(\"Loaded AnyoneCore\")\
	gAnyoneCoreInitialize = true\
end\
\
self.eventConditionMismatch = true\
self.used = true";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "AnyoneCore";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "9b99924f-584d-e904-a966-692ca505b8a6";
	};
	[5] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "if IsControlOpen(\"_QTEMash\") then\
    PressKey(0x31)\
    PressKey(0x32)\
    PressKey(0x33)\
    PressKey(0x34)\
    PressKey(0x35)\
    PressKey(0x36)\
    PressKey(0x37)\
    PressKey(0x38)\
    PressKey(0x39)\
    PressKey(0x31)\
    PressKey(0x32)\
    PressKey(0x33)\
    PressKey(0x34)\
    PressKey(0x35)\
    PressKey(0x36)\
    PressKey(0x37)\
    PressKey(0x38)\
    PressKey(0x39)\
end\
self.used = true\
self.eventConditionMismatch = true -- supress log";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "active time maneuver";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "a2a5e38e-3b6e-4209-be97-c85c08b6f9a9";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 11;
		["execute"] = "if Player.localmapid == 906 or Player.localmapid == 907 or Player.localmapid == 908 or Player.localmapid == 909 or Player.localmapid == 733 or Player.localmapid == 887 or Player.localmapid == 777 then\
		if Player.job ~= 31 and AnyoneCore.Settings.JobCheck == true then\
				d(\"[Anyone's Reactions] - Job check failed, sending text command.\")\
				SendTextCommand(\"/e You're using the wrong general triggers. Check that you're set to the machinist profile.\")\
		elseif Player.job == 31 then\
				d(\"[Anyone's Reactions] - Player job check succeeded\")\
		elseif Player.job ~= 31 and AnyoneCore.Settings.JobCheck == false then\
				d(\"[Anyone's Reactions] - Job check failed, but player has not enabled the setting to send a warning in chat.\")\
		end\
end\
self.used = true\
";
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
		["uuid"] = "62e38fb3-3894-52a9-b90b-ff224f0d6447";
	};
	[7] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local line = eventArgs.line.line\
local time = line:match(\"Battle commencing in (%d+) seconds!\")\
if time ~= nil then\
				data.countdownTime = Now()\
				data.countdownDuration = tonumber(time)\
				data.pelotonDelay = math.random(500, 7000)\
				data.reassembleDelay = math.random(1000, 2100)\
end\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "record countdown time";
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
			[2] = {
				["aType"] = 1;
				["actionID"] = 7557;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPos"] = {
				};
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 6;
					[5] = 7;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "";
				["positionPreviewColor"] = {
				};
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
			[3] = {
				["aType"] = 1;
				["actionID"] = 2876;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPos"] = {
				};
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 10;
					[4] = 9;
					[5] = 7;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "";
				["positionPreviewColor"] = {
				};
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
			[4] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 4;
					[4] = 7;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "target nearest";
				["potType"] = 1;
				["setTarget"] = true;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 5;
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[5] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "gStartCombat = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 4;
					[4] = 7;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "enable start combat";
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
			[6] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 8;
					[4] = 7;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "target nearest (pots)";
				["potType"] = 1;
				["setTarget"] = true;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 5;
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[7] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "gStartCombat = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 8;
					[4] = 7;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "enable start combat (pots)";
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
			[8] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 5;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "dequeue if expired";
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
			[9] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if data.countdownCanceled == true or (data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 0) then\
    data.countdownCanceled = nil\
    self.used = true\
end";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "dequeue if canceled";
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
				["conditionLua"] = "return FFXIV_Common_BotRunning or xivopeners.running";
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
				["name"] = "is bot running";
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "local line = eventArgs.line.line\
local time = line:match(\"Battle commencing in (%d+) seconds!\\n\")\
return time ~= nil";
				["conditionType"] = 1;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "Battle commencing in 10 seconds!";
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
				["name"] = "is text countdown";
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 13000 - data.pelotonDelay";
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
				["name"] = "time is -13 + random";
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
			[4] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and (xivopeners.settings[Player.job].useTincture == false or xivopeners.running == false) and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 200";
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
				["name"] = "time is -.2";
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
			[5] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 0";
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
				["name"] = "time is < 0";
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
			[6] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 2;
				["buffDuration"] = 0;
				["buffID"] = 1199;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
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
			[7] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore.Settings.PrepullHelper == true";
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
				["name"] = "is prepull enabled";
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
			[8] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and (xivopeners.settings[Player.job].useTincture == true and xivopeners.running == true) and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 1600";
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
				["name"] = "time is -1.6";
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
			[9] = {
				["actionCDValue"] = 1;
				["actionID"] = 2876;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 4;
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
			[10] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 6000 - data.reassembleDelay";
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
				["name"] = "time is -6 + random";
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
		["eventType"] = 7;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "prepull shit";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "787c8b28-b128-d6ec-9a9c-9006c49d794f";
	};
	[8] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.countdownCanceled = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
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
				["category"] = 5;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "Countdown canceled by";
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
		["eventType"] = 7;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "countdown cancel";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "531fa323-5eeb-39a9-bafa-d70fd15b90c3";
	};
	[9] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "--edens gate reactions--";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4afa3ecf-546e-577e-9d0a-4a8b175f8862";
	};
	[10] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 3;
					[3] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 3;
					[3] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Potion";
				["gVarIndex"] = 11;
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
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.orbsToggled = false\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 3;
					[3] = 2;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "local LL = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 9211, subgroup = \"Nearest\"})\
local LH = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 9212, subgroup = \"Nearest\"})\
if LL and LH and TensorCore.calcTimeToKill(LL.id, 1000) <= 10 and TensorCore.calcTimeToKill(LH.id, 1000) <= 10 then -- wildfire\
		  return true\
end\
return false";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 853;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[5];
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "toggle on for 1s orbs";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "94924467-a4b5-b054-aa8f-a4c78b3c4e7b";
	};
	[11] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
				["gVarIndex"] = 1;
				["gVarValue"] = 2;
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Potion";
				["gVarIndex"] = 11;
				["gVarValue"] = 2;
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
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.orbsToggled = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 5;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 2;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = 8342;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 853;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[5];
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
		["eventType"] = 5;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "toggle off for 1s orbs";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "73ddad1e-297c-d8dc-8938-c296f5c188a8";
	};
	[12] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
				["gVarIndex"] = 1;
				["gVarValue"] = 2;
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Potion";
				["gVarIndex"] = 11;
				["gVarValue"] = 2;
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
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.jailsToggled = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 5;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 2;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = 8346;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 856;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[5];
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
		["eventType"] = 5;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "toggle off for 4s jails";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "c8169077-80c0-39bb-8695-870d1dae4e05";
	};
	[13] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 4;
					[3] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 4;
					[3] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Potion";
				["gVarIndex"] = 11;
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
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.jailsToggled = false\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 4;
					[3] = 2;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.jailsToggled == true and not TensorCore.isEntityAlive(8346)";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 856;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[5];
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "toggle on for 4s jails";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "3afb5a46-1b3b-857c-b545-b7f563af0c50";
	};
	[14] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "--tea reactions--";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "84b96298-e83e-5e1d-8d33-1edddfb89130";
	};
	[15] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
				["gVarIndex"] = 1;
				["gVarValue"] = 2;
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Hypercharge";
				["gVarIndex"] = 3;
				["gVarValue"] = 2;
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
			[3] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Drill";
				["gVarIndex"] = 8;
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
			[4] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_AirAnchor";
				["gVarIndex"] = 10;
				["gVarValue"] = 2;
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
			[5] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_SummonQueen";
				["gVarIndex"] = 5;
				["gVarValue"] = 2;
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
			[6] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.dollsToggled = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 887;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 1;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 2;
				["conditions"] = multiRefObjects[5];
				["contentid"] = 9214;
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "low dps on tea dolls enable";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "2524e4c2-9b87-996f-a76d-00c784b798d4";
	};
	[16] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Hypercharge";
				["gVarIndex"] = 3;
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
			[3] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Drill";
				["gVarIndex"] = 8;
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
			[4] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_AirAnchor";
				["gVarIndex"] = 10;
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
			[5] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_SummonQueen";
				["gVarIndex"] = 5;
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
			[6] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.dollsToggled = false\
self.used = true\
";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 887;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.dollsToggled == true and Player:GetTarget() and Player:GetTarget().contentid ~= 9214";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "low dps on tea dolls disable";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "1be04b8a-01b8-a48c-8630-d1c25d150ad1";
	};
	[17] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["detectionTargetNumber"] = 1;
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
				["setDetectionTargetPriority"] = 1;
				["setTarget"] = true;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = 8658;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 3;
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Player:GetTarget() and Player:GetTarget().contentid == 8658 then\
				data.shieldTargeted = true\
				self.used = true\
end";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["detectionTargetNumber"] = 1;
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
				["setDetectionTargetPriority"] = 1;
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
				["buffIDList"] = multiRefObjects[9];
				["category"] = 5;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[6];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 2;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = 8658;
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
				["ignoreMissingBuffs"] = true;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = -1;
				["matchAnyBuff"] = false;
				["matchAtLeastOneBuff"] = false;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[9];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[6];
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
				["ignoreMissingBuffs"] = true;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = 887;
				["matchAnyBuff"] = false;
				["matchAtLeastOneBuff"] = false;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[9];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return Player:GetTarget() == nil or Player:GetTarget().contentid ~= 8658";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[6];
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
				["ignoreMissingBuffs"] = true;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = -1;
				["matchAnyBuff"] = false;
				["matchAtLeastOneBuff"] = false;
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
		["eventType"] = 5;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "auto target tea plasma shield";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4fdfb1a1-4a56-c482-8e98-fa4d9b770900";
	};
	[18] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
				};
				["detectionTargetNumber"] = 1;
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorRequiem_CD";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "";
				["potType"] = 1;
				["setDetectionTargetPriority"] = 1;
				["setTarget"] = true;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = 9218;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 3;
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if data.shieldTargeted ~= nil then\
    data.shieldTargeted = nil\
    self.used = true\
end";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 3;
				};
				["detectionTargetNumber"] = 1;
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
				["setDetectionTargetPriority"] = 1;
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
				["buffIDList"] = multiRefObjects[2];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.shieldTargeted == true and (not Player:GetTarget() or (Player:GetTarget().contentid == 8658 and Player:GetTarget().hp.percent <= 5))";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[11];
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
				["ignoreMissingBuffs"] = true;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = -1;
				["matchAnyBuff"] = false;
				["matchAtLeastOneBuff"] = false;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[2];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[11];
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
				["ignoreMissingBuffs"] = true;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = 887;
				["matchAnyBuff"] = false;
				["matchAtLeastOneBuff"] = false;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[2];
				["category"] = 1;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 2;
				["conditions"] = multiRefObjects[11];
				["contentid"] = 9216;
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
				["ignoreMissingBuffs"] = true;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = -1;
				["matchAnyBuff"] = false;
				["matchAtLeastOneBuff"] = false;
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "target cc after shield dead";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "618076e6-818f-bf8c-aca5-3a5140577f50";
	};
	[19] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["detectionTargetNumber"] = 1;
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
				["setDetectionTargetPriority"] = 1;
				["setTarget"] = true;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = 9212;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 3;
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
				["buffIDList"] = multiRefObjects[7];
				["category"] = 1;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 2;
				["conditions"] = multiRefObjects[12];
				["contentid"] = 9214;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[7];
				["category"] = 1;
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 3;
				["conditions"] = multiRefObjects[12];
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
				["hpValue"] = 24;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[7];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[12];
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
				["localmapid"] = 887;
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "tea swap to hand when doll is 24%";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "9b60679e-8b5e-ae4c-90ac-54ff3c950cbc";
	};
	[20] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_AOE";
				["gVarIndex"] = 2;
				["gVarValue"] = 2;
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
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.dollsAoeToggled = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 5;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 2;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = 9214;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 887;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[5];
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
		["eventType"] = 5;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "turn off aoe for tea dolls";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "e213432d-9d27-cf0b-bb55-22542e9d4596";
	};
	[21] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_AOE";
				["gVarIndex"] = 2;
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
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.dollsAoeToggled = false\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.dollsAoeToggled == true and not TensorCore.isEntityAlive(9214)";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 887;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[5];
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "turn on aoe for tea dolls";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "d9bb2667-cf29-27f0-a3c2-845e6f7a2791";
	};
	[22] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.limitCutNumber = eventArgs.markerID - 78\
data.limitCutTime = Now()\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
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
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if not table.valid(data.partyLimitCutNumbers) then\
				data.partyLimitCutNumbers = {}\
end\
local limitCutNumber = eventArgs.markerID - 78\
data.partyLimitCutNumbers[limitCutNumber] = eventArgs.entityID\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 3;
					[2] = 2;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.entityID == Player.id and eventArgs.markerID - 78 >= 1 and eventArgs.markerID - 78 <= 8";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 887;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.markerID - 78 >= 1 and eventArgs.markerID - 78 <= 8";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
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
		["eventType"] = 4;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "limit cut number";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "c009095c-6cdb-57fe-bd1f-118638d0ca5f";
	};
	[23] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
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
				["stopCasting"] = true;
				["stopMoving"] = true;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 1;
				["untarget"] = true;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 5;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 2;
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
				["eventSpellID"] = 18559;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 887;
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
		["eventType"] = 3;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "stillness untarget/stop";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "ce1bd236-6250-331e-b954-9eae482b1c3f";
	};
	[24] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
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
				["setTarget"] = true;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = 9042;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 3;
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
				["buffIDList"] = multiRefObjects[1];
				["category"] = 5;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[5];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 1;
				["eventArgType"] = 2;
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
				["eventSpellID"] = 18559;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[1];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[5];
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
				["localmapid"] = 887;
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
		["eventType"] = 2;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "stillness retarget";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4f8500e7-e6bb-6eb1-956e-ccf49b39513c";
	};
	[25] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = false;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "--ucob reactions--";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "48daae98-c386-1ae7-9adf-ca1de0de8364";
	};
	[26] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Drill";
				["gVarIndex"] = 8;
				["gVarValue"] = 2;
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_AirAnchor";
				["gVarIndex"] = 10;
				["gVarValue"] = 2;
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
			[3] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
				["gVarIndex"] = 1;
				["gVarValue"] = 2;
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
			[4] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Hypercharge";
				["gVarIndex"] = 3;
				["gVarValue"] = 2;
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
			[5] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.InNeurolink = true\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
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
				["buffID"] = 344;
				["buffIDList"] = multiRefObjects[8];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[3];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 3;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "";
				["eventEntityContentID"] = 9214;
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[8];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[3];
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
				["localmapid"] = 733;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[8];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[3];
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "turn off aa/drill in neurolink";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "eed0471a-78c6-3826-a9c6-65752c38063e";
	};
	[27] = {
		["actions"] = {
			[1] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Drill";
				["gVarIndex"] = 8;
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
			[2] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_AirAnchor";
				["gVarIndex"] = 10;
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
			[3] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_CD";
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
			[4] = {
				["aType"] = 2;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = false;
				["gVar"] = "ACR_TensorMagnum_Hypercharge";
				["gVarIndex"] = 3;
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
			[5] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.InNeurolink = false\
self.used = true";
				["allowInterrupt"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
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
				["buffIDList"] = multiRefObjects[10];
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.InNeurolink == true";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[4];
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
			[2] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[10];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[4];
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
				["localmapid"] = 733;
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = multiRefObjects[10];
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[4];
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
			[4] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 2;
				["buffDuration"] = 0;
				["buffID"] = 344;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
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
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "turn aa/drill back on after";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "460a48f5-7c4a-ff14-8b97-35af93fef0d2";
	};
}
return obj1
