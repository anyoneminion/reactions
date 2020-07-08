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
		["eventType"] = 1;
		["execute"] = "if not gAnyoneCoreInitialize then\
	AnyoneCore = {\
		enabled = true,\
		data = {},\
		visible = true,\
		open = false,\
		version = 2.87,\
		helperVersion = 1.0\
	}\
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
	if Settings.AnyoneCore.NeverDash == nil then\
		Settings.AnyoneCore.NeverDash = false -- false is default\
		Settings.AnyoneCore.NeverDash = Settings.AnyoneCore.NeverDash \
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
	if Settings.AnyoneCore.DutyHelper == nil then\
		Settings.AnyoneCore.DutyHelper = false -- false is default\
		Settings.AnyoneCore.DutyHelper = Settings.AnyoneCore.DutyHelper \
	end\
	\
	if Settings.AnyoneCore.DutyHelperMitigation == nil then\
		Settings.AnyoneCore.DutyHelperMitigation = true -- true is default\
		Settings.AnyoneCore.DutyHelperMitigation = Settings.AnyoneCore.DutyHelperMitigation \
	end\
	\
	if Settings.AnyoneCore.DutyHelperTargeting == nil then\
		Settings.AnyoneCore.DutyHelperTargeting = true -- true is default\
		Settings.AnyoneCore.DutyHelperTargeting = Settings.AnyoneCore.DutyHelperTargeting \
	end\
	\
	if Settings.AnyoneCore.DutyHelperInterrupt == nil then\
		Settings.AnyoneCore.DutyHelperInterrupt = true -- true is default\
		Settings.AnyoneCore.DutyHelperInterrupt = Settings.AnyoneCore.DutyHelperInterrupt \
	end\
	\
	if Settings.AnyoneCore.DutyHelperKnockback == nil then\
		Settings.AnyoneCore.DutyHelperKnockback = true -- true is default\
		Settings.AnyoneCore.DutyHelperKnockback = Settings.AnyoneCore.DutyHelperKnockback \
	end\
	\
	if Settings.AnyoneCore.PrepullHelperPeloton == nil then\
		Settings.AnyoneCore.PrepullHelperPeloton = true -- true is default\
		Settings.AnyoneCore.PrepullHelperPeloton = Settings.AnyoneCore.PrepullHelperPeloton \
	end\
	\
	if Settings.AnyoneCore.DrawBlackWhiteOrbs == nil then\
		Settings.AnyoneCore.DrawBlackWhiteOrbs = false -- false is default\
		Settings.AnyoneCore.DrawBlackWhiteOrbs = Settings.AnyoneCore.DrawBlackWhiteOrbs \
	end\
	\
	if Settings.AnyoneCore.CameraZoomValue == nil then\
		Settings.AnyoneCore.CameraZoomValue = 35 -- 35 is default\
		Settings.AnyoneCore.CameraZoomValue = Settings.AnyoneCore.CameraZoomValue\
	end\
	\
	if Settings.AnyoneCore.DrawChainLightning == nil then\
		Settings.AnyoneCore.DrawChainLightning = true -- false is default\
		Settings.AnyoneCore.DrawChainLightning = Settings.AnyoneCore.DrawChainLightning \
	end\
	\
	if Settings.AnyoneCore.DrawOccludedFrontOrbs == nil then\
		Settings.AnyoneCore.DrawOccludedFrontOrbs = true -- false is default\
		Settings.AnyoneCore.DrawOccludedFrontOrbs = Settings.AnyoneCore.DrawOccludedFrontOrbs \
	end\
	\
	if Settings.AnyoneCore.BadTeamDelay == nil then\
		Settings.AnyoneCore.BadTeamDelay = 200 -- 200 is default\
		Settings.AnyoneCore.BadTeamDelay = Settings.AnyoneCore.BadTeamDelay\
	end\
	\
	--camera zoom value, not related to above code\
	if Settings.AnyoneCore.AutoSetMaxCameraZoom == true then\
		gDevHackMaxZoom = Settings.AnyoneCore.CameraZoomValue\
		Hacks:SetCamMaxZoom(gDevHackMinZoom,gDevHackMaxZoom)\
	end\
	\
	if Settings.AnyoneCore.DrawClouds == nil then\
		Settings.AnyoneCore.DrawClouds = true -- true is default\
		Settings.AnyoneCore.DrawClouds = Settings.AnyoneCore.DrawClouds \
	end\
	\
	if Settings.AnyoneCore.DrawNaelQuotes == nil then\
		Settings.AnyoneCore.DrawNaelQuotes = true -- true is default\
		Settings.AnyoneCore.DrawNaelQuotes = Settings.AnyoneCore.DrawNaelQuotes \
	end\
	\
	if Settings.AnyoneCore.DutyHelperGrabAggro == nil then\
		Settings.AnyoneCore.DutyHelperGrabAggro = true -- true is default\
		Settings.AnyoneCore.DutyHelperGrabAggro = Settings.AnyoneCore.DutyHelperGrabAggro \
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
			DiamondFrostUptime = Settings.AnyoneCore.DiamondFrostUptime,\
			DutyHelper = Settings.AnyoneCore.DutyHelper,\
			DutyHelperMitigation = Settings.AnyoneCore.DutyHelperMitigation,\
			DutyHelperTargeting = Settings.AnyoneCore.DutyHelperTargeting,\
			DutyHelperInterrupt = Settings.AnyoneCore.DutyHelperInterrupt,\
			DutyHelperKnockback = Settings.AnyoneCore.DutyHelperKnockback,\
			PrepullHelperPeloton = Settings.AnyoneCore.PrepullHelperPeloton,\
			DrawBlackWhiteOrbs = Settings.AnyoneCore.DrawBlackWhiteOrbs,\
			CameraZoomValue = Settings.AnyoneCore.CameraZoomValue,\
			DrawChainLightning = Settings.AnyoneCore.DrawChainLightning,\
			DrawOccludedFrontOrbs = Settings.AnyoneCore.DrawOccludedFrontOrbs,\
			BadTeamDelay = Settings.AnyoneCore.BadTeamDelay,\
			DrawClouds = Settings.AnyoneCore.DrawClouds,\
			DrawNaelQuotes = Settings.AnyoneCore.DrawNaelQuotes,\
			DutyHelperGrabAggro = Settings.AnyoneCore.DutyHelperGrabAggro,\
			NeverDash = Settings.AnyoneCore.NeverDash,\
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
		Settings.AnyoneCore.DutyHelper = AnyoneCore.Settings.DutyHelper\
		Settings.AnyoneCore.DutyHelper = Settings.AnyoneCore.DutyHelper\
		\
		Settings.AnyoneCore.DutyHelperMitigation = AnyoneCore.Settings.DutyHelperMitigation\
		Settings.AnyoneCore.DutyHelperMitigation = Settings.AnyoneCore.DutyHelperMitigation\
		\
		Settings.AnyoneCore.DutyHelperTargeting = AnyoneCore.Settings.DutyHelperTargeting\
		Settings.AnyoneCore.DutyHelperTargeting = Settings.AnyoneCore.DutyHelperTargeting\
		\
		Settings.AnyoneCore.DutyHelperInterrupt = AnyoneCore.Settings.DutyHelperInterrupt\
		Settings.AnyoneCore.DutyHelperInterrupt = Settings.AnyoneCore.DutyHelperInterrupt\
		\
		Settings.AnyoneCore.DutyHelperKnockback = AnyoneCore.Settings.DutyHelperKnockback\
		Settings.AnyoneCore.DutyHelperKnockback = Settings.AnyoneCore.DutyHelperKnockback\
		\
		Settings.AnyoneCore.PrepullHelperPeloton = AnyoneCore.Settings.PrepullHelperPeloton\
		Settings.AnyoneCore.PrepullHelperPeloton = Settings.AnyoneCore.PrepullHelperPeloton\
		\
		Settings.AnyoneCore.DrawBlackWhiteOrbs = AnyoneCore.Settings.DrawBlackWhiteOrbs\
		Settings.AnyoneCore.DrawBlackWhiteOrbs = Settings.AnyoneCore.DrawBlackWhiteOrbs\
		\
		Settings.AnyoneCore.DrawChainLightning = AnyoneCore.Settings.DrawChainLightning\
		Settings.AnyoneCore.DrawChainLightning = Settings.AnyoneCore.DrawChainLightning\
		\
		Settings.AnyoneCore.DrawOccludedFrontOrbs = AnyoneCore.Settings.DrawOccludedFrontOrbs\
		Settings.AnyoneCore.DrawOccludedFrontOrbs = Settings.AnyoneCore.DrawOccludedFrontOrbs\
		\
		Settings.AnyoneCore.DrawClouds = AnyoneCore.Settings.DrawClouds\
		Settings.AnyoneCore.DrawClouds = Settings.AnyoneCore.DrawClouds\
		\
		Settings.AnyoneCore.DrawNaelQuotes = AnyoneCore.Settings.DrawNaelQuotes\
		Settings.AnyoneCore.DrawNaelQuotes = Settings.AnyoneCore.DrawNaelQuotes\
		\
		Settings.AnyoneCore.DutyHelperGrabAggro = AnyoneCore.Settings.DutyHelperGrabAggro\
		Settings.AnyoneCore.DutyHelperGrabAggro = Settings.AnyoneCore.DutyHelperGrabAggro\
		\
		Settings.AnyoneCore.NeverDash = AnyoneCore.Settings.NeverDash\
		Settings.AnyoneCore.NeverDash = Settings.AnyoneCore.NeverDash\
	\
		\
		---start of value selectors\
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
		\
		if AnyoneCore.Settings.CameraZoomValue > 100 then\
			AnyoneCore.Settings.CameraZoomValue = 100\
			AnyoneCore.save()\
		elseif AnyoneCore.Settings.CameraZoomValue < 20 then\
			AnyoneCore.Settings.CameraZoomValue = 20\
			AnyoneCore.save()\
		else\
			Settings.AnyoneCore.CameraZoomValue = AnyoneCore.Settings.CameraZoomValue\
			Settings.AnyoneCore.CameraZoomValue = Settings.AnyoneCore.CameraZoomValue\
		end\
		\
		if AnyoneCore.Settings.BadTeamDelay > 1500 then\
			AnyoneCore.Settings.BadTeamDelay = 1500\
			AnyoneCore.save()\
		elseif AnyoneCore.Settings.BadTeamDelay < 0 then\
			AnyoneCore.Settings.BadTeamDelay = 0\
			AnyoneCore.save()\
		else\
			Settings.AnyoneCore.BadTeamDelay = AnyoneCore.Settings.BadTeamDelay\
			Settings.AnyoneCore.BadTeamDelay = Settings.AnyoneCore.BadTeamDelay\
		end\
	end\
		\
	AnyoneCore.main_tabs = GUI_CreateTabs(\" General,Argus,Fight Specific,Job Specific,Duty Helper,Hacks \")\
	function AnyoneCore.draw()\
		if self.reference.enabled and AnyoneCore.enabled and AnyoneCore.open then\
			GUI:SetNextWindowSize(650,350,GUI.SetCond_FirstUseEver)\
			AnyoneCore.visible, AnyoneCore.open = GUI:Begin(\"AnyoneCore - Reaction Settings Menu\", AnyoneCore.open)\
			if AnyoneCore.visible then\
			local tabindex, tabname = GUI_DrawTabs(AnyoneCore.main_tabs)\
			if (tabname == \" General\") then\
				GUI:TextColored(1,1,0,1,\"AnyoneCore - Version #\".. tostring(AnyoneCore.version))\
				if Player.job == 23 or Player.job == 27 or Player.job == 31 or Player.job == 38 or Player.job == 25 or Player.job == 35 then\
				local hovered = false\
				AnyoneCore.Settings.PrepullHelper, changed = GUI:Checkbox(\"Prepull Helper\", AnyoneCore.Settings.PrepullHelper)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Helps with pre-pull before you start the boss fight. Pelotons at a random time after countdown starts, enables 'Start Combat' in Assist settings or targets the boss at the correct time.\\n\")\
					GUI:TextColored(1,1,0,1,\"Careful if you've got a trigger happy team. If this is enabled and you're AFK, your team will be really confused how you were attacking the boss while AFK.\")\
					GUI:TextColored(1,0,0,1,\"This will only work on the English client. As it works by detecting the text signalling the start of the countdown. You may be able to get it working if you properly translate the text.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				if AnyoneCore.Settings.PrepullHelper == true then\
				local hovered = false\
				AnyoneCore.Settings.BadTeamDelay, changed = GUI:InputInt(\"Pull Early For Bad Teams\", AnyoneCore.Settings.BadTeamDelay)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Let's face it, most people don't pull on time. Sometimes people will even pull up to a full second early. Change this to make prepull helper pull the boss earlier if your team is consistently pulling early.\\n\")\
					GUI:TextColored(1,1,0,1,\"Based on milliseconds. Putting this to 200 means it will pull 200 milliseconds before the countdown ends.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				if (Player.job == 23 or Player.job == 31) and AnyoneCore.Settings.PrepullHelper == true then\
				local hovered = false\
				AnyoneCore.Settings.PrepullHelperPeloton, changed = GUI:Checkbox(\"Use Peloton in Prepull\", AnyoneCore.Settings.PrepullHelperPeloton)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Enables the use of Peloton during prepull helper.\\n\")\
					GUI:TextColored(1,1,0,1,\"Could turn it off if you feel like your team thinks you're too dumb to be using peloton in prepull. LUL\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end			\
				end ---end of job check\
				end ---end of prepullhelper enabled check\
\
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
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines.\")\
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
				if Player.job == 34 or Player.job == 38 then \
				local hovered = false\
				AnyoneCore.Settings.UseMoogleTTS, changed = GUI:Checkbox(\"Remind Me To Use Meditate/Improv\", AnyoneCore.Settings.UseMoogleTTS)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"If you have MoogleTTS, it'll use TTS to remind you. Otherwise it'll remind you using a colored chat message along with a se.1 ping. \\n\")\
					GUI:TextColored(1,1,0,1,\"MoogleTTS has to be installed to use the TTS option, if it's not installed will automatically do it the alternative way.\")\
					GUI:TextColored(1,0,0,1,\"If you're streaming or recording, the sound will show up on the stream, and if you're not using MoogleTTS, the chat message could be seen by other people.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				\
			elseif (tabname == \"Argus\") then\
				\
				local hovered = false\
				AnyoneCore.Settings.DrawClouds, changed = GUI:Checkbox(\"Draw Stormcloud AoE radius in e5s\", AnyoneCore.Settings.DrawClouds)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Draws a circle on the floor to show you the area where you'll get hit by the Chaos Strikes to cleanse lightning debuffs.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
					GUI:TextColored(1,0,0,1,\"Bugs out badly if clouds combine.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.DrawChainLightning, changed = GUI:Checkbox(\"Draw Chain Lightning AoE size in e5s\", AnyoneCore.Settings.DrawChainLightning)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Draws a circle around whoever has the Electrified debuff in e5s. Technically the AoE comes from the person it's passed to, but the circle should give you an idea of how far away you should be.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.DrawOccludedFrontOrbs, changed = GUI:Checkbox(\"Draw Occluded Front Orb Explosions in e6s\", AnyoneCore.Settings.DrawOccludedFrontOrbs)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Draws a circle around the orbs that spawn after Occluded Front during Garuda and Garuda/Ifrit phase.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
					GUI:TextColored(1,0,0,1,\"Standing in the safe spot is not enough to be safe still unfortunately, you still need to make sure you won't be knocked into the orb.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.DrawBlackWhiteOrbs, changed = GUI:Checkbox(\"Draw Black/White Orbs in e7s\", AnyoneCore.Settings.DrawBlackWhiteOrbs)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Draws the explosion radius of the orbs during tornado in e7s.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
					GUI:TextColored(1,0,0,1,\"EXPERIMENTAL, NOT GUARANTEED TO WORK.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.DrawDragonHeads, changed = GUI:Checkbox(\"Draw Dragon Heads in e8s\", AnyoneCore.Settings.DrawDragonHeads)\
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
				AnyoneCore.Settings.DrawOrbs, changed = GUI:Checkbox(\"Draw Light Rampant Orbs in e8s\", AnyoneCore.Settings.DrawOrbs)\
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
				local hovered = false\
				AnyoneCore.Settings.DrawNaelQuotes, changed = GUI:Checkbox(\"Draw Mechanics in UCoB\", AnyoneCore.Settings.DrawNaelQuotes)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Toggles all of the draws in UCoB, there's like 40 so there's only this one option. Draws EVERY Nael Quote, Earthshaker Cones, and people with Thunderstruck debuff.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
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
				AnyoneCore.Settings.DisableAssist, changed = GUI:Checkbox(\"Away With Thee Safe Strat\", AnyoneCore.Settings.DisableAssist)\
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
				local hovered = false\
				AnyoneCore.Settings.AddsPhasePot, changed = GUI:Checkbox(\"Adds Phase Pot\", AnyoneCore.Settings.AddsPhasePot)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Uses pot during adds phase in e7s immediately after Away With Thee teleport ends. This will allow you to get in a 3rd pot usage if your kill time is over 9 minutes and 30 seconds long.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only matters if you're playing machinist, it's disabled otherwise. If your kill time is shorter than 9 minutes and 30 seconds, turn this off.\")\
					GUI:TextColored(1,1,0,1,\"Potions still need to be turned on with your quick toggles at the start of the fight for this to work.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
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
				GUI:Text(\"			Machinist Settings\")\
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
				\
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
				end\
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
					GUI:Text(\"Enabling this will make it so reactions will never enable/disable Enpi usage for you. Allows you to change it by yourself as you please.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines for e5s through e8s.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.NeverEnpi, changed = GUI:Checkbox(\"Never Dash For Me\", AnyoneCore.Settings.NeverEnpi)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Enabling this will make it so reactions will never dash in for you. Dashes are mostly done after mechanics end when it's safe to do so, but could be annoying for teams with weird uptime strats.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines for e5s through e8s.\")\
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
			elseif (tabname == \"Duty Helper\") then\
			\
				local hovered = false\
				AnyoneCore.Settings.DutyHelper, changed = GUI:Checkbox(\"Enable Duty Helper\", AnyoneCore.Settings.DutyHelper)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Enables a multitude of features that help in dungeons. Automatic usage of mitigation like Tactician and Troubador. Automatic usage of Arm's Length, and Head Graze.\\n\")\
					GUI:TextColored(1,1,0,1,\"Not meant to be turned on for fights that have a timeline. The features will likely interfere with each other. Any features after this one won't work unless this setting is enabled.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.DutyHelperTargeting, changed = GUI:Checkbox(\"Always Target Something\", AnyoneCore.Settings.DutyHelperTargeting)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Helps with retargeting the boss or mobs in a dungeon. If you don't have a current target, while in combat and bot is enabled, then target nearest monster.\\n\")\
					GUI:TextColored(1,1,0,1,\"Works regardless of timelines. Duty Helper must be enabled.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				local hovered = false\
				AnyoneCore.Settings.DutyHelperMitigation, changed = GUI:Checkbox(\"Mitigation Usage\", AnyoneCore.Settings.DutyHelperMitigation)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Enables spells like tactician/troubador/shield samba to be used alongside Duty Helper to mitigate incoming damage.\\n\")\
					GUI:TextColored(1,1,0,1,\"Works regardless of timelines. Duty Helper must be enabled.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				\
				if Player.job == 32 or Player.job == 37 or Player.job == 19 or Player.job == 21 then\
				local hovered = false\
				AnyoneCore.Settings.DutyHelperGrabAggro, changed = GUI:Checkbox(\"Grab Aggro\", AnyoneCore.Settings.DutyHelperGrabAggro)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Helps regain aggro on mobs that you've lost aggro on. Will not work in 8/24 man raids, on purpose.\\n\")\
					GUI:TextColored(1,1,0,1,\"Works regardless of timelines. Duty Helper must be enabled.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				\
				if Player.job == 31 or Player.job == 23 or Player.job == 38 or Player.job == 32 or Player.job == 37 or Player.job == 19 or Player.job == 21 then\
				local hovered = false\
				AnyoneCore.Settings.DutyHelperInterrupt, changed = GUI:Checkbox(\"Use Interrupts\", AnyoneCore.Settings.DutyHelperInterrupt)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Interrupts stuff that is interruptable in duties.\\n\")\
					GUI:TextColored(1,1,0,1,\"Works regardless of timelines. Duty Helper must be enabled.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end --end of job check\
				\
				local hovered = false\
				AnyoneCore.Settings.DutyHelperKnockback, changed = GUI:Checkbox(\"Use Anti-Knockback Spells\", AnyoneCore.Settings.DutyHelperKnockback)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Interrupts stuff that is interruptable in duties.\\n\")\
					GUI:TextColored(1,1,0,1,\"Works regardless of timelines. Duty Helper must be enabled.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
			\
			elseif (tabname == \"Hacks \") then\
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
					GUI:Text(\"Sets your character speed to 7 (default is 6.0) at the start of a fight. Changes it back upon wiping. Approximately 15 percent faster walking speed.\\n\")\
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
				if AnyoneCore.Settings.AutoSetMaxCameraZoom == true then\
				local hovered = false\
				AnyoneCore.Settings.CameraZoomValue, changed = GUI:InputInt(\"Max Camera Zoom Value\", AnyoneCore.Settings.CameraZoomValue)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Set the value you want your camera zoom to be set to.\\n\")\
					GUI:TextColored(1,1,0,1,\"Reload lua after changing.\")\
					GUI:TextColored(1,0,0,1,\"Absolutely do not use this while streaming. Be careful taking screenshots too. It is very noticable that your camera is zoomed out more than normal.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				\
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
		["uuid"] = "f27c60b6-4657-bc44-88dd-30a7a3871773";
	};
	[2] = {
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
		["name"] = "         -RESETS-";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "08494ca3-78ed-f2e7-b9db-2c36561ae621";
	};
	[3] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 9;
		["execute"] = "SallyDRK.HotBarConfig.Provoke.enabled = true\
SallyDRK.HotBarConfig.Shirks.enabled = true\
SallyDRK.HotBarConfig.Reprisal.enabled = true\
SallyDRK.HotBarConfig.DarkMissionary.enabled = true\
SallyDRK.HotBarConfig.Rampart.enabled = true\
SallyDRK.HotBarConfig.LowBlow.enabled = true\
SallyDRK.HotBarConfig.DarkMind.enabled = true\
SallyDRK.HotBarConfig.LivingDead.enabled = true\
SallyDRK.HotBarConfig.TBN.enabled = true\
SallyDRK.HotBarConfig.TBN_OT.enabled = true\
SallyDRK.HotBarConfig.SaltedEarth.enabled = true\
SallyDRK.HotBarConfig.BloodWeapon.enabled = true\
SallyDRK.HotBarConfig.Delirium.enabled = true\
SallyDRK.HotBarConfig.Sprint.enabled = true\
SallyDRK.HotBarConfig.Interject.enabled = true\
SallyDRK.HotBarConfig.Armslength.enabled = true\
SallyDRK.HotBarConfig.LivingShadow.enabled = true\
SallyDRK.HotBarConfig.FloodOfShadow.enabled = true\
SallyDRK.HotBarConfig.EdgeOfShadow.enabled = true\
SallyDRK.HotBarConfig.Plunge.enabled = true\
SallyDRK.HotBarConfig.LB.enabled = true\
\
SallyDRK.SkillSettings.Opener.enabled = false\
SallyDRK.SkillSettings.Delirium.enabled = true\
SallyDRK.SkillSettings.LivingShadow.enabled = true\
SallyDRK.SkillSettings.SaveCD.enabled = false\
SallyDRK.SkillSettings.Range.enabled = true\
SallyDRK.SkillSettings.BloodWeapon.enabled = true\
SallyDRK.SkillSettings.CarveAndSplit.enabled = true\
SallyDRK.SkillSettings.AbyssalDrain.enabled = true\
SallyDRK.SkillSettings.UseAOE.enabled = true\
SallyDRK.SkillSettings.JumpRange.enabled = true\
SallyDRK.SkillSettings.SaltedEarth.enabled = true\
\
Player:ClearTarget()\
\
if eventArgs.oldData.PotsEnabled ~= nil then\
SallyDRK.SkillSettings.Potion.enabled = true\
end\
\
self.used = true\
";
		["executeType"] = 2;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "reset hotbar/qt on wipe";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "dd236dc5-7267-26cc-aa6c-b31ef3abad67";
	};
	[4] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 10;
		["execute"] = "SallyDRK.HotBarConfig.Provoke.enabled = true\
SallyDRK.HotBarConfig.Shirks.enabled = true\
SallyDRK.HotBarConfig.Reprisal.enabled = true\
SallyDRK.HotBarConfig.DarkMissionary.enabled = true\
SallyDRK.HotBarConfig.Rampart.enabled = true\
SallyDRK.HotBarConfig.LowBlow.enabled = true\
SallyDRK.HotBarConfig.DarkMind.enabled = true\
SallyDRK.HotBarConfig.LivingDead.enabled = true\
SallyDRK.HotBarConfig.TBN.enabled = true\
SallyDRK.HotBarConfig.TBN_OT.enabled = true\
SallyDRK.HotBarConfig.SaltedEarth.enabled = true\
SallyDRK.HotBarConfig.BloodWeapon.enabled = true\
SallyDRK.HotBarConfig.Delirium.enabled = true\
SallyDRK.HotBarConfig.Sprint.enabled = true\
SallyDRK.HotBarConfig.Interject.enabled = true\
SallyDRK.HotBarConfig.Armslength.enabled = true\
SallyDRK.HotBarConfig.LivingShadow.enabled = true\
SallyDRK.HotBarConfig.FloodOfShadow.enabled = true\
SallyDRK.HotBarConfig.EdgeOfShadow.enabled = true\
SallyDRK.HotBarConfig.Plunge.enabled = true\
SallyDRK.HotBarConfig.LB.enabled = true\
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
		["uuid"] = "6d180639-e778-d7ec-bfb6-cf30a446e1b6";
	};
	[5] = {
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
		["name"] = "          -MISC-";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "040acb90-973c-ac83-b1e4-b8b992bee874";
	};
	[6] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 11;
		["execute"] = "if Player.localmapid == 906 or Player.localmapid == 907 or Player.localmapid == 908 or Player.localmapid == 909 or Player.localmapid == 733 or Player.localmapid == 887 or Player.localmapid == 777 or AnyoneCore.Settings.DutyHelper == true then\
		if Player.job ~= 32 and AnyoneCore.Settings.JobCheck == true then\
				d(\"[Anyone's Reactions] - Job check failed, sending text command.\")\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0} You're using the wrong general triggers. You're currently using the {color:255,0,0}Dark Knight{color:0,255,0} profile, which doesn't match your current job. <se.1>\")\
		elseif Player.job == 32 then\
				d(\"[Anyone's Reactions] - Player job check succeeded\")\
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
		["uuid"] = "d9f00aed-358b-eda6-bdbd-d46d769fe1db";
	};
	[7] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "    PressKey(0x31)\
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
self.used = true\
self.eventConditionMismatch = true -- supress log";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
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
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return IsControlOpen(\"_QTEMash\")";
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
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
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
		["uuid"] = "7b0daa15-b57c-a9e2-8229-3995f1fbe144";
	};
	[8] = {
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
		["name"] = "        -DUTY HELPER-";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "3941f33b-b9a8-2a65-96dc-c606f245eb72";
	};
	[9] = {
		["actions"] = {
			[1] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 5;
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
			[2] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 4;
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
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 6;
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
				["stopMoving"] = false;
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
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "if not Player:GetTarget() then return true end\
return false";
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
				["conditionLua"] = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.DutyHelperTargeting == true and AnyoneCore.Settings.DutyHelper == true";
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
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
				["conditionLua"] = "local mytarget = Player:GetTarget()\
local cinfo = Player.castinginfo \
return mytarget ~= nil and cinfo ~= nil and (mytarget.id ~= cinfo.channeltargetid) and (cinfo.casttime - cinfo.channeltime >= 0.500)";
				["conditionType"] = 5;
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
				["conditionLua"] = "return data.stopAutoTarget == nil and data.stopAutoTargetDupe == nil";
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
			[6] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return data.stopCast ~= nil";
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
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["loop"] = true;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "always target smth - duty helper";
		["throttleTime"] = 0;
		["time"] = 128.9;
		["timeRange"] = true;
		["timelineIndex"] = 20;
		["timeout"] = 5;
		["timerEndOffset"] = 8;
		["timerOffset"] = 1.375;
		["timerStartOffset"] = -8;
		["used"] = false;
		["uuid"] = "a7a15c0d-7d3f-1e6b-b0f5-eb4a5b3a90ff";
	};
	[10] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.stopAutoTarget = true\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 3;
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
				["actionLua"] = "data.stopAutoTarget = nil\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 3;
					[3] = 4;
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
				["conditionLua"] = "local StopCastingTable = {\
--face away\
[8066] = true,\
[7949] = true,\
[9829] = true,\
[11159] = true,\
[12587] = true,\
[12708] = true,\
[9485] = true,\
[9071] = true,\
[9211] = true,\
[20303] = true,\
[16025] = true,\
[19198] = true,\
[14200] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return StopCastingTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 5";
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
				["conditionLua"] = "return data.stopAutoTarget ~= nil";
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
				["conditionLua"] = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.DutyHelperTargeting == true and AnyoneCore.Settings.DutyHelper == true";
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
			[4] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "stop auto target - duty helper";
		["throttleTime"] = 6000;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "f5014c45-31b9-16ce-8d4d-fcd80f159e00";
	};
	[11] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.stopCast = true\
data.stopAutoTargetDupe = true\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
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
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.stopCast = nil\
data.stopAutoTargetDupe = nil\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 3;
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
				["conditionLua"] = "local ClearTargetTable = {\
--stop cast and clear target\
[639] = true,\
[960] = true,\
[1049] = true,\
[1072] = true,\
[1132] = true,\
[1133] = true,\
[1269] = true,\
[1270] = true,\
[1384] = true,\
[1599] = true,\
}\
\
return ClearTargetTable[eventArgs.buffID] == true and eventArgs.buffDuration <= 2";
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
				["conditionLua"] = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.DutyHelperTargeting == true and AnyoneCore.Settings.DutyHelper == true";
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
				["conditionLua"] = "return data.stopCast ~= nil";
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
		["eventType"] = 8;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "clear target - duty helper";
		["throttleTime"] = 4000;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "2adf90f4-7bc9-fda3-8b64-a98df7f33853";
	};
	[12] = {
		["actions"] = {
			[1] = {
				["aType"] = 1;
				["actionID"] = 7540;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 4;
					[5] = 6;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
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
				["targetType"] = 19;
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 1;
				["actionID"] = 7538;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 5;
					[3] = 4;
					[4] = 6;
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
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = 1;
				["targetType"] = 19;
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
				["conditionLua"] = "local KnockbackTable = {\
[9042] = true,\
[1003] = true,\
[4545] = true,\
[8612] = true,\
[351] = true,\
[8627] = true,\
[10174] = true,\
[10653] = true,\
[10760] = true,\
[2144] = true,\
[10657] = true,\
[10980] = true,\
[11380] = true,\
[12507] = true,\
[12951] = true,\
[17203] = true,\
[15788] = true,\
[16266] = true,\
[16815] = true,\
[15802] = true,\
[15808] = true,\
[15805] = true,\
[17164] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return KnockbackTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 5";
				["conditionType"] = 2;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
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
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 21 and AnyoneCore.Settings.DutyHelperInterrupt == true and AnyoneCore.Settings.DutyHelper == true";
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
			[3] = {
				["actionCDValue"] = 1;
				["actionID"] = 7540;
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
			[4] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
				["conditionLua"] = "local KnockbackTable = {\
[15786] = true,\
[16776] = true,\
[8983] = true,\
[10933] = true,\
[15757] = true,\
[14324] = true,\
[3343] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return KnockbackTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 5";
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
			[6] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 1;
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 6;
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
				["inRangeValue"] = 3;
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
				["rangeCheckSourceType"] = 19;
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
		["name"] = "interject - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "b4340cab-4128-e195-bb00-5e45a84cab3f";
	};
	[13] = {
		["actions"] = {
			[1] = {
				["aType"] = 1;
				["actionID"] = 7548;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
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
				["conditionLua"] = "local KnockbackTable = {\
---start of dungeon spell ids\
--dungeons\
[8328] = true,\
[8329] = true,\
[8293] = true,\
[9606] = true,\
[8173] = true,\
[9810] = true,\
[10132] = true,\
[12618] = true,\
[15520] = true,\
[15596] = true,\
--8 man raids\
[9400] = true,\
[9214] = true,\
[9293] = true,\
[10413] = true,\
[10086] = true,\
[10454] = true,\
[10459] = true,\
[12647] = true,\
[12648] = true,\
[13050] = true,\
[15942] = true,\
[15962] = true,\
[16339] = true,\
[16370] = true,\
[16630] = true,\
[16659] = true,\
[16694] = true,\
--e5-e8\
---[19928] = true,\
---[19809] = true,\
--trials\
[8075] = true,\
[8080] = true,\
[9690] = true,\
[9695] = true,\
[9750] = true,\
[12848] = true,\
[13018] = true,\
[13019] = true,\
[16741] = true,\
[16742] = true,\
[19182] = true,\
[19674] = true,\
--24 man raids\
[9660] = true,\
[11344] = true,\
[18627] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return KnockbackTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 5";
				["conditionType"] = 2;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
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
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 32 and AnyoneCore.Settings.DutyHelperKnockback == true and AnyoneCore.Settings.DutyHelper == true";
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
			[3] = {
				["actionCDValue"] = 1;
				["actionID"] = 7548;
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
			[4] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "arm's length - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "e3407a72-3308-daa1-a229-158f71ba6eea";
	};
	[14] = {
		["actions"] = {
			[1] = {
				["aType"] = 1;
				["actionID"] = 16471;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
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
				["conditionLua"] = "local MitigationTable = {\
--dungeons\
--magic damage\
[8064] = true,\
[7946] = true,\
[8357] = true,\
[8367] = true,\
[7958] = true,\
[8269] = true,\
[8271] = true,\
[8301] = true,\
[7827] = true,\
[7843] = true,\
[8150] = true,\
[8167] = true,\
[9808] = true,\
[10187] = true,\
[10162] = true,\
[11157] = true,\
[11178] = true,\
[11179] = true,\
[11184] = true,\
[11185] = true,\
[11528] = true,\
[11850] = true,\
[12588] = true,\
[13216] = true,\
[11635] = true,\
[12619] = true,\
[13397] = true,\
[14119] = true,\
[14120] = true,\
[14191] = true,\
[14195] = true,\
[15813] = true,\
[15824] = true,\
[15832] = true,\
[7822] = true,\
[8915] = true,\
[13708] = true,\
[15499] = true,\
[15506] = true,\
[15515] = true,\
[15524] = true,\
[15590] = true,\
[15601] = true,\
[15612] = true,\
[15627] = true,\
[15636] = true,\
[15587] = true,\
[17108] = true,\
[15716] = true,\
[15868] = true,\
[15878] = true,\
[15895] = true,\
[15908] = true,\
[19315] = true,\
[19306] = true,\
[19288] = true,\
[19292] = true,\
[19296] = true,\
[19324] = true,\
[19323] = true,\
--8 man raids party mitigation\
[9180] = true,\
[9184] = true,\
[7892] = true,\
[7900] = true,\
[9476] = true,\
[9488] = true,\
[9059] = true,\
[9074] = true,\
[9317] = true,\
[8950] = true,\
[9414] = true,\
[9220] = true,\
[9222] = true,\
[9239] = true,\
[9256] = true,\
[9257] = true,\
[10284] = true,\
[10283] = true,\
[10094] = true,\
[10123] = true,\
[10541] = true,\
[10456] = true,\
[10471] = true,\
[10473] = true,\
[10477] = true,\
[10513] = true,\
[12645] = true,\
[12646] = true,\
[12653] = true,\
[12654] = true,\
[12678] = true,\
[12679] = true,\
[12680] = true,\
[12742] = true,\
[12715] = true,\
[12728] = true,\
[12923] = true,\
[12934] = true,\
[12891] = true,\
[12908] = true,\
[13073] = true,\
[13074] = true,\
[13083] = true,\
[13084] = true,\
[13122] = true,\
[13123] = true,\
[13138] = true,\
[13139] = true,\
[13143] = true,\
[13793] = true,\
[15783] = true,\
[15759] = true,\
[15982] = true,\
[15984] = true,\
[15986] = true,\
[16324] = true,\
[17435] = true,\
[16348] = true,\
[16350] = true,\
[16396] = true,\
[17436] = true,\
[16631] = true,\
[17382] = true,\
[16660] = true,\
[16682] = true,\
[16699] = true,\
[17384] = true,\
--trial raid mitigation\
[8230] = true,\
[8246] = true,\
[9347] = true,\
[9360] = true,\
[9361] = true,\
[9374] = true,\
[8519] = true,\
[8540] = true,\
[8541] = true,\
[9373] = true,\
[8076] = true,\
[8077] = true,\
[8078] = true,\
[8079] = true,\
[8085] = true,\
[9691] = true,\
[9692] = true,\
[9693] = true,\
[9694] = true,\
[9700] = true,\
[10799] = true,\
[10204] = true,\
[11234] = true,\
[11255] = true,\
[11256] = true,\
[11259] = true,\
[11194] = true,\
[11223] = true,\
[11224] = true,\
[11228] = true,\
[12833] = true,\
[12852] = true,\
[13010] = true,\
[13023] = true,\
[14334] = true,\
[14324] = true,\
[14376] = true,\
[15708] = true,\
[15691] = true,\
[16026] = true,\
[16026] = true,\
[16106] = true,\
[16759] = true,\
[16768] = true,\
[17815] = true,\
[18367] = true,\
[18380] = true,\
[18384] = true,\
[19209] = true,\
[19657] = true,\
[19774] = true,\
[20107] = true,\
--24 man raid\
[9670] = true,\
[9686] = true,\
[9688] = true,\
[9774] = true,\
[11308] = true,\
[11325] = true,\
[11364] = true,\
[11484] = true,\
[11612] = true,\
[11613] = true,\
[14139] = true,\
[14206] = true,\
[14439] = true,\
[18261] = true,\
[18437] = true,\
[18639] = true,\
[18675] = true,\
[18678] = true,\
[18753] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return MitigationTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 6";
				["conditionType"] = 2;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
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
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 32 and AnyoneCore.Settings.DutyHelperMitigation == true and AnyoneCore.Settings.DutyHelper == true";
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
			[3] = {
				["actionCDValue"] = 1;
				["actionID"] = 16471;
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
			[4] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
			[5] = {
				["actionCDValue"] = 1;
				["actionID"] = 7393;
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
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "mitigate - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "f122fd77-4b3a-fab8-8a01-6568c5ed2715";
	};
	[15] = {
		["actions"] = {
			[1] = {
				["aType"] = 1;
				["actionID"] = 7535;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 9;
					[2] = 2;
					[3] = 3;
					[4] = 10;
					[5] = 11;
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
				["actionID"] = 7393;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
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
				["aType"] = 1;
				["actionID"] = 7531;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 5;
					[5] = 6;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
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
				["aType"] = 1;
				["actionID"] = 3636;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 7;
					[5] = 8;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
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
				["conditionLua"] = "local TankMitigationTable = {\
--dungeons\
[7963] = true,\
[7974] = true,\
[8331] = true,\
[8332] = true,\
[8290] = true,\
[8153] = true,\
[9807] = true,\
[10131] = true,\
[11156] = true,\
[11174] = true,\
[11527] = true,\
[11848] = true,\
[12586] = true,\
[12597] = true,\
[11634] = true,\
[12691] = true,\
[13401] = true,\
[14121] = true,\
[14122] = true,\
[14190] = true,\
[15812] = true,\
[15823] = true,\
[15831] = true,\
[8857] = true,\
[13732] = true,\
[15497] = true,\
[15505] = true,\
[15513] = true,\
[15589] = true,\
[15595] = true,\
[15611] = true,\
[15625] = true,\
[15634] = true,\
[15717] = true,\
[15853] = true,\
[15867] = true,\
[15876] = true,\
[15907] = true,\
[19340] = true,\
[19314] = true,\
[19305] = true,\
[18281] = true,\
[18203] = true,\
[18276] = true,\
[17561] = true,\
[17560] = true,\
--8 man raids tank mitigation\
[9175] = true,\
[7887] = true,\
[9487] = true,\
[9073] = true,\
[8939] = true,\
[9405] = true,\
[9209] = true,\
[9241] = true,\
[9244] = true,\
[10403] = true,\
[10417] = true,\
[10282] = true,\
[10281] = true,\
[10121] = true,\
[10542] = true,\
[10472] = true,\
[10512] = true,\
[10514] = true,\
[12623] = true,\
[12656] = true,\
[12741] = true,\
[12935] = true,\
[12909] = true,\
[13071] = true,\
[13072] = true,\
[13089] = true,\
[13090] = true,\
[13131] = true,\
[13132] = true,\
[13136] = true,\
[13137] = true,\
[13164] = true,\
[15777] = true,\
[15752] = true,\
[15949] = true,\
[15950] = true,\
[15969] = true,\
[15970] = true,\
[16326] = true,\
[16352] = true,\
[16633] = true,\
[16696] = true,\
--trials tank mitigation\
[8227] = true,\
[8243] = true,\
[9362] = true,\
[9363] = true,\
[8542] = true,\
[8543] = true,\
[8100] = true,\
[8731] = true,\
[9715] = true,\
[9738] = true,\
[9803] = true,\
[10797] = true,\
[10202] = true,\
[11235] = true,\
[11955] = true,\
[11195] = true,\
[11954] = true,\
[12832] = true,\
[12849] = true,\
[13009] = true,\
[13020] = true,\
[14333] = true,\
[15707] = true,\
[15671] = true,\
[15690] = true,\
[16031] = true,\
[16035] = true,\
[16073] = true,\
[16077] = true,\
[16728] = true,\
[18342] = true,\
[18370] = true,\
[18371] = true,\
[18385] = true,\
[19696] = true,\
[19204] = true,\
[19199] = true,\
[19344] = true,\
--24 man raids\
[9687] = true,\
[9773] = true,\
[9856] = true,\
[11326] = true,\
[11354] = true,\
[11377] = true,\
[11483] = true,\
[11598] = true,\
[14137] = true,\
[14162] = true,\
[14438] = true,\
[14506] = true,\
[18260] = true,\
[18638] = true,\
[18672] = true,\
[18677] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return TankMitigationTable[eventArgs.spellID] == true and caster.targetID == Player.id and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 6";
				["conditionType"] = 2;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
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
				["name"] = "basic mitigation table";
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
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 32 and AnyoneCore.Settings.DutyHelperMitigation == true and AnyoneCore.Settings.DutyHelper == true";
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
				["name"] = "check settings";
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
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
			[4] = {
				["actionCDValue"] = 1;
				["actionID"] = 7393;
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
				["name"] = "is tbn off cd";
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
				["actionCDValue"] = 1.0099999904633;
				["actionID"] = 7393;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
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
				["name"] = "use rampart instead";
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
				["actionCDValue"] = 1;
				["actionID"] = 7531;
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
				["name"] = "is rampart off cd";
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
				["actionCDValue"] = 1.0099999904633;
				["actionID"] = 7531;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 1;
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
				["name"] = "use shadow wall instead";
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
				["actionCDValue"] = 1;
				["actionID"] = 3636;
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
				["name"] = "is shadow wall off cd";
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
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "local ReprisalMitigationTable = {\
--dungeons\
[7963] = true,\
[7974] = true,\
[8331] = true,\
[8332] = true,\
[8290] = true,\
[8153] = true,\
[9807] = true,\
[10131] = true,\
[11156] = true,\
[11174] = true,\
[11527] = true,\
[11848] = true,\
[12586] = true,\
[12597] = true,\
[11634] = true,\
[12691] = true,\
[13401] = true,\
[14121] = true,\
[14122] = true,\
[14190] = true,\
[15812] = true,\
[15823] = true,\
[15831] = true,\
[8857] = true,\
[13732] = true,\
[15497] = true,\
[15505] = true,\
[15513] = true,\
[15589] = true,\
[15595] = true,\
[15611] = true,\
[15625] = true,\
[15634] = true,\
[15717] = true,\
[15853] = true,\
[15867] = true,\
[15876] = true,\
[15907] = true,\
--8 man raids tank mitigation\
[9175] = true,\
[7887] = true,\
[9487] = true,\
[9073] = true,\
[8939] = true,\
[9405] = true,\
[9209] = true,\
[9241] = true,\
[9244] = true,\
[10403] = true,\
[10417] = true,\
[10282] = true,\
[10281] = true,\
[10121] = true,\
[10542] = true,\
[10472] = true,\
[10512] = true,\
[10514] = true,\
[12623] = true,\
[12656] = true,\
[12741] = true,\
[12935] = true,\
[12909] = true,\
[13071] = true,\
[13072] = true,\
[13089] = true,\
[13090] = true,\
[13131] = true,\
[13132] = true,\
[13136] = true,\
[13137] = true,\
[13164] = true,\
[15777] = true,\
[15752] = true,\
[15949] = true,\
[15950] = true,\
[15969] = true,\
[15970] = true,\
[16326] = true,\
[16352] = true,\
[16633] = true,\
[16696] = true,\
--trials tank mitigation\
[8227] = true,\
[8243] = true,\
[9362] = true,\
[9363] = true,\
[8542] = true,\
[8543] = true,\
[8100] = true,\
[8731] = true,\
[9715] = true,\
[9738] = true,\
[9803] = true,\
[10797] = true,\
[10202] = true,\
[11235] = true,\
[11955] = true,\
[11195] = true,\
[11954] = true,\
[12832] = true,\
[12849] = true,\
[13009] = true,\
[13020] = true,\
[14333] = true,\
[15707] = true,\
[15671] = true,\
[15690] = true,\
[16031] = true,\
[16035] = true,\
[16073] = true,\
[16077] = true,\
[16728] = true,\
[18342] = true,\
[18370] = true,\
[18371] = true,\
[18385] = true,\
[19696] = true,\
--24 man raids\
[9687] = true,\
[9773] = true,\
[9856] = true,\
[11326] = true,\
[11354] = true,\
[11377] = true,\
[11483] = true,\
[11598] = true,\
[14137] = true,\
[14162] = true,\
[14438] = true,\
[14506] = true,\
[18260] = true,\
[18638] = true,\
[18672] = true,\
[18677] = true,\
---start of dungeon spell ids\
[8028] = true, \
[8039] = true,\
[8064] = true,\
[7946] = true,\
[8357] = true,\
[7958] = true,\
[8269] = true,\
[8271] = true,\
[8301] = true,\
[7287] = true,\
[7843] = true,\
[8150] = true,\
[8167] = true,\
[8175] = true,\
[9808] = true,\
[10162] = true,\
[11178] = true,\
[11178] = true,\
[11179] = true,\
[11184] = true,\
[11185] = true,\
[11528] = true,\
[11850] = true,\
[12588] = true,\
[13216] = true,\
[11635] = true,\
[12619] = true,\
[13397] = true,\
[14119] = true,\
[14120] = true,\
[14191] = true,\
[14195] = true,\
[15813] = true,\
[15824] = true,\
[15832] = true,\
[7822] = true,\
[8915] = true,\
[13708] = true,\
[15499] = true,\
[15506] = true,\
[15515] = true,\
[15524] = true,\
[15590] = true,\
[15601] = true,\
[15612] = true,\
[15627] = true,\
[15636] = true,\
[15587] = true,\
[17108] = true,\
[15716] = true,\
[15868] = true,\
[15878] = true,\
[15895] = true,\
[15908] = true,\
[18204] = true,\
[18277] = true,\
[18282] = true,\
[18851] = true,\
[19288] = true,\
[19295] = true,\
[19306] = true,\
[19315] = true,\
[19321] = true,\
[19322] = true,\
[19324] = true,\
[19328] = true,\
---start of trials spell ids\
[8230] = true,\
[8246] = true,\
[8588] = true,\
[9347] = true,\
[9374] = true,\
[8519] = true,\
[9373] = true,\
[8107] = true,\
[8108] = true,\
[8109] = true,\
[8110] = true,\
[9722] = true,\
[9692] = true,\
[9693] = true,\
[9694] = true,\
[10018] = true,\
[10799] = true,\
[10204] = true,\
[11234] = true,\
[11238] = true,\
[11255] = true,\
[11256] = true,\
[11259] = true,\
[11194] = true,\
[11196] = true,\
[11197] = true,\
[11223] = true,\
[11224] = true,\
[11228] = true,\
[12833] = true,\
[12852] = true,\
[13010] = true,\
[13023] = true,\
[14334] = true,\
[14347] = true,\
[14275] = true,\
[14322] = true,\
[14376] = true,\
[15697] = true,\
[15702] = true,\
[15703] = true,\
[15708] = true,\
[15667] = true,\
[15674] = true,\
[15681] = true,\
[15691] = true,\
[16026] = true,\
[16030] = true,\
[16072] = true,\
[16106] = true,\
[16190] = true,\
[16768] = true,\
[17815] = true,\
[18344] = true,\
[18360] = true,\
[18367] = true,\
[18380] = true,\
[18380] = true,\
[18384] = true,\
[18398] = true,\
[18419] = true,\
[18420] = true,\
[19112] = true,\
[19139] = true,\
[19141] = true,\
[19144] = true,\
[19134] = true,\
[19156] = true,\
[19158] = true,\
[19160] = true,\
[19204] = true,\
--- start of 8 man raids spell ids\
[9180] = true,\
[9184] = true,\
[7892] = true,\
[7900] = true,\
[9476] = true,\
[9488] = true,\
[9059] = true,\
[9074] = true,\
[9317] = true,\
[8950] = true,\
[9414] = true,\
[9220] = true,\
[9222] = true,\
[9239] = true,\
[9256] = true,\
[9257] = true,\
[10284] = true,\
[10283] = true,\
[10094] = true,\
[10123] = true,\
[10541] = true,\
[10456] = true,\
[10471] = true,\
[10477] = true,\
[12645] = true,\
[12646] = true,\
[12647] = true,\
[12648] = true,\
[12678] = true,\
[12679] = true,\
[12680] = true,\
[12681] = true,\
[12742] = true,\
[12715] = true,\
[12934] = true,\
[12908] = true,\
[14072] = true,\
[14082] = true,\
[13066] = true,\
[13073] = true,\
[13074] = true,\
[13093] = true,\
[13122] = true,\
[13123] = true,\
[13135] = true,\
[13138] = true,\
[13139] = true,\
[13143] = true,\
[13179] = true,\
[13793] = true,\
[15780] = true,\
[15783] = true,\
[15736] = true,\
[15738] = true,\
[15755] = true,\
[15759] = true,\
[15656] = true,\
[15982] = true,\
[15984] = true,\
[15986] = true,\
[16324] = true,\
[17435] = true,\
[16348] = true,\
[16350] = true,\
[16395] = true,\
[17436] = true,\
[16631] = true,\
[17382] = true,\
[16660] = true,\
[16682] = true,\
[16699] = true,\
[17384] = true,\
--24 man raids\
[9670] = true,\
[9760] = true,\
[11308] = true,\
[11318] = true,\
[11325] = true,\
[11364] = true,\
[11484] = true,\
[11612] = true,\
[11613] = true,\
[14139] = true,\
[14206] = true,\
[14439] = true,\
[18261] = true,\
[18437] = true,\
[18639] = true,\
[18675] = true,\
[18678] = true,\
[18753] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return TankMitigationTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 6";
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
				["name"] = "reprisal table";
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
				["category"] = 1;
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 6;
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
				["inRangeValue"] = 5;
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
				["rangeCheckSourceType"] = 19;
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[11] = {
				["actionCDValue"] = 1;
				["actionID"] = 7535;
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
		};
		["enabled"] = true;
		["eventType"] = 3;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "tank mitigation - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "a249d99d-6ba6-7dc7-990b-ac56114944b3";
	};
	[16] = {
		["actions"] = {
			[1] = {
				["aType"] = 1;
				["actionID"] = 7535;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
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
			[2] = {
				["aType"] = 1;
				["actionID"] = 7548;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
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
			[3] = {
				["aType"] = 1;
				["actionID"] = 7393;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
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
				["ignoreWeaveRules"] = true;
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
				["aType"] = 1;
				["actionID"] = 7531;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
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
				["ignoreWeaveRules"] = true;
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
				["aType"] = 1;
				["actionID"] = 3636;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 4;
					[4] = 5;
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
				["aType"] = 1;
				["actionID"] = 3638;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 5;
					[4] = 6;
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
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 32 and AnyoneCore.Settings.DutyHelperMitigation == true and AnyoneCore.Settings.DutyHelper == true";
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
				["name"] = "check settings";
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
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
				["conditionLua"] = "return table.size(EntityList(\"targetingme,maxdistance=5,aggressive\")) >= 4";
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
			[4] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 2;
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
				["hpValue"] = 25;
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
				["conditionLua"] = "return table.size(EntityList(\"targetingme,maxdistance=5,aggressive\")) >= 8";
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
			[6] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 2;
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
				["hpValue"] = 5;
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
		["name"] = "large groups - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "a935a5be-1506-3df7-949c-52783ce28a01";
	};
	[17] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "for _, ent in pairs(EntityList(\"aggro,targetable,attackable,maxdistance=15,mindistance=4\")) do\
		if (ent ~= nil) then\
					if ent.aggropercentage <= 99 then\
						Player:SetTarget(ent.id)\
				 end\
		end\
end";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 5;
					[2] = 1;
					[3] = 2;
					[4] = 3;
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
				["aType"] = 1;
				["actionID"] = 3624;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 5;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = true;
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
				["targetType"] = 4;
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "for _, ent in pairs(EntityList(\"aggro,targetable,attackable,maxdistance=3\")) do\
		if (ent ~= nil) then\
					if ent.aggropercentage <= 99 then\
						Player:SetTarget(ent.id)\
				 end\
		end\
end";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 5;
					[2] = 1;
					[3] = 4;
					[4] = 3;
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
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 37 and AnyoneCore.Settings.DutyHelperMitigation == true and AnyoneCore.Settings.DutyHelper == true";
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
				["name"] = "check settings";
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
				["conditionLua"] = "for _, ent in pairs(EntityList(\"aggro,targetable,attackable,maxdistance=15,mindistance=4\")) do\
		if (ent ~= nil) then\
					if ent.aggropercentage <= 99 then\
						return true\
					else return false\
				 end\
		end\
end\
return false";
				["conditionType"] = 7;
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
				["name"] = "check for mobs with no aggro";
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
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
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
				["conditionLua"] = "for _, ent in pairs(EntityList(\"aggro,targetable,attackable,maxdistance=3\")) do\
		if (ent ~= nil) then\
					if ent.aggropercentage <= 99 then\
						return true\
					else return false\
				 end\
		end\
end\
return false";
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
				["conditionLua"] = "return table.size(TensorCore.getEntityGroupList(\"Party\")) <= 4";
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
		["name"] = "grab non-aggro mobs - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "19d517c3-a41b-6c1e-87e2-696a4d15a167";
	};
	[18] = {
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
		["name"] = "      -SAVAGE REACTIONS-";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "cbe40528-0d1f-ae66-b596-8d4c7fae87ce";
	};
	[19] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local party = TensorCore.getEntityGroupList(\"Party\")\
local chainbuffs = {}\
\
for _, ent in pairs(party) do\
    if TensorCore.hasBuff(ent, 2233) then\
        chainbuffs[#chainbuffs+1] = ent\
    end\
end\
\
for _, chain in pairs(chainbuffs) do\
    local closest\
    local closestDist = 9999\
    \
    for _, ent in pairs(party) do\
        if ent.id ~= chain.id then\
            local dist = TensorCore.getDistance2d(ent.pos, chain.pos)\
            if dist < closestDist then\
                closest = ent\
                closestDist = dist\
            end\
        end\
    end\
    \
    if closest ~= nil then\
        Argus.addCircleFilled(\
            closest.pos.x,\
            closest.pos.y,\
            closest.pos.z,\
            2,\
            30,\
            GUI:ColorConvertFloat4ToU32(0, 0, 1, 0.2),\
            GUI:ColorConvertFloat4ToU32(0, 0, 1, 1),\
            1.5\
        )\
    end\
end";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
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
				["category"] = 2;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["localmapid"] = 906;
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
				["buffIDList"] = {
				};
				["category"] = 4;
				["comparator"] = 1;
				["conditionLua"] = "return Argus ~= nil and AnyoneCore.Settings.DrawChainLightning == true";
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
				["name"] = "has argus";
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
		["eventType"] = 12;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "draw chain lightning";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "78c97ceb-199c-26e7-ba1f-475280988ece";
	};
}
return obj1
