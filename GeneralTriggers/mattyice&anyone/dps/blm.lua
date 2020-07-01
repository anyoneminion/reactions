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
		["eventType"] = 1,
		["execute"] = "if not gAnyoneCoreInitialize then\
	AnyoneCore = {\
		enabled = true,\
		data = {},\
		visible = true,\
		open = false,\
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
			DrawNaelQuotes = Settings.AnyoneCore.DrawNaelQuotes\
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
	AnyoneCore.main_tabs = GUI_CreateTabs(\"General,Argus,Fight Specific,Job Specific,Duty Helper,Hacks\")\
	function AnyoneCore.draw()\
		if self.reference.enabled and AnyoneCore.enabled and AnyoneCore.open then\
			GUI:SetNextWindowSize(250,400,GUI.SetCond_FirstUseEver)\
			AnyoneCore.visible, AnyoneCore.open = GUI:Begin(\"AnyoneCore\", AnyoneCore.open)\
			if AnyoneCore.visible then\
			local tabindex, tabname = GUI_DrawTabs(AnyoneCore.main_tabs)\
			if (tabname == \"General\") then\
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
				end\
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
				AnyoneCore.Settings.UseMoogleTTS, changed = GUI:Checkbox(\"Remind Me To Use Meditate/Improv With MoogleTTS\", AnyoneCore.Settings.UseMoogleTTS)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Reminds you using MoogleTTS to press Meditate/Improvisation when the boss goes untargetable.\\n\")\
					GUI:TextColored(1,1,0,1,\"MoogleTTS has to be installed, will do nothing otherwise. Check pins in FFXIVMinion Discord's #addon-file-sharing channel to download.\")\
					GUI:TextColored(1,0,0,1,\"Do not recommend using if you're streaming or recording to show other people, it will be heard. You can probably pass it off as an ACT trigger, but be careful.\")\
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
					GUI:Text(\"Reactions will never enable/disable Enpi usage for you. Allows you to change it by yourself as you please.\\n\")\
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
					GUI:TextColored(1,1,0,1,\"Works regardless of timelines. Any features after this one won't work unless this setting is enabled.\")\
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
self.used = true",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "AnyoneCore",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "1f46816b-c6bd-2c90-b784-a61bfae54d58",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "         -RESETS-",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "d44b5523-e842-c79c-b1f7-8b12e2074b7e",
	},
	[3] = {
		["actions"] = {
			[1] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "SallyBLM.HotBarConfig.Addle.enabled = true\
SallyBLM.HotBarConfig.AmMouse.enabled = true\
SallyBLM.HotBarConfig.BetweenTheLine.enabled = true\
SallyBLM.HotBarConfig.LeyLines.enabled = true\
SallyBLM.HotBarConfig.ManaWard.enabled = true\
SallyBLM.HotBarConfig.Scathe.enabled = true\
SallyBLM.HotBarConfig.Sharpcast.enabled = true\
SallyBLM.HotBarConfig.SureCast.enabled = true\
SallyBLM.HotBarConfig.SwiftCast.enabled = true\
SallyBLM.HotBarConfig.Thunder3.enabled = true\
SallyBLM.HotBarConfig.Xenoglossy.enabled = true\
SallyBLM.HotBarConfig.Despair.enabled = true\
SallyBLM.HotBarConfig.Foul.enabled = true\
\
SallyBLM.SkillSettings.BurnBoss.enabled = false\
SallyBLM.SkillSettings.DoT.enabled = true\
SallyBLM.SkillSettings.LeyLines.enabled = true\
SallyBLM.SkillSettings.Manafont.enabled = true\
SallyBLM.SkillSettings.SaveCD.enabled = false\
SallyBLM.SkillSettings.SharpCast.enabled = true\
SallyBLM.SkillSettings.SwiftDPS.enabled = true\
SallyBLM.SkillSettings.TransposeUS.enabled = true\
SallyBLM.SkillSettings.TripleCast.enabled = true\
SallyBLM.SkillSettings.UseAOE.enabled = true\
SallyBLM.SkillSettings.Xenoglossy.enabled = true\
SallyBLM.SkillSettings.Foul.enabled = true\
SallyBLM.SkillSettings.Fire1.enabled = true\
SallyBLM.SkillSettings.Despair.enabled = true\
\
Player:ClearTarget()\
\
if eventArgs.oldData.PotsEnabled ~= nil then\
SallyBLM.SkillSettings.Potion.enabled = true\
end\
self.used = true",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
		},
		["enabled"] = true,
		["eventType"] = 9,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
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
		["uuid"] = "9d677e4e-0021-9c77-8fce-9061ed5eb1ac",
	},
	[4] = {
		["actions"] = {
			[1] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "SallyBLM.HotBarConfig.Addle.enabled = true\
SallyBLM.HotBarConfig.AmMouse.enabled = true\
SallyBLM.HotBarConfig.BetweenTheLine.enabled = true\
SallyBLM.HotBarConfig.LeyLines.enabled = true\
SallyBLM.HotBarConfig.ManaWard.enabled = true\
SallyBLM.HotBarConfig.Scathe.enabled = true\
SallyBLM.HotBarConfig.Sharpcast.enabled = true\
SallyBLM.HotBarConfig.SureCast.enabled = true\
SallyBLM.HotBarConfig.SwiftCast.enabled = true\
SallyBLM.HotBarConfig.Thunder3.enabled = true\
SallyBLM.HotBarConfig.Xenoglossy.enabled = true\
SallyBLM.HotBarConfig.Despair.enabled = true\
\
self.used = true",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
		},
		["enabled"] = true,
		["eventType"] = 10,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
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
		["uuid"] = "20a260b1-06a7-27b6-94f5-73d21d2956e4",
	},
	[5] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "          -MISC-",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "487d0db9-739b-846a-a6b7-9d8d91564c92",
	},
	[6] = {
		["actions"] = {
			[1] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "local line = eventArgs.line.line\
local time = line:match(\"Battle commencing in (%d+) seconds!\")\
if time ~= nil then\
				data.countdownTime = Now()\
				data.countdownDuration = tonumber(time)\
				data.openerDelay = math.random(0, 250)\
				data.targetDelay = math.random(100, 7500)\
				data.BadTeamDelay = AnyoneCore.Settings.BadTeamDelay\
end\
self.used = true",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "record countdown time",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
			[2] = {
				["aType"] = 4,
				["actionID"] = 15997,
				["actionLua"] = "SallyBLM.SkillSettings.Opener.enabled = true\
self.used = true",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPos"] = {
				},
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 6,
					[4] = 3,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = true,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "enable opener",
				["positionPreviewColor"] = {
				},
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
			[3] = {
				["aType"] = 1,
				["actionID"] = 3574,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 3,
					[4] = 7,
					[5] = 6,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = true,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
			[4] = {
				["aType"] = 1,
				["actionID"] = 3573,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 6,
					[4] = 8,
					[5] = 9,
					[6] = 10,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = true,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
			[5] = {
				["aType"] = 3,
				["actionID"] = -1,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 4,
					[4] = 6,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "target nearest",
				["potType"] = 1,
				["setTarget"] = true,
				["showPositionPreview"] = false,
				["stopCasting"] = false,
				["stopMoving"] = false,
				["targetContentID"] = -1,
				["targetName"] = "",
				["targetSubType"] = 1,
				["targetType"] = 5,
				["untarget"] = false,
				["useForWeaving"] = false,
				["usePot"] = false,
				["used"] = false,
				["variableTogglesType"] = 1,
			},
			[6] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "gStartCombat = true\
self.used = true",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 4,
					[4] = 6,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "enable start combat",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
			[7] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "gStartCombat = true\
self.used = true",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 5,
				},
				["endIfUsed"] = true,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "dequeue if expired",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
			[8] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "if data.countdownCanceled == true or (data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 0) then\
    data.countdownCanceled = nil\
				Player:ClearTarget()\
    gStartCombat = true\
    self.used = true\
end",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
				},
				["endIfUsed"] = true,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "dequeue if canceled",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
				["conditionLua"] = "return FFXIV_Common_BotRunning",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "is bot running",
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "local line = eventArgs.line.line\
local time = line:match(\"Battle commencing in (%d+) seconds!\\n\")\
return time ~= nil",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "Battle commencing in 10 seconds!",
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
				["name"] = "is text countdown",
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
			[3] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 12000 - data.openerDelay + data.BadTeamDelay",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "time is -12 + random(1s)",
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
			[4] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 3000 + data.BadTeamDelay",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "time is -3",
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
			[5] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 0",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "time is < 0",
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
			[6] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return AnyoneCore.Settings.PrepullHelper == true and Player.job == 25",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
				["name"] = "is prepull enabled",
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
			[7] = {
				["actionCDValue"] = 1,
				["actionID"] = 3574,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 2,
				["conditionLua"] = "",
				["conditionType"] = 4,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
			[8] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return SallyBLM.openerInfo.index == 2",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
				["name"] = "check for modified jp",
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
			[9] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 4000 + data.BadTeamDelay",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "time is -4",
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
			[10] = {
				["actionCDValue"] = 1,
				["actionID"] = 3573,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 2,
				["conditionLua"] = "",
				["conditionType"] = 4,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
			[11] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 15000",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "time is -15",
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
			[12] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 15000 - data.targetDelay",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "time is -15 + random",
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
		["eventType"] = 7,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "prepull helper",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "757faf3c-9747-8308-be95-0cac65910044",
	},
	[7] = {
		["actions"] = {
			[1] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "data.countdownCanceled = true\
self.used = true",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 1,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
				["category"] = 5,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 1,
				["eventBuffDuration"] = 0,
				["eventBuffID"] = -1,
				["eventChatLine"] = "Countdown canceled by",
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
		["eventType"] = 7,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "prepull cancel",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "64c65cc1-dc1f-24b5-bac0-6e58b61ae2ba",
	},
	[8] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 11,
		["execute"] = "local selectedACR = gACRSelectedProfiles[Player.job]\
if Player.localmapid == 906 and Player.job == 25 and selectedACR == \"SallyBLM\" then\
 SallyBLM.openerInfo.index = 2\
 self.used = true\
end\
\
if Player.localmapid == 907 and Player.job == 25 and selectedACR == \"SallyBLM\" then\
 SallyBLM.openerInfo.index = 3\
 self.used = true\
end\
\
if Player.localmapid == 908 and Player.job == 25 and selectedACR == \"SallyBLM\" then\
 SallyBLM.openerInfo.index = 2\
 self.used = true\
end\
\
if Player.localmapid == 909 and Player.job == 25 and selectedACR == \"SallyBLM\" then\
 SallyBLM.openerInfo.index = 2\
 self.used = true\
end\
self.used = true\
self.eventConditionMismatch = true\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "opener based on zone",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "d9327b58-7458-70d0-b4c0-545a6ff40788",
	},
	[9] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 11,
		["execute"] = "if Player.localmapid == 906 or Player.localmapid == 907 or Player.localmapid == 908 or Player.localmapid == 909 or Player.localmapid == 733 or Player.localmapid == 887 or Player.localmapid == 777 then\
		if Player.job ~= 25 and AnyoneCore.Settings.JobCheck == true then\
				d(\"[Anyone's Reactions] - Job check failed, sending text command.\")\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0} You're using the wrong general triggers. You're currently using the {color:255,0,0}Black Mage{color:0,255,0} profile, which doesn't match your current job. <se.1>\")\
		elseif Player.job == 25 then\
				d(\"[Anyone's Reactions] - Player job check succeeded\")\
		elseif Player.job ~= 25 and AnyoneCore.Settings.JobCheck == false then\
				d(\"[Anyone's Reactions] - Job check failed, but player has not enabled the setting to send a warning in chat.\")\
		end\
end\
self.used = true",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "job check",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "5b4e55d8-2f16-8f4a-9d70-f2177098e853",
	},
	[10] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 1,
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
self.eventConditionMismatch = true -- supress log",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "active time maneuver",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "aa7ad492-1318-dd3a-9db3-091cdede8be1",
	},
	[11] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "        -DUTY HELPER-",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "ef1c7c54-a356-0223-a05c-306c9c2f5c53",
	},
	[12] = {
		["actions"] = {
			[1] = {
				["aType"] = 3,
				["actionID"] = -1,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 3,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = true,
				["showPositionPreview"] = false,
				["stopCasting"] = false,
				["stopMoving"] = false,
				["targetContentID"] = -1,
				["targetName"] = "",
				["targetSubType"] = 1,
				["targetType"] = 5,
				["untarget"] = false,
				["useForWeaving"] = false,
				["usePot"] = false,
				["used"] = false,
				["variableTogglesType"] = 1,
			},
			[2] = {
				["aType"] = 3,
				["actionID"] = -1,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 4,
					[2] = 2,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
				["stopCasting"] = true,
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
				["conditionLua"] = "if not Player:GetTarget() then return true end\
return false",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.DutyHelperTargeting == true and AnyoneCore.Settings.DutyHelper == true",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
			[3] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 7,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
			[4] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "local mytarget = Player:GetTarget()\
local cinfo = Player.castinginfo \
return mytarget ~= nil and cinfo ~= nil and (mytarget.id ~= cinfo.channeltargetid) and (cinfo.casttime - cinfo.channeltime >= 0.500)",
				["conditionType"] = 5,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["loop"] = true,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "always target smth - duty helper",
		["throttleTime"] = 0,
		["time"] = 128.9,
		["timeRange"] = true,
		["timelineIndex"] = 20,
		["timeout"] = 5,
		["timerEndOffset"] = 8,
		["timerOffset"] = 1.375,
		["timerStartOffset"] = -8,
		["used"] = false,
		["uuid"] = "734255ca-1ebc-b462-a37d-6bc75615e686",
	},
	[13] = {
		["actions"] = {
			[1] = {
				["aType"] = 1,
				["actionID"] = 7560,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 3,
					[4] = 4,
				},
				["endIfUsed"] = true,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = true,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
				["stopCasting"] = false,
				["stopMoving"] = false,
				["targetContentID"] = -1,
				["targetName"] = "",
				["targetSubType"] = 1,
				["targetType"] = 19,
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
				["conditionLua"] = "local MitigationTable = {\
--dungeons\
[8023] = true,\
[8028] = true,\
[8039] = true,\
[8060] = true,\
[7946] = true,\
[7958] = true,\
[8328] = true,\
[8329] = true,\
[8269] = true,\
[8271] = true,\
[8301] = true,\
[7827] = true,\
[8150] = true,\
[8167] = true,\
[8174] = true,\
[9808] = true,\
[9809] = true,\
[9810] = true,\
[10195] = true,\
[10133] = true,\
[10162] = true,\
[11157] = true,\
[11185] = true,\
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
[15601] = true,\
[15612] = true,\
[15627] = true,\
[15636] = true,\
[15559] = true,\
[15567] = true,\
[15587] = true,\
[15716] = true,\
[15853] = true,\
[15868] = true,\
[15878] = true,\
[15895] = true,\
[18204] = true,\
[18277] = true,\
[18282] = true,\
[18851] = true,\
[19288] = true,\
[19306] = true,\
[19315] = true,\
[19324] = true,\
[19328] = true,\
--8 man raid\
[9175] = true,\
[9180] = true,\
[7887] = true,\
[7892] = true,\
[9488] = true,\
[9074] = true,\
[9317] = true,\
[8950] = true,\
[9414] = true,\
[9220] = true,\
[9239] = true,\
[10406] = true,\
[10427] = true,\
[10284] = true,\
[10283] = true,\
[10094] = true,\
[10123] = true,\
[10541] = true,\
[10456] = true,\
[10471] = true,\
[10477] = true,\
[10503] = true,\
[12645] = true,\
[12646] = true,\
[12647] = true,\
[12648] = true,\
[12648] = true,\
[12679] = true,\
[12680] = true,\
[12681] = true,\
[12742] = true,\
[12715] = true,\
[12934] = true,\
[12908] = true,\
[13066] = true,\
[13073] = true,\
[13074] = true,\
[13093] = true,\
[13135] = true,\
[13138] = true,\
[13139] = true,\
[13143] = true,\
[13179] = true,\
[13793] = true,\
[15736] = true,\
[15738] = true,\
[15755] = true,\
[15759] = true,\
[17565] = true,\
[15982] = true,\
[15984] = true,\
[15986] = true,\
[16324] = true,\
[16340] = true,\
[16348] = true,\
[16350] = true,\
[16395] = true,\
[17436] = true,\
[16631] = true,\
[16632] = true,\
--trials\
[8230] = true,\
[8246] = true,\
[9347] = true,\
[9361] = true,\
[9374] = true,\
[8519] = true,\
[8541] = true,\
[9373] = true,\
[8107] = true,\
[8108] = true,\
[8109] = true,\
[8110] = true,\
[8111] = true,\
[9722] = true,\
[9723] = true,\
[9724] = true,\
[9725] = true,\
[10018] = true,\
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
[14275] = true,\
[15708] = true,\
[15691] = true,\
[16026] = true,\
[16030] = true,\
[16072] = true,\
[16106] = true,\
[16768] = true,\
[18344] = true,\
[18360] = true,\
[18367] = true,\
[18380] = true,\
[18384] = true,\
[18398] = true,\
[18419] = true,\
[19112] = true,\
[19139] = true,\
[19141] = true,\
[19144] = true,\
[19134] = true,\
[19158] = true,\
[19160] = true,\
[19204] = true,\
--24 man raid\
[9670] = true,\
[9774] = true,\
[9869] = true,\
[11308] = true,\
[11316] = true,\
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
[18678] = true,\
[18753] = true,\
}\
\
if MitigationTable[eventArgs.spellID] then\
return true \
end\
return false",
				["conditionType"] = 2,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 2,
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 25 and AnyoneCore.Settings.DutyHelperMitigation == true and AnyoneCore.Settings.DutyHelper == true",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
			[3] = {
				["actionCDValue"] = 1,
				["actionID"] = 7560,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 2,
				["conditionLua"] = "",
				["conditionType"] = 4,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
			[4] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 7,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
		["eventType"] = 3,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "mitigate - duty helper",
		["throttleTime"] = 3000,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "7119aa3a-1c10-f74c-bb58-9061768ba6b8",
	},
	[14] = {
		["actions"] = {
			[1] = {
				["aType"] = 1,
				["actionID"] = 7559,
				["actionLua"] = "",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
					[3] = 3,
					[4] = 4,
				},
				["endIfUsed"] = true,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = true,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
return KnockbackTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 5",
				["conditionType"] = 2,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
				["enmityValue"] = 0,
				["eventArgOptionType"] = 1,
				["eventArgType"] = 2,
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return FFXIV_Common_BotRunning and Player.job == 25 and AnyoneCore.Settings.DutyHelperKnockback == true and AnyoneCore.Settings.DutyHelper == true",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
			[3] = {
				["actionCDValue"] = 1,
				["actionID"] = 7559,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 2,
				["conditionLua"] = "",
				["conditionType"] = 4,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
			[4] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 7,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = true,
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
		["eventType"] = 3,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "surecast - duty helper",
		["throttleTime"] = 3000,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "1abfe07e-abf3-be97-82b3-c8a961c4eac1",
	},
	[15] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = false,
		["eventType"] = 1,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "      -SAVAGE REACTIONS-",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "3b988f25-1835-becb-af6f-5a690030525b",
	},
	[16] = {
		["actions"] = {
			[1] = {
				["aType"] = 4,
				["actionID"] = -1,
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
end",
				["allowInterrupt"] = false,
				["atomicPriority"] = false,
				["castAtMouse"] = false,
				["castPosX"] = 0,
				["castPosY"] = 0,
				["castPosZ"] = 0,
				["conditions"] = {
					[1] = 2,
					[2] = 1,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["isAreaTarget"] = false,
				["luaNeedsWeaveWindow"] = false,
				["luaReturnsAction"] = false,
				["name"] = "",
				["potType"] = 1,
				["setTarget"] = false,
				["showPositionPreview"] = false,
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
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
				["conditionType"] = 8,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["localmapid"] = 906,
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 1,
				["buffDuration"] = 0,
				["buffID"] = -1,
				["buffIDList"] = {
				},
				["category"] = 4,
				["comparator"] = 1,
				["conditionLua"] = "return Argus ~= nil and AnyoneCore.Settings.DrawChainLightning == true",
				["conditionType"] = 1,
				["conditions"] = {
				},
				["contentid"] = -1,
				["dequeueIfLuaFalse"] = false,
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
				["name"] = "has argus",
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
		["eventType"] = 12,
		["execute"] = "",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaNeedsWeaveWindow"] = false,
		["luaReturnsAction"] = false,
		["name"] = "draw chain lightning",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "d6e34930-0b07-5146-8e28-2ded8f9e000b",
	},
}
return obj1
