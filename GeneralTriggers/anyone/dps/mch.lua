-- Persistent Data
local multiRefObjects = {
{};{};{};{};{};{};{};{};{};{};
} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 13;
		["execute"] = "if not gAnyoneCoreInitialize then\
	AnyoneCore = {\
		enabled = true,\
		data = {},\
		visible = true,\
		open = false,\
		WindowStyle = {\
		[\"Text\"] = { [1] = 0, [2] = 0, [3] = 0, [4] = 0 },\
		[\"WindowBg\"] = { [1] = 0, [2] = 0, [3] = 0, [4] = 0.85 },\
		[\"Button\"] = { [1] = 20, [2] = 75, [3] = 100, [4] = 1 },\
		[\"ButtonHovered\"] = { [1] = 15, [2] = 31, [3] = 90, [4] = 0.75 },\
		[\"CheckMark\"] = { [1] = 250, [2] = 250, [3] = 250, [4] = 1 },\
		[\"TextSelectedBg\"] = { [1] = 0, [2] = 0, [3] = 0, [4] = 0 },\
		[\"TooltipBg\"] = { [1] = 7, [2] = 0, [3] = 12, [4] = 0.9 },\
		[\"ModalWindowDarkening\"] = { [1] = 7, [2] = 0, [3] = 12, [4] = 0.75 },\
		},\
		version = 3.152,\
		helperVersion = 1.0,\
		gitVersion,\
		downloadStatus,\
		checkStatus,\
		changelog,\
		lastUpdateCheck,\
		lastStatusCheck,\
		lastStatusCheck2,\
		lastStatusCheck3,\
		lastStatusCheck4,\
	}\
	\
	local MinionPath = GetStartupPath()\
	local LuaModsPath = GetLuaModsPath()\
	\
	\
	function checkForUpdate()\
		local LuaModsPath = GetLuaModsPath()\
		io.popen([[start /b powershell -Command \"if(!(test-path ']] ..LuaModsPath.. [[\\TensorReactionsBackup')) { New-Item -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup' -ItemType Directory -Force }; if(!(test-path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\anyonecoreversion.txt')) { New-Item -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\anyonecoreversion.txt' -ItemType File -Force }; Clear-Content -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\anyonecoreversion.txt' -Force; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $versionCheck = (Invoke-WebRequest -Uri https://api.github.com/repos/AnyoneMinion/reactions/releases -UseBasicParsing | ConvertFrom-Json)[0].tag_name; Set-Content -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\anyonecoreversion.txt' -Value $versionCheck; stop-process -Id $PID\"]]) \
		lastStatusCheck4 = true\
		d(\"[AnyoneCore] Checking for updates...\")\
	end\
	\
	function readChangelog()\
		if changelog == nil then\
			local handle = io.popen([[start /b powershell -Command \"[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $changelog1 = (Invoke-WebRequest -Uri https://api.github.com/repos/AnyoneMinion/reactions/releases -UseBasicParsing | ConvertFrom-Json)[0].body; $changelog2 = (Invoke-WebRequest -Uri https://api.github.com/repos/AnyoneMinion/reactions/releases -UseBasicParsing | ConvertFrom-Json)[1].body; $changelog3 = (Invoke-WebRequest -Uri https://api.github.com/repos/AnyoneMinion/reactions/releases -UseBasicParsing | ConvertFrom-Json)[2].body; Write-Output $changelog1 $changelog2 $changelog3; stop-process -Id $PID\"]]) \
			changelog = handle:read(\"*a\")\
			handle:close()\
		end\
	end\
	\
	function download_files_noreading()\
		io.popen([[start /b powershell -verb runas -Command \"if(!(test-path ']] ..LuaModsPath.. [[\\TensorReactionsBackup')) { New-Item -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup' -ItemType Directory -Force }; if(!(test-path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\downloadstatus.txt')) { New-Item -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\downloadstatus.txt' -ItemType File -Force }; Clear-Content -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\downloadstatus.txt' -Force; Compress-Archive -Path ']] ..LuaModsPath.. [[TensorReactions\\GeneralTriggers', ']] ..LuaModsPath.. [[TensorReactions\\TimelineTriggers' -DestinationPath ]] ..LuaModsPath.. [[\\TensorReactionsBackup\\TensorReactions_$((Get-Date).ToString('MM_dd_HHmm')).zip -Force; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $tag = (Invoke-WebRequest -Uri https://api.github.com/repos/AnyoneMinion/reactions/releases -UseBasicParsing | ConvertFrom-Json)[0].tag_name; Invoke-WebRequest https://github.com/AnyoneMinion/reactions/releases/download/$tag/TensorReactions.zip -Out ]] ..LuaModsPath.. [[\\\\TensorReactions\\\\TensorReactions.zip; Expand-Archive ]] ..LuaModsPath.. [[\\TensorReactions\\TensorReactions.zip -DestinationPath ]] ..LuaModsPath.. [[\\TensorReactions\\ -Force; Remove-Item ]] ..LuaModsPath.. [[\\TensorReactions\\TensorReactions.zip -Force; Set-Content -Path ']] ..LuaModsPath.. [[\\TensorReactionsBackup\\downloadstatus.txt' -Value 'Done'; stop-process -Id $PID\"]])\
		lastStatusCheck2 = true\
		d(\"[AnyoneCore] Updater: Download was started. Moving to next step...\")\
	end\
	\
	function AnyoneCoreReload()\
		gAnyoneCoreInitialize = false\
		downloadStatus = nil\
		checkStatus = nil\
		changelog = nil\
		lastStatusCheck = nil\
		lastUpdateCheck = nil\
		lastStatusCheck2 = nil\
		lastStatusCheck3 = nil\
		lastStatusCheck4 = nil\
		TensorCore.API.TensorReactions.reloadGeneralTriggers()\
		TensorCore.API.TensorReactions.reloadTimelineTriggers()\
	end\
	\
	function WarnForUpdate()\
		if Settings.AnyoneCore.WarnForUpdate == true and Settings.AnyoneCore.AutomaticUpdater == false then\
			if gitVersion ~= nil and (AnyoneCore.version < gitVersion) then\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0}[AnyoneCore] A new update to Anyone's reactions is available to download. Open AnyoneCore in your FFXIVMinion menu to update.\")\
				d(\"[AnyoneCore] - New update available!\")\
			else\
				d(\"[AnyoneCore] - No updates available.\")\
			end\
		end\
	end\
	\
	\
		AnyoneCore.timelineTable = {\
			[31] = { -- machinist\
				[906] = \"anyone\\\\dps\\\\mch\\\\e5s\", -- edens verse\
				[907] = \"anyone\\\\dps\\\\mch\\\\e6s\",\
				[908] = \"anyone\\\\dps\\\\mch\\\\e7s\",\
				[909] = \"anyone\\\\dps\\\\mch\\\\e8s\",\
				[733] = \"anyone\\\\dps\\\\mch\\\\ucob\", -- ucob\
				[777] = nil, -- uwu\
				[887] = \"rikudou\\\\mch\\\\riku tea\", -- tea\
			},\
			[23] = { -- bard\
				[906] = \"anyone\\\\dps\\\\brd\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\dps\\\\brd\\\\e6s\",\
				[908] = \"anyone\\\\dps\\\\brd\\\\e7s\",\
				[909] = \"anyone\\\\dps\\\\brd\\\\e8s\",\
				[733] = \"anyone\\\\dps\\\\brd\\\\ucob\", -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
			[38] = { -- dancer\
				[906] = \"anyone\\\\dps\\\\dnc\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\dps\\\\dnc\\\\e6s\",\
				[908] = \"anyone\\\\dps\\\\dnc\\\\e7s\",\
				[909] = \"anyone\\\\dps\\\\dnc\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
			[27] = { -- summoner\
				[906] = \"anyone\\\\dps\\\\smn\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\dps\\\\smn\\\\e6s\",\
				[908] = \"anyone\\\\dps\\\\smn\\\\e7s\",\
				[909] = \"anyone\\\\dps\\\\smn\\\\e8s\",\
				[733] = \"anyone\\\\dps\\\\smn\\\\ucob\", -- ucob\
				[777] = nil, -- uwu\
				[887] = \"anyone\\\\dps\\\\smn\\\\tea BETA\", -- tea\
			},\
			[34] = { -- samurai\
				[906] = \"anyone\\\\dps\\\\sam\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\dps\\\\sam\\\\e6s\",\
				[908] = \"anyone\\\\dps\\\\sam\\\\e7s\",\
				[909] = \"anyone\\\\dps\\\\sam\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = \"anyone\\\\dps\\\\sam\\\\TEA beta\", -- tea\
			},\
			[22] = { -- dragoon\
				[906] = \"anyone\\\\dps\\\\drg\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\dps\\\\drg\\\\e6s\",\
				[908] = \"anyone\\\\dps\\\\drg\\\\e7s\",\
				[909] = \"anyone\\\\dps\\\\drg\\\\e8s\",\
				[733] = \"anyone\\\\dps\\\\drg\\\\ucob\", -- ucob\
				[777] = nil, -- uwu\
				[887] = \"anyone\\\\dps\\\\drg\\\\TEA beta\", -- tea\
			},\
			[25] = { -- black mage\
				[906] = \"mattyice&anyone\\\\dps\\\\blm\\\\e5s\", --edens verse\
				[907] = \"mattyice&anyone\\\\dps\\\\blm\\\\e6s\",\
				[908] = \"mattyice&anyone\\\\dps\\\\blm\\\\e7s\",\
				[909] = \"mattyice&anyone\\\\dps\\\\blm\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
			[35] = { -- red mage\
				[906] = \"mattyice&anyone\\\\dps\\\\rdm\\\\e5s\", --edens verse\
				[907] = \"mattyice&anyone\\\\dps\\\\rdm\\\\e6s\",\
				[908] = \"mattyice&anyone\\\\dps\\\\rdm\\\\e7s\",\
				[909] = \"mattyice&anyone\\\\dps\\\\rdm\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
			[32] = { -- dark knight\
				[906] = \"anyone\\\\tank\\\\drk\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\tank\\\\drk\\\\e6s\",\
				[908] = \"anyone\\\\tank\\\\drk\\\\e7s\",\
				[909] = \"anyone\\\\tank\\\\drk\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
			[21] = { -- warrior\
				[906] = \"anyone\\\\tank\\\\war\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\tank\\\\war\\\\e6s\",\
				[908] = \"anyone\\\\tank\\\\war\\\\e7s\",\
				[909] = \"anyone\\\\tank\\\\war\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
			[19] = { -- paladin\
				[906] = \"anyone\\\\tank\\\\pld\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\tank\\\\pld\\\\e6s\",\
				[908] = \"anyone\\\\tank\\\\pld\\\\e7s\",\
				[909] = \"anyone\\\\tank\\\\pld\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
			[37] = { -- gunbreaker\
				[906] = \"anyone\\\\tank\\\\gnb\\\\e5s\", --edens verse\
				[907] = \"anyone\\\\tank\\\\gnb\\\\e6s\",\
				[908] = \"anyone\\\\tank\\\\gnb\\\\e7s\",\
				[909] = \"anyone\\\\tank\\\\gnb\\\\e8s\",\
				[733] = nil, -- ucob\
				[777] = nil, -- uwu\
				[887] = nil, -- tea\
			},\
		}\
		\
		AnyoneCore.generalTable = {\
			[31] = \"anyone\\\\dps\\\\mch\", --machinist\
			[23] = \"anyone\\\\dps\\\\brd\", -- bard\
			[38] = \"anyone\\\\dps\\\\dnc\", -- dancer\
			[27] = \"anyone\\\\dps\\\\smn\", -- summoner\
			[34] = \"anyone\\\\dps\\\\sam\", -- samurai\
			[22] = \"anyone\\\\dps\\\\drg\", -- dragoon\
			[25] = \"mattyice&anyone\\\\dps\\\\blm\", -- black mage\
			[35] = \"mattyice&anyone\\\\dps\\\\rdm\", -- red mage\
			[32] = \"anyone\\\\tank\\\\drk\", -- dark knight\
			[21] = \"anyone\\\\tank\\\\war\", -- warrior\
			[19] = \"anyone\\\\tank\\\\pld\", -- paladin\
			[37] = \"anyone\\\\tank\\\\gnb\", -- gunbreaker\
		}\
	\
	function JobCheck()\
		local CurrentTimeline = TensorCore.API.TensorReactions.getTimelineTriggerProfileName()\
		local CurrentGeneral = TensorCore.API.TensorReactions.getGeneralTriggerProfileName()\
		if Settings.AnyoneCore.CheckJob == true then\
			if (CurrentTimeline ~= AnyoneCore.timelineTable[Player.job][Player.localmapid]) and (AnyoneCore.timelineTable[Player.job][Player.localmapid] ~= nil) then\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0}[AnyoneCore] {color:255, 200, 0}Incorrect timeline profile selected for current job. Note: This might be thrown off by slow loading.\")\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0}[AnyoneCore] {color:255, 200, 0}Current profile: '\"..tostring(CurrentTimeline)..\"'\")\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0}[AnyoneCore] {color:255, 200, 0}Correct profile: '\"..tostring(AnyoneCore.timelineTable[Player.job][Player.localmapid])..\"'.\")\
				d(\"[AnyoneCore] Job check failed. Sending chat warning.\")\
			end\
			if CurrentGeneral ~= AnyoneCore.generalTable[Player.job] then\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0}[AnyoneCore] {color:255, 200, 0}Incorrect general trigger profile selected for current job.\") \
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0}[AnyoneCore] {color:255, 200, 0}Current profile: '\"..tostring(CurrentGeneral)..\"'\")\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0}[AnyoneCore] {color:255, 200, 0}Correct profile: '\"..tostring(AnyoneCore.generalTable[Player.job])..\"'.\")\
				d(\"[AnyoneCore] Job check failed. Sending chat warning.\")\
			end\
		end\
	end\
	\
	if Settings.AnyoneCore.AutoSetMaxCameraZoom == true and (gDevHackMaxZoom ~= Settings.AnyoneCore.CameraZoomValue) then\
		gDevHackMaxZoom = Settings.AnyoneCore.CameraZoomValue\
		Hacks:SetCamMaxZoom(gDevHackMinZoom,gDevHackMaxZoom)\
	end\
	\
	if Settings.AnyoneCore.AlwaysMini == true then\
		ml_global_information.drawMode = 0\
	end\
	\
	if Settings.AnyoneCore.WarnForUpdate == nil then\
		Settings.AnyoneCore.WarnForUpdate = false -- false is default\
		Settings.AnyoneCore.WarnForUpdate = Settings.AnyoneCore.WarnForUpdate \
	end\
	\
	if Settings.AnyoneCore.AutomaticUpdater == nil then\
		Settings.AnyoneCore.AutomaticUpdater = false -- false is default\
		Settings.AnyoneCore.AutomaticUpdater = Settings.AnyoneCore.AutomaticUpdater \
	end\
	\
	if Settings.AnyoneCore.AlwaysMini == nil then\
		Settings.AnyoneCore.AlwaysMini = true -- true is default\
		Settings.AnyoneCore.AlwaysMini = Settings.AnyoneCore.AlwaysMini \
	end\
\
	if Settings.AnyoneCore.CheckJob == nil then\
		Settings.AnyoneCore.CheckJob = true -- true is default\
		Settings.AnyoneCore.CheckJob = Settings.AnyoneCore.CheckJob \
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
	if Settings.AnyoneCore.DrawYaten == nil then\
		Settings.AnyoneCore.DrawYaten = true -- true is default\
		Settings.AnyoneCore.DrawYaten = Settings.AnyoneCore.DrawYaten \
	end\
	\
	if Settings.AnyoneCore.MiniReactionsTimer == nil then\
		Settings.AnyoneCore.MiniReactionsTimer = false -- true is default\
		Settings.AnyoneCore.MiniReactionsTimer = Settings.AnyoneCore.MiniReactionsTimer \
	end\
	\
	if Settings.AnyoneCore.ShowExtraDebugMessages == nil then\
		Settings.AnyoneCore.ShowExtraDebugMessages = true -- true is default\
		Settings.AnyoneCore.ShowExtraDebugMessages = Settings.AnyoneCore.ShowExtraDebugMessages \
	end\
	\
	if Settings.AnyoneCore.PrepullBackflip == nil then\
		Settings.AnyoneCore.PrepullBackflip = true -- true is default\
		Settings.AnyoneCore.PrepullBackflip = Settings.AnyoneCore.PrepullBackflip \
	end\
	\
	if Settings.AnyoneCore.PrepullPlacePet == nil then\
		Settings.AnyoneCore.PrepullPlacePet = true -- true is default\
		Settings.AnyoneCore.PrepullPlacePet = Settings.AnyoneCore.PrepullPlacePet \
	end\
	\
	if Settings.AnyoneCore.UseCleanse == nil then\
		Settings.AnyoneCore.UseCleanse = false -- false is default\
		Settings.AnyoneCore.UseCleanse = Settings.AnyoneCore.UseCleanse \
	end\
	\
	if Settings.AnyoneCore.UseCleanseTop == nil then\
		Settings.AnyoneCore.UseCleanseTop = false -- false is default\
		Settings.AnyoneCore.UseCleanseTop = Settings.AnyoneCore.UseCleanseTop \
	end\
	\
	if Settings.AnyoneCore.PrepullAetherpact == nil then\
		Settings.AnyoneCore.PrepullAetherpact = true -- true is default\
		Settings.AnyoneCore.PrepullAetherpact = Settings.AnyoneCore.PrepullAetherpact \
	end\
	\
	if Settings.AnyoneCore.SaferKnockback == nil then\
		Settings.AnyoneCore.SaferKnockback = false -- false is default\
		Settings.AnyoneCore.SaferKnockback = Settings.AnyoneCore.SaferKnockback \
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
			AlwaysMini = Settings.AnyoneCore.AlwaysMini,\
			WarnForUpdate = Settings.AnyoneCore.WarnForUpdate,\
			AutomaticUpdater = Settings.AnyoneCore.AutomaticUpdater,\
			CheckJob = Settings.AnyoneCore.CheckJob,\
			DrawYaten = Settings.AnyoneCore.DrawYaten,\
			MiniReactionsTimer = Settings.AnyoneCore.MiniReactionsTimer,\
			ShowExtraDebugMessages = Settings.AnyoneCore.ShowExtraDebugMessages,\
			PrepullBackflip = Settings.AnyoneCore.PrepullBackflip,\
			PrepullPlacePet = Settings.AnyoneCore.PrepullPlacePet,\
			UseCleanse = Settings.AnyoneCore.UseCleanse,\
			UseCleanseTop = Settings.AnyoneCore.UseCleanseTop,\
			PrepullAetherpact = Settings.AnyoneCore.PrepullAetherpact,\
			SaferKnockback = Settings.AnyoneCore.SaferKnockback,\
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
		Settings.AnyoneCore.AlwaysMini = AnyoneCore.Settings.AlwaysMini\
		Settings.AnyoneCore.AlwaysMini = Settings.AnyoneCore.AlwaysMini\
		\
		Settings.AnyoneCore.WarnForUpdate = AnyoneCore.Settings.WarnForUpdate\
		Settings.AnyoneCore.WarnForUpdate = Settings.AnyoneCore.WarnForUpdate\
		\
		Settings.AnyoneCore.AutomaticUpdater = AnyoneCore.Settings.AutomaticUpdater\
		Settings.AnyoneCore.AutomaticUpdater = Settings.AnyoneCore.AutomaticUpdater\
		\
		Settings.AnyoneCore.CheckJob = AnyoneCore.Settings.CheckJob\
		Settings.AnyoneCore.CheckJob = Settings.AnyoneCore.CheckJob\
		\
		Settings.AnyoneCore.DrawYaten = AnyoneCore.Settings.DrawYaten\
		Settings.AnyoneCore.DrawYaten = Settings.AnyoneCore.DrawYaten\
		\
		Settings.AnyoneCore.MiniReactionsTimer = AnyoneCore.Settings.MiniReactionsTimer\
		Settings.AnyoneCore.MiniReactionsTimer = Settings.AnyoneCore.MiniReactionsTimer\
		\
		Settings.AnyoneCore.ShowExtraDebugMessages = AnyoneCore.Settings.ShowExtraDebugMessages\
		Settings.AnyoneCore.ShowExtraDebugMessages = Settings.AnyoneCore.ShowExtraDebugMessages\
		\
		Settings.AnyoneCore.PrepullBackflip = AnyoneCore.Settings.PrepullBackflip\
		Settings.AnyoneCore.PrepullBackflip = Settings.AnyoneCore.PrepullBackflip\
		\
		Settings.AnyoneCore.PrepullPlacePet = AnyoneCore.Settings.PrepullPlacePet\
		Settings.AnyoneCore.PrepullPlacePet = Settings.AnyoneCore.PrepullPlacePet\
		\
		Settings.AnyoneCore.UseCleanse = AnyoneCore.Settings.UseCleanse\
		Settings.AnyoneCore.UseCleanse = Settings.AnyoneCore.UseCleanse\
		\
		Settings.AnyoneCore.UseCleanseTop = AnyoneCore.Settings.UseCleanseTop\
		Settings.AnyoneCore.UseCleanseTop = Settings.AnyoneCore.UseCleanseTop\
		\
		Settings.AnyoneCore.PrepullAetherpact = AnyoneCore.Settings.PrepullAetherpact\
		Settings.AnyoneCore.PrepullAetherpact = Settings.AnyoneCore.PrepullAetherpact\
		\
		Settings.AnyoneCore.SaferKnockback = AnyoneCore.Settings.SaferKnockback\
		Settings.AnyoneCore.SaferKnockback = Settings.AnyoneCore.SaferKnockback\
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
    -- RegisterEventHandler(\"Gameloop.Update\", AnyoneCore.func, \"AnyoneCore\")\
    AnyoneCore.main_tabs = GUI_CreateTabs(\"Main,Argus,Fight Specific,Job Specific,Duty Helper,Hacks,Debug\")\
	\
	ml_gui.ui_mgr:AddMember({ id = \"FFXIVMINION##MENU_AnyoneCore\", name = \"AnyoneCore\", onClick = function() AnyoneCore.open = not AnyoneCore.open end, tooltip = \"Menu for changing the settings for Anyone's reactions for TensorReactions.\"},\"FFXIVMINION##MENU_HEADER\")\
	d(\"Loaded AnyoneCore\")\
	gAnyoneCoreInitialize = true\
end\
\
if (AnyoneCore ~= nil) then \
	if AnyoneCore.Settings.WarnForUpdate == true then \
		if AnyoneCore.lastUpdateCheck == nil then \
			AnyoneCore.lastUpdateCheck = Now() \
			checkForUpdate() \
		end \
		if TimeSince(AnyoneCore.lastUpdateCheck) > 900000 then \
			d(\"[AnyoneCore] 15 minutes have elapsed, checking for a new update.\")\
			AnyoneCore.lastUpdateCheck = Now()\
			checkForUpdate()\
		end \
	end \
	if lastStatusCheck == nil and lastStatusCheck2 == true then\
		lastStatusCheck = Now()\
	end\
	if lastStatusCheck ~= nil and lastStatusCheck2 == true then\
		if TimeSince(lastStatusCheck) > 5000 then\
			local LuaModsPath = GetLuaModsPath()\
			local file = io.open(tostring(LuaModsPath)..\"TensorReactionsBackup/downloadstatus.txt\") \
			local output = file:read() \
			file:close() \
			if output ~= nil then\
				io.open(tostring(LuaModsPath)..\"TensorReactionsBackup/downloadstatus.txt\",\"w\"):close()\
				lastStatusCheck = nil\
				lastStatusCheck2 = nil\
				AnyoneCoreReload()\
			elseif output == nil then\
				lastStatusCheck = Now()\
				if AnyoneCore.Settings.ShowExtraDebugMessages == true then\
					d(\"[AnyoneCore]1/2 Updater: Download status file still nil, trying to check again.\") d(\"[AnyoneCore]2/2 This is normal, but if not completed after five cycles, something is wrong...\")\
				end\
			end\
		end\
	end\
	if lastStatusCheck3 == nil and lastStatusCheck4 == true then\
		lastStatusCheck3 = Now()\
	end\
	if lastStatusCheck3 ~= nil and lastStatusCheck4 == true then\
		if TimeSince(lastStatusCheck3) > 2000 then\
			local LuaModsPath = GetLuaModsPath()\
			local file = io.open(tostring(LuaModsPath)..\"TensorReactionsBackup/anyonecoreversion.txt\") \
			local output = file:read() \
			file:close() \
			if output ~= nil then\
				gitVersion = tonumber(output) \
				io.open(tostring(LuaModsPath)..\"TensorReactionsBackup/anyonecoreversion.txt\",\"w\"):close()\
				lastStatusCheck3 = nil\
				lastStatusCheck4 = nil\
				checkStatus = \"Done\"\
				if AnyoneCore.version < gitVersion then \
					WarnForUpdate()\
					if AnyoneCore.Settings.AutomaticUpdater == true then\
						download_files_noreading()\
						if AnyoneCore.Settings.ShowExtraDebugMessages == true then\
							d(\"[AnyoneCore] Updater: New update was found and auto updating is enabled. Beginning the update process.\")\
						end\
					end\
				elseif AnyoneCore.version >= gitVersion then\
					d(\"[AnyoneCore] No updates available.\")\
				end\
			elseif output == nil then\
				lastStatusCheck3 = Now()\
				if AnyoneCore.Settings.ShowExtraDebugMessages == true then\
					d(\"[AnyoneCore]1/2 Update checker: Version file still nil, trying to check again.\") d(\"[AnyoneCore]2/2 This is normal, but if not completed after three cycles, something is wrong...\")\
				end\
			end	\
		end\
	end\
end\
\
	local MinionPath = GetStartupPath()\
	local LuaModsPath = GetLuaModsPath()\
---Idea and code for sidebar links was shamelessly stolen from Kali. Thank you Kali.\
	AnyoneCore.LinksTable = {\
		[1] = {\
			name = \"dummy page doesnt work\",\
			icon = MinionPath .. [[\\GUI\\UI_Textures\\code.png]],\
			link = nil,\
			tooltip = \"first link doesnt work so lol\",\
			lasthover = 0,\
			size = { x = 25, y = 25}\
		},\
		[2] = {\
			name = \"GitHub\",\
			icon = MinionPath .. [[\\GUI\\UI_Textures\\code.png]],\
			link = [[https://github.com/AnyoneMinion/reactions/releases]],\
			tooltip = \"Releases page of GitHub, if you want to see any changes or download an older release.\\n\\nLeft-click to be sent to my GitHub page.\",\
			lasthover = 0,\
			size = { x = 25, y = 25}\
		},\
		[3] = {\
			name = \"Ko-fi\",\
			icon = MinionPath .. [[\\GUI\\UI_Textures\\globe.png]],\
			link = [[https://ko-fi.com/anyoneminion]],\
			tooltip = \"If you appreciate the work I put into reactions, then throw me a few bucks on my Ko-fi page.\\n\\nLeft-click to be sent to my donation page.\",\
			lasthover = 0,\
			size = { x = 25, y = 25}\
		},\
		[4] = {\
			name = \"Discord\",\
			icon = MinionPath .. [[\\GUI\\UI_Textures\\questionmark.png]],\
			link = [[https://discord.gg/bVABzBA]],\
			link2 = [[https://discord.gg/YtvCbcB]],\
			tooltip = \"Left-click to get sent to Rikudou's discord, which is where all reactions support and questions should go.\\n\\nRight-click to get sent to my personal discord, which is meant mostly for support with Profiler and any other addons I develop.\",\
			lasthover = 0,\
			size = { x = 25, y = 25}\
		},\
		[5] = {\
			name = \"Reload\",\
			icon = MinionPath .. [[\\GUI\\UI_Textures\\change.png]],\
			link1 = nil,\
			link2 = nil,\
			link3 = true,\
			tooltip = \"Reloads AnyoneCore and loads reactions again.\\n\\nMostly meant for debugging and development purposes.\\n\\nLeft-click to reload AnyoneCore and reactions.\",\
			lasthover = 0,\
			size = { x = 25, y = 25}\
		},\
	}\
\
\
function AnyoneCore.draw()\
    if AnyoneCore.enabled and AnyoneCore.open then\
		local c = 0\
		for k,v in pairs(AnyoneCore.WindowStyle) do if v[4] ~= 0 then c = c + 1 loadstring([[GUI:PushStyleColor(GUI.Col_]]..k..[[, ]]..(v[1]/255)..[[, ]]..(v[2]/255)..[[, ]]..(v[3]/255)..[[, ]]..v[4]..[[)]])() end end\
        GUI:SetNextWindowSize(520,355,GUI.SetCond_FirstUseEver)\
		local winX,winY,posX,posY\
        AnyoneCore.visible, AnyoneCore.open = GUI:Begin(\"AnyoneCore - Reaction Settings Menu\", AnyoneCore.open)\
        if AnyoneCore.visible then\
        local tabindex, tabname = GUI_DrawTabs(AnyoneCore.main_tabs) \
        if (tabname == GetString(\"Main\")) then\
            GUI:Bullet()\
            GUI:TextColored(1,1,0,1,\"Current AnyoneCore Version: \".. tostring(AnyoneCore.version))\
            GUI:Bullet()\
            GUI:TextColored(1,1,0,1,\"Latest GitHub Release Version: \".. tostring(gitVersion))\
            if gitVersion ~= nil and (AnyoneCore.version < gitVersion) then\
                GUI:TextColored(0,1,0,1,\"New version available! Click 'update' to automatically download the newest update.\")\
            end\
            \
            if GUI:BeginPopup(\"Changelog\", GUI.WindowFlags_NoCollapse) then\
                GUI:TextColored(1,1,0,1,\"Showing the last three updates.\")\
                GUI:Spacing( )\
                GUI:Separator( )\
                GUI:Spacing( )\
                GUI:PushTextWrapPos(650)\
                GUI:Text(changelog)\
                GUI:PopTextWrapPos()\
                GUI:PushItemWidth(500)\
                if GUI:Button(\"Close\") then GUI:CloseCurrentPopup() end\
                GUI:SameLine()\
                local hovered = false\
                if GUI:Button(\"Refresh\") then changelog = nil readChangelog() end\
                if not hovered then hovered = GUI:IsItemHovered() end\
                GUI:EndPopup()\
                if hovered then\
                    GUI:BeginTooltip()\
                    GUI:PushTextWrapPos(300)\
                    GUI:TextColored(1,1,0,1,\"Refreshes the change log. Don't spam this or you could get locked out of Github's API for an hour and be unable to update, check for updates, or read the changelog.\\n\")\
                    GUI:PopTextWrapPos()\
                    GUI:EndTooltip()\
                end\
            end\
            \
            if GUI:Button(\"Check for updates\") then checkForUpdate() end ---\
            if checkStatus ~= nil then\
            GUI:SameLine()\
            GUI:TextColored(0,1,0,1,checkStatus)\
            end\
            \
            if GUI:BeginPopupModal(\"Download Updates\", true, GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoScrollWithMouse + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_NoSavedSettings) then\
				GUI:PushTextWrapPos(500)\
				GUI:Text(\"If you have a personally edited timeline, back it up or change the file name now or it'll be overwritten by the updater.\\n\")\
                GUI:TextColored(1,1,0,1,\"A backup of your files will be created in LuaMods/TensorReactionsBackup.\\n\") \
				GUI:TextColored(1,0,0,1,\"Warning: if any of the folders leading up to your LuaMods folder has a space in it's name, AnyoneCore updater will not work.\\n\")\
                if GUI:Button(\"Yes\") then download_files_noreading() downloadStatus = \"Wait...\" GUI:CloseCurrentPopup() end \
                GUI:SameLine()\
                if GUI:Button(\"No\") then GUI:CloseCurrentPopup() end\
				GUI:PopTextWrapPos()\
                GUI:EndPopup()\
            end\
            \
            if GUI:Button(\"Update to newest release\") then GUI:OpenPopup(\"Download Updates\") end ---download_files()\
            if downloadStatus ~= nil then\
            GUI:SameLine()\
            GUI:TextColored(0,1,0,1,downloadStatus)\
            end\
            \
            if GUI:Button(\"Read Changelog\") then readChangelog() GUI:OpenPopup(\"Changelog\") end\
            \
            local hovered = false\
            AnyoneCore.Settings.WarnForUpdate, changed = GUI:Checkbox(\"Automatically check for new updates\", AnyoneCore.Settings.WarnForUpdate)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"Sends you a client-sided green colored chat message upon starting up if there's a new update available.\\n\")\
                GUI:TextColored(1,1,0,1,\"Checks for a new update every 15 minutes.\\n\")\
                GUI:TextColored(1,0,0,1,\"Be careful not to include your chat in any screenshots if you have this setting enabled.\\n\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
            \
            local hovered = false\
            AnyoneCore.Settings.AutomaticUpdater, changed = GUI:Checkbox(\"Automatically download new updates when available\", AnyoneCore.Settings.AutomaticUpdater)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"If a new update is available, it will be automatically downloaded and applied as soon as it's available. Your current files will be backed up in LuaMods/TensorReactionsBackup.\\n\")\
                GUI:TextColored(1,1,0,1,\"A green colored chat message will be sent to chat that a new update has been downloaded.\")\
                GUI:TextColored(1,0,0,1,\"If you have personally edited reactions, then you NEED to rename the files. As long as they aren't the same name, they won't be replaced.\\n\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
            \
            GUI:Spacing( )\
            GUI:Separator( )\
            GUI:Spacing( )\
				local hovered = false\
				AnyoneCore.Settings.PrepullHelper, changed = GUI:Checkbox(\"Prepull Helper\", AnyoneCore.Settings.PrepullHelper)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Helps with pre-pull before you start the boss fight.\\n\")\
					GUI:TextColored(1,1,0,1,\"Careful if you've got a trigger happy team. If this is enabled and you're AFK, your team will be really confused how you were attacking the boss while AFK.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				if AnyoneCore.Settings.PrepullHelper == true then\
				GUI:SameLine()\
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
				if Player.job == 22 then\
				local hovered = false\
				AnyoneCore.Settings.PrepullHelperPeloton, changed = GUI:Checkbox(\"Use Backflip in Prepull\", AnyoneCore.Settings.PrepullHelperPeloton)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Uses Elusive Jump to get to the boss at the end of the countdown.\\n\")\
					GUI:TextColored(1,1,0,1,\"Line yourself up to backflip into max attack range of the boss, and not inside the bosses actual hitbox. Otherwise you will pull too early.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				if Player.job == 27 then\
				local hovered = false\
				AnyoneCore.Settings.PrepullPlacePet, changed = GUI:Checkbox(\"Place pet on boss in Prepull\", AnyoneCore.Settings.PrepullPlacePet)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Places your pet on top of the boss after countdown starts.\\n\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:SameLine()\
				local hovered = false\
				AnyoneCore.Settings.PrepullAetherpact, changed = GUI:Checkbox(\"Use Prepull Aetherpact\", AnyoneCore.Settings.PrepullPlacePet)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Allows for a bit of a tricky play with moving your pet around to avoid casting Aetherpact but still ticks the cooldown down. For now, Prepull Helper will only do this if you're in e8s since it's the only fight where it's viable.\\n\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				end\
				local hovered = false\
				GUI:PushItemWidth(80)\
				AnyoneCore.Settings.BadTeamDelay, changed = GUI:InputInt(\"Amount of milliseconds to pull early with Prepull Helper\", AnyoneCore.Settings.BadTeamDelay)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Let's face it, most people don't pull on time. Sometimes people will even pull up to a full second early. Change this to make prepull helper pull the boss earlier if your team is consistently pulling early.\\n\")\
					GUI:TextColored(1,1,0,1,\"Based on milliseconds. Putting this to 200 means it will pull 200 milliseconds before the countdown ends.\")\
					GUI:TextColored(1,0,0,1,\"You usually want this setting to be about 200 to 300 milliseconds by default since most teams will never pull exactly on time.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
\
				GUI:PopItemWidth( )\
				GUI:Spacing( )\
				GUI:Separator( )\
				GUI:Spacing( )\
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
					GUI:Text(\"Enables reactions to use sprint for you.\\n\")\
					GUI:TextColored(1,1,0,1,\"Only works if you're using one of my timelines.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
            end\
            \
            if Player.job == 1 then\
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
            end\
            \
            if Player.job == 34 or Player.job == 38 then \
				local hovered = false\
				AnyoneCore.Settings.UseMoogleTTS, changed = GUI:Checkbox(\"Remind me to use Meditate/Improv\", AnyoneCore.Settings.UseMoogleTTS)\
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
			local hovered = false\
            AnyoneCore.Settings.CheckJob, changed = GUI:Checkbox(\"Warn me if I'm using the wrong profile\", AnyoneCore.Settings.CheckJob)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"Everytime you change map or wipe to a boss fight, AnyoneCore will check if you're currently loaded on the wrong profile for both General and Timeline triggers.\\n\")\
				GUI:TextColored(1,1,0,1,\"If you're on the wrong profile, a yellow colored message will be sent to chat warning you about it.\")\
				GUI:TextColored(0,1,0,1,\"If you use your own personal timeline or general triggers profile, I'd recommend turning this setting off since it'll go off.\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
            \
            local hovered = false\
            AnyoneCore.Settings.AlwaysMini, changed = GUI:Checkbox(\"Always change bot menu to mini mode on startup\", AnyoneCore.Settings.AlwaysMini)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"This is referring to the bot menu where you enable and disable assist. Enabling this means that on startup, that menu will always be put into the small version that you get when you press the arrow in the top right corner. \\n\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
            \
        elseif (tabname == GetString(\"Argus\")) then\
            \
            local hovered = false\
            AnyoneCore.Settings.DrawClouds, changed = GUI:Checkbox(\"e5s - Draw Stormcloud AoE radius\", AnyoneCore.Settings.DrawClouds)\
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
            AnyoneCore.Settings.DrawChainLightning, changed = GUI:Checkbox(\"e5s - Draw Chain Lightning AoE size\", AnyoneCore.Settings.DrawChainLightning)\
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
            local hovered = false\
            AnyoneCore.Settings.DrawOccludedFrontOrbs, changed = GUI:Checkbox(\"e6s - Draw Occluded Front orb explosions\", AnyoneCore.Settings.DrawOccludedFrontOrbs)\
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
            AnyoneCore.Settings.DrawBlackWhiteOrbs, changed = GUI:Checkbox(\"e7s - Draw black/white orbs\", AnyoneCore.Settings.DrawBlackWhiteOrbs)\
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
            AnyoneCore.Settings.DrawDragonHeads, changed = GUI:Checkbox(\"e8s - Draw dragon heads\", AnyoneCore.Settings.DrawDragonHeads)\
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
            AnyoneCore.Settings.DrawOrbs, changed = GUI:Checkbox(\"e8s - Draw Light Rampant Orbs\", AnyoneCore.Settings.DrawOrbs)\
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
            AnyoneCore.Settings.DrawNaelQuotes, changed = GUI:Checkbox(\"UCoB - All drawing mechanics\", AnyoneCore.Settings.DrawNaelQuotes)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"Toggles all of the draws in UCoB, there's like 40 so there's only this one option. Draws EVERY Nael Quote, Earthshaker Cones, twisters/twisting dives and people with Thunderstruck debuff.\\n\")\
                GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
			\
			if Player.job == 34 then\
				local hovered = false\
				AnyoneCore.Settings.DrawYaten, changed = GUI:Checkbox(\"SAM - Draw Yaten distance\", AnyoneCore.Settings.DrawYaten)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"If Yaten is enabled on the ACR, Argus will draw the distance behind you that Yaten will backstep.\\n\")\
					GUI:TextColored(1,1,0,1,\"Does nothing if Argus is not purchased.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
			end\
            \
        elseif (tabname == GetString(\"Fight Specific\")) then\
            local changed = false\
            \
            ---GUI:Text(\"			e5s settings\")\
            ---GUI:Text(\"Currently don't have any settings for e5s.\\n\")\
            if Player.job == 31 or Player.job == 23 or Player.job == 38 then ---brd/mch/dnc\
            GUI:Spacing( )\
            GUI:Indent( )\
            GUI:Text(\"e6s settings\")\
            GUI:Unindent( )\
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
            GUI:Spacing( )\
            GUI:Indent( )\
            GUI:Text(\"e7s settings\")\
            GUI:Unindent( )\
            local hovered = false\
            AnyoneCore.Settings.DisableAssist, changed = GUI:Checkbox(\"Away With Thee safe strat\", AnyoneCore.Settings.DisableAssist)\
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
            AnyoneCore.Settings.AddsPhasePot, changed = GUI:Checkbox(\"Adds phase potion\", AnyoneCore.Settings.AddsPhasePot)\
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
            GUI:Spacing( )\
            GUI:Indent( )\
            GUI:Text(\"e8s settings\")\
            GUI:Unindent( )\
            local hovered = false\
            AnyoneCore.Settings.KnockbackMirrorUptime, changed = GUI:Checkbox(\"Knockback mirrors uptime strat\", AnyoneCore.Settings.KnockbackMirrorUptime)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"Automatically uses Arm's Length or Surecast during knockback mirrors aka Reflected Wings. Will allow you to nullify both knockbacks.\\n\")\
                GUI:TextColored(1,1,0,1,\"If you're getting knocked back still, check the read me for more information on how to modify the timing based on your needs.\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
			if AnyoneCore.Settings.KnockbackMirrorUptime == true then\
				GUI:SameLine()\
				local hovered = false\
				AnyoneCore.Settings.SaferKnockback, changed = GUI:Checkbox(\"High ping mode\", AnyoneCore.Settings.SaferKnockback)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:TextColored(1,1,0,1,\"Primarily for high ping users having issues with this knockback. Makes it so the reaction will disable assist earlier.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
            end\
			\
            local hovered = false\
            AnyoneCore.Settings.DiamondFrostUptime, changed = GUI:Checkbox(\"Diamond Frost uptime strat\", AnyoneCore.Settings.DiamondFrostUptime)\
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
				AnyoneCore.Settings.LeftSide, changed = GUI:Checkbox(\"Left side adds\", AnyoneCore.Settings.LeftSide)\
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
				GUI:SameLine()\
				if AnyoneCore.Settings.LeftSide == true then\
					local hovered = false\
					AnyoneCore.Settings.InterruptSecondAdd, changed = GUI:Checkbox(\"Interrupt the second Earthen Aether instead\", AnyoneCore.Settings.InterruptSecondAdd)\
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
				end -- end of left side check\
            end -- end of brd/mch/dnc job check\
            \
        elseif (tabname == GetString(\"Job Specific\")) then\
            if Player.job == 23 then -- check for bard\
            \
				GUI:Indent( )\
				GUI:Text(\"Bard settings\")\
				GUI:Unindent( )\
				local hovered = false\
				AnyoneCore.Settings.UseCleanse, changed = GUI:Checkbox(\"Cleanse with Warden's Paean\", AnyoneCore.Settings.UseCleanse)\
				if changed then AnyoneCore.save() end\
				if not hovered then hovered = GUI:IsItemHovered() end\
				if hovered then\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(\"Enables usage of Warden's Paean to cleanse debuffs off people.\\n\")\
					GUI:TextColored(1,1,0,1,\"This currently only is applicable to using Paean's to cleanse the tanks during icelit dragonsong in e8s.\")\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
				end\
				GUI:SameLine()\
				if AnyoneCore.Settings.UseCleanse == true then\
					local hovered = false\
					AnyoneCore.Settings.UseCleanseTop, changed = GUI:Checkbox(\"Prioritize top of the party list\", AnyoneCore.Settings.UseCleanseTop)\
					if changed then AnyoneCore.save() end\
					if not hovered then hovered = GUI:IsItemHovered() end\
					if hovered then\
						GUI:BeginTooltip()\
						GUI:PushTextWrapPos(300)\
						GUI:Text(\"Warden's Paean will prioritize the person on the top of the party list. This usually means the first tank on your party list.\\n\")\
						GUI:PopTextWrapPos()\
						GUI:EndTooltip()\
					end\
				end\
			end\
			\
			if Player.job == 31 then -- check for machinist\
            \
				GUI:Indent( )\
				GUI:Text(\"Machinist settings\")\
				GUI:Unindent( )\
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
				GUI:PushItemWidth(70)\
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
				GUI:PushItemWidth(70)\
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
				GUI:PushItemWidth(70)\
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
				GUI:PushItemWidth(70)\
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
				GUI:Indent( )\
				GUI:Text(\"Samurai settings\")\
				GUI:Unindent( )\
				local hovered = false\
				AnyoneCore.Settings.NeverDash, changed = GUI:Checkbox(\"Never dash for me\", AnyoneCore.Settings.NeverDash)\
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
				AnyoneCore.Settings.AttackingGaruda, changed = GUI:Checkbox(\"Attack Garuda during split phase\", AnyoneCore.Settings.AttackingGaruda)\
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
            if Player.job == 21 or Player.job == 19 or Player.job == 32 or Player.job == 37 then -- check for melee\
				GUI:Indent( )\
				GUI:Text(\"Tank Settings\")\
				GUI:Unindent( )\
				local hovered = false\
				AnyoneCore.Settings.NeverDash, changed = GUI:Checkbox(\"Never dash for me\", AnyoneCore.Settings.NeverDash)\
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
            end\
            \
            if Player.job ~= 31 and Player.job ~= 34 and Player.job == 21 and Player.job == 19 and Player.job == 32 and Player.job == 37  then\
            GUI:Text(\"No settings for current job.\")\
            end\
        \
        elseif (tabname == GetString(\"Duty Helper\")) then\
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
            AnyoneCore.Settings.DutyHelperTargeting, changed = GUI:Checkbox(\"Always target something\", AnyoneCore.Settings.DutyHelperTargeting)\
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
            AnyoneCore.Settings.DutyHelperMitigation, changed = GUI:Checkbox(\"Mitigation usage\", AnyoneCore.Settings.DutyHelperMitigation)\
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
				AnyoneCore.Settings.DutyHelperGrabAggro, changed = GUI:Checkbox(\"Aggro management in dungeons\", AnyoneCore.Settings.DutyHelperGrabAggro)\
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
				AnyoneCore.Settings.DutyHelperInterrupt, changed = GUI:Checkbox(\"Automatically interrupt casts\", AnyoneCore.Settings.DutyHelperInterrupt)\
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
            AnyoneCore.Settings.DutyHelperKnockback, changed = GUI:Checkbox(\"Use anti-knockback spells\", AnyoneCore.Settings.DutyHelperKnockback)\
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
        elseif (tabname == GetString(\"Hacks\")) then\
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
            AnyoneCore.Settings.AutoSetSpeedHacks, changed = GUI:Checkbox(\"Automatically set speed hacks\", AnyoneCore.Settings.AutoSetSpeedHacks)\
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
            AnyoneCore.Settings.AutoSetMaxCameraZoom, changed = GUI:Checkbox(\"Automatically set max camera zoom on startup\", AnyoneCore.Settings.AutoSetMaxCameraZoom)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"Changes your maximum camera zoom to 35 upon attaching bot (default is 20). Value can be changed with the input box.\\n\")\
                GUI:TextColored(1,1,0,1,\"Reload lua after enabling. Disable and reload lua to change it back.\")\
                GUI:TextColored(1,0,0,1,\"Absolutely do not use this while streaming. Be careful taking screenshots too. It is very noticable that your camera is zoomed out more than normal.\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
            if AnyoneCore.Settings.AutoSetMaxCameraZoom == true then\
				GUI:SameLine()\
				local hovered = false\
				GUI:PushItemWidth(70)\
				AnyoneCore.Settings.CameraZoomValue, changed = GUI:InputInt(\"\", AnyoneCore.Settings.CameraZoomValue)\
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
		\
		elseif (tabname == GetString(\"Debug\")) then\
		\
			local hovered = false\
            AnyoneCore.Settings.MiniReactionsTimer, changed = GUI:Checkbox(\"Mini Reactions Timer\", AnyoneCore.Settings.MiniReactionsTimer)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"Adds a miniature version of the reactions timer you would normally find in the TensorReactions debug tab.\\n\")\
                GUI:TextColored(1,1,0,1,\"Pretty much only helpful for planning and debugging. Nice to have something small and easy to stuff in the corner of your screen.\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
			\
			local hovered = false\
            AnyoneCore.Settings.ShowExtraDebugMessages, changed = GUI:Checkbox(\"Show extra debug messages\", AnyoneCore.Settings.ShowExtraDebugMessages)\
            if changed then AnyoneCore.save() end\
            if not hovered then hovered = GUI:IsItemHovered() end\
            if hovered then\
                GUI:BeginTooltip()\
                GUI:PushTextWrapPos(300)\
                GUI:Text(\"Adds additional messages in console mostly meant for debugging purposes.\\n\")\
                GUI:TextColored(1,1,0,1,\"Might get a little spammy with this on if you're using the updater. Not a lot, but maybe like a few extra messages every few minutes.\")\
                GUI:PopTextWrapPos()\
                GUI:EndTooltip()\
            end\
		\
        end -- end of tabs\
		\
			--Code and idea for links was shamelessly stolen from Kali. Thank you Kali.\
			local MinionPath = GetStartupPath()\
			winX,winY = GUI:GetWindowSize()\
			posX,posY = GUI:GetWindowPos()\
			local min,max,rate,spacing,padding = 25,50,5,5,0\
			local windowsize = 25\
			for i=2, #LinksTable do\
				local size = LinksTable[i].size.x\
				if size and size > 0 and size > windowsize then windowsize = size end\
			end\
			GUI:PushStyleColor(GUI.Col_WindowBg, 0,0,0,0)\
			GUI:SetNextWindowPos(posX-windowsize-spacing,posY + 20,GUI.SetCond_Always)\
			GUI:SetNextWindowSize(max,((#LinksTable - 1) * min) + ((#LinksTable - 1) * spacing) + max,GUI.SetCond_Always)\
			GUI:PushStyleVar(GUI.StyleVar_WindowPadding,padding,padding)\
			GUI:PushStyleVar(GUI.StyleVar_ItemSpacing,spacing,spacing)\
			GUI:Begin(\"AnyoneCore##Sidebar\",true,GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoScrollWithMouse + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_NoFocusOnAppearing)\
			if GUI:IsWindowFocused(\"AnyoneCore##Sidebar\") then GUI:SetWindowFocus(AnyoneCore.name) end\
			for i=2, #LinksTable do\
				local link = LinksTable[i]\
				GUI:Dummy(windowsize-link.size.x,0) GUI:SameLine(0,0)\
				GUI:Image(link.icon,link.size.x,link.size.y)\
				if GUI:IsItemHovered() then\
					GUI:PopStyleVar(2)\
					GUI:BeginTooltip()\
					GUI:PushTextWrapPos(300)\
					GUI:Text(link.tooltip)\
					GUI:PopTextWrapPos()\
					GUI:EndTooltip()\
					GUI:PushStyleVar(GUI.StyleVar_WindowPadding,padding,padding)\
					GUI:PushStyleVar(GUI.StyleVar_ItemSpacing,spacing,spacing)\
					if link.size.x < max then link.size.x = link.size.x + rate end\
					if link.size.y < max then link.size.y = link.size.y + rate end\
					if GUI:IsItemClicked(0) and link.link then\
						io.popen([[cmd /c start \"\" \"]]..link.link..[[\"]]):close()\
					elseif GUI:IsItemClicked(1) and link.link2 then\
						io.popen([[cmd /c start \"\" \"]]..link.link2..[[\"]]):close()\
					elseif GUI:IsItemClicked(0) and link.link3 then\
						AnyoneCoreReload()\
					end\
				else\
					if link.size.x > min then link.size.x = link.size.x - rate end\
					if link.size.y > min then link.size.y = link.size.y - rate end\
				end\
			end\
			GUI:End()\
			GUI:PopStyleColor()\
			GUI:PopStyleVar(2)\
				\
        end\
        GUI:End()\
		GUI:PopStyleColor(c)\
    end\
	\
	if AnyoneCore.Settings.MiniReactionsTimer == true then\
	GUI:Begin(\"AnyoneCore##MiniTimer\", AnyoneCore.Settings.MiniReactionsTimer,GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoScrollWithMouse + GUI.WindowFlags_NoCollapse)\
		if TensorReactions_CurrentTimer ~= nil then\
		GUI:Text(TensorReactions_CurrentTimer)\
			end\
	GUI:End()\
	end\
end\
\
AnyoneCore.draw()\
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
		["uuid"] = "bca89b97-6c35-6160-be33-db1e2fc26bb4";
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
		["uuid"] = "395f07d8-70c4-78c9-bc18-1d59f61d98a1";
	};
	[3] = {
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
ACR_TensorMagnum_Wildfire = true\
\
-- Custom Hotbar\
ACR_TensorMagnum_Hotbar_HeadGraze_Custom = false\
ACR_TensorMagnum_Hotbar_HeadGraze_Custom_Safe = false\
\
if eventArgs.oldData.PotsEnabled ~= nil then\
		ACR_TensorMagnum_Potion = true\
end\
\
if eventArgs.oldData.startCombat ~= nil then\
gStartCombat = false\
data.startCombat = nil\
end\
\
if not AnyoneCore.Settings.AutoSetSpeedHacks == nil then\
		if AnyoneCore.Settings.AutoSetSpeedHacks == true then\
				gDevHackWalkSpeed = 6.0\
				Player:SetSpeed(1,gDevHackWalkSpeed,gDevHackWalkSpeed,gDevHackWalkSpeed)\
		end\
end\
\
JobCheck()\
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
		["uuid"] = "4370fc7d-0c58-cee3-94ff-e04197b5c9b7";
	};
	[4] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
		["uuid"] = "5494a0b8-df7e-362e-a535-c319d7ee9d4d";
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
		["uuid"] = "c59c2826-ea1e-359b-8b43-ed4c0cf977cd";
	};
	[6] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local helperVersion = 1.0\
local CountdownStartEnglish = \"Battle commencing in (%d+) seconds!\\n\"\
local CountdownStartChina = \"距离战斗开始还有(%d+)秒！\\n\"\
local CountdownStartFrench = \"Début du combat dans (%d+) secondes!\\n\"\
local CountdownStartGerman = \"Noch (%d+) Sekunden bis Kampfbeginn!\\n\"\
local CountdownStartJapanese = \"戦闘開始(%d+)秒！\\n\" \
local CountdownStartKorean = \"전투 시작 (%d+)초 전!\"\
local line = eventArgs.line.line\
local time\
if line:match(CountdownStartEnglish) then\
		time = line:match(CountdownStartEnglish)\
elseif line:match(CountdownStartFrench) then\
		time = line:match(CountdownStartFrench)\
elseif line:match(CountdownStartChina) then\
		time = line:match(CountdownStartChina)\
elseif line:match(CountdownStartGerman) then\
		time = line:match(CountdownStartGerman)\
elseif line:match(CountdownStartJapanese) then\
		time = line:match(CountdownStartJapanese)\
elseif line:match(CountdownStartKorean) then\
		time = line:match(CountdownStartKorean)\
end\
\
if time ~= nil then\
				data.countdownTime = Now()\
				data.countdownDuration = tonumber(time)\
				data.pelotonDelay = math.random(500, 7000)\
				data.reassembleDelay = math.random(1000, 2000)\
				data.targetDelay = math.random(10, 3500)\
end\
\
if helperVersion ~= AnyoneCore.helperVersion then\
				TensorCore.sendParsedChatMessage(\"/e {color:255, 10, 10} Your version of Prepull Helper does not match with what AnyoneCore believes to be the current version. Please reload lua if Prepull Helper isn't working.\")\
				d(\"Prepull Helper version # and AnyoneCore version # do not match. Sending chat message as a warning.\")\
end\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if gStartCombat == false and data.startCombat == nil then\
data.startCombat = true\
else\
gStartCombat = false\
end\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 12;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "disable start combat";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 14;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Enemy";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[4] = {
				["aType"] = 1;
				["actionID"] = 7557;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPos"] = {
				};
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 6;
					[5] = 7;
					[6] = 10;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[5] = {
				["aType"] = 1;
				["actionID"] = 2876;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPos"] = {
				};
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 9;
					[4] = 8;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 11;
					[4] = 7;
					[5] = 13;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = true;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[7] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "gStartCombat = true\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[8] = {
				["aType"] = 3;
				["actionID"] = -1;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["name"] = "target nearest (again)";
				["potType"] = 1;
				["setTarget"] = true;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Enemy";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[9] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if data.startCombat ~= nil then\
gStartCombat = false\
data.startCombat = nil\
end\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[10] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if data.countdownCanceled == true or (data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 0) then\
    data.countdownCanceled = nil\
				Player:ClearTarget()\
				if data.startCombat == nil then\
    gStartCombat = true\
				elseif data.startCombat ~= nil then\
				gStartCombat = false\
				data.startCombat = nil\
				end\
    self.used = true\
end";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return FFXIV_Common_BotRunning or (xivopeners ~= nil and (xivopeners.running)) and AnyoneCore ~= nil and AnyoneCore.Settings.BadTeamDelay ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "local CountdownStartEnglish = \"Battle commencing in (%d+) seconds!\\n\"\
local CountdownStartChina = \"距离战斗开始还有(%d+)秒！\\n\"\
local CountdownStartFrench = \"Début du combat dans (%d+) secondes!\\n\"\
local CountdownStartGerman = \"Noch (%d+) Sekunden bis Kampfbeginn!\\n\"\
local CountdownStartJapanese = \"戦闘開始(%d+)秒！\\n\" \
local CountdownStartKorean = \"전투 시작 (%d+)초 전!\\n\"\
local correct\
\
local line = eventArgs.line.line\
if line:match(CountdownStartEnglish) then\
        correct = true\
elseif line:match(CountdownStartFrench) then\
        correct = true\
elseif line:match(CountdownStartChina) then\
        correct = true\
elseif line:match(CountdownStartGerman) then\
        correct = true\
elseif line:match(CountdownStartJapanese) then\
        correct = true\
elseif line:match(CountdownStartKorean) then\
        correct = true\
end\
return correct ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 0 + AnyoneCore.Settings.BadTeamDelay";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "time is 0";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore.Settings.PrepullHelper == true and Player.job == 31";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[8] = {
				["actionCDValue"] = 1;
				["actionID"] = 2876;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore.Settings.PrepullHelperPeloton == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "is peloton enabled";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[11] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 1400 + AnyoneCore.Settings.BadTeamDelay\
";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "time is -1.4";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[12] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 15000";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "time is -15";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[13] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return (xivopeners ~= nil and (xivopeners.running == true and xivopeners.settings[Player.job].useTincture == true)) or (gACRSelectedProfiles[Player.job] == \"TensorMagnum\" and (ACR_TensorMagnum_Potion == true))\
";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "check if pots are enabled";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[14] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.countdownTime ~= nil and data.countdownDuration ~= nil and data.countdownDuration * 1000 - TimeSince(data.countdownTime) <= 15000 - data.targetDelay";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "time is -15 + random";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "prepull helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "f5b4faad-4685-1f7e-85f9-61313fe7aae8";
	};
	[7] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.countdownCanceled = true\
d(\"Countdown was canceled. Sending information back to Prepull Helper.\")\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "English";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.countdownCanceled = true\
d(\"Countdown was canceled. Sending information back to Prepull Helper.\")\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["name"] = "China";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.countdownCanceled = true\
d(\"Countdown was canceled. Sending information back to Prepull Helper.\")\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 3;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "French";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[4] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.countdownCanceled = true\
d(\"Countdown was canceled. Sending information back to Prepull Helper.\")\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 4;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "German";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[5] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.countdownCanceled = true\
d(\"Countdown was canceled. Sending information back to Prepull Helper.\")\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 5;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Korean";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[6] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.countdownCanceled = true\
d(\"Countdown was canceled. Sending information back to Prepull Helper.\")\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 6;
				};
				["endIfUsed"] = true;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Japanese";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "English";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "取消了战斗开始倒计时";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "China";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "Le compte à rebours a été interrompu par";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "French";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "hat den Countdown abgebrochen.";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "German";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "님이 초읽기를 취소했습니다";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Korean";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "戦闘開始.";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Japanese";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "prepull cancel";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "5b48020f-48bc-b9f4-bcbb-1acb1269b1c4";
	};
	[8] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 11;
		["execute"] = "if AnyoneCore ~= nil then\
JobCheck()\
end\
self.used = true\
self.eventConditionMismatch = true";
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
		["uuid"] = "f55b2ecb-9b2b-ecf6-8a04-90e16b77b8e5";
	};
	[9] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["uuid"] = "2c7183f3-1b50-6f0f-9de7-48bdc525a54a";
	};
	[10] = {
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
		["name"] = "       -TEA REACTIONS-";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "6db2bff8-49cd-9d3e-9c6a-d3c8f860135f";
	};
	[11] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "data.limitCutNumber = eventArgs.markerID - 78\
data.limitCutTime = Now()\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["buffIDList"] = multiRefObjects[4];
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.entityID == Player.id and eventArgs.markerID - 78 >= 1 and eventArgs.markerID - 78 <= 8";
				["conditionType"] = 1;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["buffIDList"] = multiRefObjects[4];
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.markerID - 78 >= 1 and eventArgs.markerID - 78 <= 8";
				["conditionType"] = 1;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["loop"] = false;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "limit cut number";
		["throttleTime"] = 0;
		["time"] = 200;
		["timeRange"] = true;
		["timelineIndex"] = 39;
		["timeout"] = 5;
		["timerEndOffset"] = 40;
		["timerOffset"] = 0;
		["timerStartOffset"] = -15;
		["used"] = false;
		["uuid"] = "7d20aec2-1706-c44d-b675-fd562f0fdb11";
	};
	[12] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["buffIDList"] = multiRefObjects[5];
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[6];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["buffIDList"] = multiRefObjects[5];
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["uuid"] = "5182eb7d-547b-e5c2-a4e1-0185e643de14";
	};
	[13] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "ContentID";
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
				["buffIDList"] = multiRefObjects[5];
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[6];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["buffIDList"] = multiRefObjects[5];
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[6];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["uuid"] = "61c2cf26-ad6b-0261-aa97-99501e8d10ed";
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
		["name"] = "       -UCOB REACTIONS-";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "b298c6d9-c238-feae-9f6d-fff4431b712f";
	};
	[15] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "ACR_TensorMagnum_Drill = false\
ACR_TensorMagnum_AirAnchor = false\
ACR_TensorMagnum_CD = false\
ACR_TensorMagnum_Hypercharge = false\
ACR_TensorMagnum_Reassemble = false\
ACR_TensorMagnum_HoldRico = true\
ACR_TensorMagnum_HoldGR = true\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["name"] = "disable if you get hatch";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.entityID == Player.id and eventArgs.markerID == 118";
				["conditionType"] = 1;
				["conditions"] = multiRefObjects[1];
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = true;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[1];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[1];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "toggle off with hatch";
		["throttleTime"] = 5500;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "9afb68b2-5f21-bb1d-9a0e-ad5c444f044f";
	};
	[16] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "ACR_TensorMagnum_Drill = false\
ACR_TensorMagnum_AirAnchor = false\
ACR_TensorMagnum_CD = false\
ACR_TensorMagnum_Hypercharge = false\
ACR_TensorMagnum_Reassemble = false\
ACR_TensorMagnum_HoldRico = true\
ACR_TensorMagnum_HoldGR = true\
data.InNeurolink = true\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["name"] = "also disable if in neurolink";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "ACR_TensorMagnum_Drill = true\
ACR_TensorMagnum_AirAnchor = true\
ACR_TensorMagnum_CD = true\
ACR_TensorMagnum_Hypercharge = true\
ACR_TensorMagnum_Reassemble = true\
ACR_TensorMagnum_HoldRico = false\
ACR_TensorMagnum_HoldGR = false\
data.InNeurolink = false\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
				["conditions"] = multiRefObjects[9];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 7;
				["conditions"] = multiRefObjects[9];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["buffID"] = 344;
				["buffIDList"] = {
				};
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = {
				};
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.InNeurolink == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[5] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 2;
				["buffDuration"] = 0;
				["buffID"] = 344;
				["buffIDList"] = {
				};
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "toggle off/on after";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "8ebecf18-ed43-f115-a1ce-db095ac73059";
	};
	[17] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true return end\
local ent = EntityList:Get(eventArgs.entityID)\
if not ent then self.used = true return end\
Argus.addTimedConeFilled(6000, 0, 0, 0, 25, math.rad(90), 0, 30, {r = 0.7, g = 0.2, b = 0}, 0.3, 0.3, 0, nil, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1)\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
					[5] = 5;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.markerID == 40\
";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true and AnyoneCore ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "draw earthshaker cones";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "4908002a-c87d-6e18-89ac-2a3014fd90e1";
	};
	[18] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
		 Argus.addTimedDonutFilled(6000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0.4, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
			Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 9, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 4500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Donut > Circle (LD>IC)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
--for id, ent in pairs(TensorCore.getEntityGroupList(\"Most Clustered Ally\")) do    \
--		if ent then                     \
--				Argus.addTimedCircleFilled(3500, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 0.6, g = 0.6, b = 0.2}, 0.2, 0.2, 1500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
--		end \
--end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
			Argus.addTimedCircleFilled(5500, ent.pos.x, ent.pos.y, ent.pos.z, 9, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 3500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 4;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Circle > Circle (TB>IC)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
--for id, ent in pairs(TensorCore.getEntityGroupList(\"Most Clustered Ally\")) do    \
--		if ent then            \
--				Argus.addTimedCircleFilled(3500, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 0.6, g = 0.6, b = 0.2}, 0.2, 0.2, 1500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
--		end \
--end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
		 Argus.addTimedDonutFilled(6500, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0, b = 0}, 0.2, 0.2, 3500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 5;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Donut > Circle (TB>LD)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[4] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then             \
				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
			Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 9, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 4000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 6;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Circles > Circle (RD>IC)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[5] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then            \
				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
		 Argus.addTimedDonutFilled(6000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0, b = 0}, 0.2, 0.2, 4000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 7;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Circles > Donut (RD>LD)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[6] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
local mt = TensorCore.getEntityByGroup(\"Main Tank\")\
		if mt then\
				Argus.addTimedCircleFilled(5000, mt.pos.x, mt.pos.y, mt.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 10000, mt.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
\
--for id, ent in pairs(TensorCore.getEntityGroupList(\"Most Clustered Ally\")) do    \
--		if ent then                    \
--				Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 14500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
--		end \
--end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 8;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Circle > Circle (DD>TB)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[7] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then                     \
				Argus.addTimedCircleFilled(7000, ent.pos.x, ent.pos.y, ent.pos.z, 4, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 7000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
local mt = TensorCore.getEntityByGroup(\"Main Tank\")\
		if mt then\
				Argus.addTimedCircleFilled(4000, mt.pos.x, mt.pos.y, mt.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 15000, mt.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 9;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Circles > Circle (MS>DD)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[8] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
		 Argus.addTimedDonutFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
--for id, ent in pairs(TensorCore.getEntityGroupList(\"Most Clustered Ally\")) do    \
--		if ent then                     \
--				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 5000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
--		end \
--end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 10;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Draw Donut > Circle (LD>TB)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[9] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
		 Argus.addTimedDonutFilled(6750, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then            \
				Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 4500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then                     \
				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 4, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 11000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 12;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "LD > RD > MS (fellruin)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[10] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then \
			Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then           \
		 Argus.addTimedDonutFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0, b = 0}, 0.2, 0.2, 5000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5) \
		end \
end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent then                     \
				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 4, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 11000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 13;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "RD > LD > MS (fellruin)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[11] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
		 Argus.addTimedDonutFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then            \
				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 4500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
---thermionic beam won't be drawn\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 14;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "LD > RD > TB (adds)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[12] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
		 Argus.addTimedDonutFilled(6000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 22, 20, {r = 1, g = 0.4, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
			Argus.addTimedCircleFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 9, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 4500, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then            \
				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 8000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 15;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "LD > IC > RD (adds)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[13] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
			Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 9, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
---wont draw thermionic beam\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then            \
				Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 8000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 16;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "IC > TB > RD (adds)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[14] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(EntityList(\"\")) do\
	if ent.contentid == 2612 then\
			Argus.addTimedCircleFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 9, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
	end\
end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then            \
				Argus.addTimedCircleFilled(4000, ent.pos.x, ent.pos.y, ent.pos.z, 3, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 5000, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
---wont draw thermionic beam\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 17;
					[4] = 11;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarIndex"] = 1;
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "IC > RD > TB (adds)";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "shine you the iron path!";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Lunar Dynamo > Iron Chariot";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "lead me to iron rule!";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Thermionic > Iron Chariot";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "Take fire,";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Thermionic > Lunar Dynamo";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "the iron path to";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Raven's Dive > Iron Chariot";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "the hallowed moon to call";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Raven's Dive > Lunar Dynamo";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "scorch you the earth";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Dalamud Dive > Thermionic";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "exalt you the red moon";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Meteor Stream > Dalamud Dive";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "take fire and scorch my foes";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Lunar Dynamo > Thermionic";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[11] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 4;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true and AnyoneCore ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "check if draws are enabled";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[12] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "a rain of stars to bring";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "LD > RD > MS (fellruin)";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[13] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "the moon and stars to bring";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "RD > LD > MS";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[14] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "upon burning earth to tread";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "LD > RD > TB (adds)";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[15] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "in my descent to wield";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "LD > IC > RD";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[16] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "take fire and descend";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "IC > TB > RD";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[17] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 5;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["eventChatLine"] = "descend with fiery edge";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "IC > RD > TB";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "draw quotes";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "d65e4b1d-5ea0-4265-93e4-736b529b8ee6";
	};
	[19] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then             \
				Argus.addTimedCircleFilled(1700, ent.pos.x, ent.pos.y, ent.pos.z, 1, 30, {r = 1, g = 1, b = 0.4}, 0.1, 0.1, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
					[5] = 5;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then             \
				Argus.addTimedCircleFilled(500, ent.pos.x, ent.pos.y, ent.pos.z, 1, 30, {r = 1, g = 0, b = 0}, 0.4, 0.4, 0, nil, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
					[5] = 5;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.spellID == 9898\
";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "draw twisters";
		["throttleTime"] = 1700;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "9c625e0e-9996-a156-a39f-6d8abfed8ddd";
	};
	[20] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then             \
				Argus.addTimedCircleFilled(3900, ent.pos.x, ent.pos.y, ent.pos.z, 1, 30, {r = 1, g = 1, b = 0.4}, 0.1, 0.1, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
					[5] = 5;
					[6] = 7;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then             \
				Argus.addTimedCircleFilled(1400, ent.pos.x, ent.pos.y, ent.pos.z, 1, 30, {r = 1, g = 0, b = 0}, 0.4, 0.4, 0, nil, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)    \
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
					[5] = 5;
					[6] = 7;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then             \
				Argus.addTimedCircleFilled(4615, ent.pos.x, ent.pos.y, ent.pos.z, 1, 30, {r = 1, g = 1, b = 0.4}, 0.1, 0.1, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
					[5] = 6;
					[6] = 7;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[4] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent and ent.alive == true then             \
				Argus.addTimedCircleFilled(700, ent.pos.x, ent.pos.y, ent.pos.z, 1, 30, {r = 1, g = 1, b = 0.4}, 0.1, 0.1, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end \
end\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
					[5] = 6;
					[6] = 7;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return eventArgs.spellID == 9906\
";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.DontDrawDive == nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.DontDrawDive ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "draw twisting dive";
		["throttleTime"] = 3900;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "c5b8549f-b2cc-7ad1-9bbb-42177114bbd6";
	};
	[21] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local party = TensorCore.getEntityGroupList(\"Party\")\
local content = data.furthestContent\
local enemy = TensorCore.getEntityByGroup(\"ContentID\", {contentid = content, subgroup = \"Nearest\"})\
\
local furthestDist, secondFurthestDist = -999, -999\
local furthest, secondFurthest\
\
for id, ent in pairs(party) do\
    local dist = TensorCore.getDistance3d(ent.pos, enemy.pos)\
    if dist and dist > furthestDist then\
        furthestDist = dist\
        furthest = ent\
    end\
end\
\
for id, ent in pairs(party) do\
    local dist = TensorCore.getDistance3d(ent.pos, enemy.pos)\
    if furthest and ent.id ~= furthest.id and dist > secondFurthestDist then\
        secondFurthestDist = dist\
        secondFurthest = ent\
    end\
end\
\
if furthest and (furthestDist >= 19) then\
    Argus.addCircleFilled(furthest.pos.x, furthest.pos.y, furthest.pos.z, 6, 30, GUI:ColorConvertFloat4ToU32(200, 200, 0.1, 0.2), GUI:ColorConvertFloat4ToU32(100, 100, 0, 1), 2)\
end\
\
if secondFurthest and (secondFurthestDist >= 19) then\
		Argus.addCircleFilled(secondFurthest.pos.x, secondFurthest.pos.y, secondFurthest.pos.z, 6, 30, GUI:ColorConvertFloat4ToU32(255, 0, 0.1, 0.2), GUI:ColorConvertFloat4ToU32(100, 100, 0, 1), 2)\
end\
\
---Argus.addTimedCircleFilled(10000, secondFurthest.pos.x, secondFurthest.pos.y, secondFurthest.pos.z, 8, 30, {r = 255/255, g = 152/255, b = 0}, 0.2, 0.2, 0, secondFurthest.id, GUI:ColorConvertFloat4ToU32(2255/255, 152/255, 0, 1), 1.5)\
---Argus.addTimedCircleFilled(10000, Player.pos.x, Player.pos.y, Player.pos.z, 8, 30, {r = 255/255, g = 152/255, b = 0}, 0.2, 0.2, 0, Player.id, GUI:ColorConvertFloat4ToU32(2255/255, 152/255, 0, 1), 1.5)\
\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore ~= nil and AnyoneCore.Settings.DrawNaelQuotes == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.DrawFurthest ~= nil and data.furthestContent ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "draw liquid hells";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "f1e208f8-7506-cfd6-97c4-d2988a822fe9";
	};
	[22] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "Argus.addRectFilled(\
        0,\
        0,\
        0,\
        TensorCore.getDistance2d({x = 0, y = 0, z = 0}, Player.pos) + 11,\
        0,\
        TensorCore.getHeadingToTarget({x = 0, y = 0, z = 0}, Player.pos),\
        nil,\
        GUI:ColorConvertFloat4ToU32(250, 250, 250, 1),\
        1.5\
    )\
    \
    local projectedPos = TensorCore.getPosInDirection(Player.pos, TensorCore.getHeadingToTarget({x = 0, y = 2.38, z = 0}, Player.pos), 11)\
    Argus.addCircleFilled(\
        projectedPos.x,\
        projectedPos.y,\
        projectedPos.z,\
        1,\
        30,\
        GUI:ColorConvertFloat4ToU32(250, 250, 0.5, 0.2),\
        GUI:ColorConvertFloat4ToU32(250, 0.5, 0.5, 1),\
        1.5\
    )\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
					[3] = 3;
					[4] = 4;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore ~= nil and AnyoneCore.Settings.DrawNaelQuotes == true and Argus ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 8;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.drawHeavensfallKnockback == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "draw heavensfall knockback";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "a6655745-dee8-c86c-8e79-baec306359c3";
	};
	[23] = {
		["actions"] = {
		};
		["conditions"] = {
		};
		["enabled"] = true;
		["eventType"] = 1;
		["execute"] = "";
		["executeType"] = 1;
		["lastUse"] = 0;
		["luaNeedsWeaveWindow"] = false;
		["luaReturnsAction"] = false;
		["name"] = "       -UWU REACTIONS-";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "fc3be950-cbde-bf25-bf91-e40f0d4eb0e6";
	};
	[24] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local duration = 60\
local width = 0.1\
local length\
local t = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 1801, subgroup = \"Nearest\"})\
if t and Argus then\
length = (24 + t.Distance) \
Argus.addTimedRectFilled(duration, t.pos.x, t.pos.y, t.pos.z, length, width, t.pos.h, {r = 0, g = 0.5, b = 0.5}, 0, 0, 0, t.id, Player.id, true, GUI:ColorConvertFloat4ToU32(0, 0.5, 0.5, 1), 1.5)\
end\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["name"] = "Upheaval";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local colorOutline = GUI:ColorConvertFloat4ToU32(1, 0, 0, 1.5)\
local outlineThickness = 1.5\
Argus.addRectFilled(119.3747253418, 0, 100, 40, 10, -1.57, GUI:ColorConvertFloat4ToU32(1, 0, 0, 0.2), GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 2)\
Argus.addRectFilled(100, 0, 80.625274658203, 40, 10, 0, GUI:ColorConvertFloat4ToU32(1, 0, 0, 0.2), GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 2)\
self.used = true\
";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 3;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Afterburn Rect";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[3] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local t = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 1644, subgroup = \"Nearest\"})\
if t and Argus then\
Argus.addDonutFilled(t.pos.x, t.pos.y, t.pos.z, 7, 20, 50, GUI:ColorConvertFloat4ToU32(0.5, 0, 0, 0.3), GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1)\
end\
self.used = true\
";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 4;
					[2] = 2;
				};
				["endIfUsed"] = false;
				["gVar"] = "";
				["gVarValue"] = 1;
				["ignoreWeaveRules"] = false;
				["isAreaTarget"] = false;
				["luaNeedsWeaveWindow"] = false;
				["luaReturnsAction"] = false;
				["name"] = "Wicked Tornado";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = false;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.UpheavalDraw == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Upheaval Condition";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 0;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = 777;
				["matchAnyBuff"] = false;
				["mpType"] = 1;
				["mpValue"] = 0;
				["name"] = "Self Map ID 777(uwu)";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.IfritCrossDraw == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Afterburn Condition";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.GarudaTornado == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["name"] = "Wicked Tornado Condition";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = -1;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 1;
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "onFrameDraws";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "1e8faf6e-437b-ab36-b1fc-5579f95e2efe";
	};
	[25] = {
		["actions"] = {
			[1] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local markedNails = {}\
local HeadingWidth = 1\
local durationHeading = 8000\
local durationHitbox = 93000\
local alphaMin = 0.3\
local alphaMax = 0.3\
local HeadingFill = {r = 1, g = 1, b = 0}\
local HeadingOutline = GUI:ColorConvertFloat4ToU32(1, 1, 0, 1)\
local HeadingOutlineThickness = 1.5\
local HitboxFill = {r = 1, g = 1, b = 0}\
local HitboxOutline = GUI:ColorConvertFloat4ToU32(1, 1, 0, 1)\
local HitBoxOutlineThickness = 1.5\
for id, ent in pairs(EntityList(\"\")) do\
        if not markedNails[id] and ent.contentid == 1186 then\
Argus.addTimedCircleFilled(durationHitbox, ent.pos.x, ent.pos.y, ent.pos.z, ent.hitradius, 25, HitboxFill, alphaMin, alphaMax, 0, ent.id, HitboxOutline, HitBoxOutlineThickness)\
Argus.addTimedRectFilled(durationHeading, 100, 0, 100, 10, HeadingWidth, 100, HeadingFill, alphaMin, alphaMax, 0, nil, ent.id, false, HeadingOutline, HeadingOutlineThickness)\
                markedNails[id] = true    \
        end\
end\
self.used = table.size(markedNails) >= 4";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
				["untarget"] = false;
				["useForWeaving"] = false;
				["usePot"] = false;
				["used"] = false;
				["variableTogglesType"] = 1;
			};
			[2] = {
				["aType"] = 4;
				["actionID"] = -1;
				["actionLua"] = "local playerduration = 16000\
local radius = 8\
local CircleColorFill = {r = 0.7, g = 0, b = 0}\
local alphaMin = 0.1\
local alphaMax = 0.1\
local CircleOutline = GUI:ColorConvertFloat4ToU32(1,0,0,1)\
local CircleOutlineThickness = 2\
Argus.addTimedCircleFilled(playerduration, Player.pos.x, Player.pos.y, Player.pos.z, radius, 50, CircleColorFill, alphaMin, alphaMax, 0, Player.id, CircleOutline, CircleOutlineThickness)\
self.used = true";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 1;
				["conditions"] = {
				};
				["contentid"] = -1;
				["dequeueIfLuaFalse"] = false;
				["enmityValue"] = 0;
				["eventArgOptionType"] = 2;
				["eventArgType"] = 1;
				["eventBuffDuration"] = 0;
				["eventBuffID"] = -1;
				["eventChatLine"] = "pogchamp";
				["eventEntityContentID"] = 1186;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 0;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = 777;
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "Draw UWU NailBait";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 5;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "d0d5597d-87f9-9ebc-9c19-6380e53ba6a6";
	};
	[26] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetContentID"] = 1185;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "ContentID";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 2;
				["conditions"] = multiRefObjects[2];
				["contentid"] = 1186;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 2;
				["conditionLua"] = "";
				["conditionType"] = 3;
				["conditions"] = multiRefObjects[2];
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 20;
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[3] = {
				["actionCDValue"] = 0;
				["actionID"] = -1;
				["buffCheckType"] = 2;
				["buffDuration"] = 0;
				["buffID"] = 1544;
				["buffIDList"] = {
				};
				["category"] = 1;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["category"] = 6;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "";
				["conditionType"] = 2;
				["conditions"] = {
					[1] = 1;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "ContentID";
				["gaugeIndex"] = 1;
				["gaugeValue"] = 0;
				["hpType"] = 1;
				["hpValue"] = 0;
				["inCombatType"] = 1;
				["inRangeValue"] = 0;
				["lastSkillID"] = -1;
				["localmapid"] = -1;
				["matchAnyBuff"] = true;
				["mpType"] = 1;
				["mpValue"] = 0;
				["name"] = "";
				["partyHpType"] = 1;
				["partyHpValue"] = 0;
				["partyMpType"] = 1;
				["partyMpValue"] = 0;
				["partyTargetContentID"] = 1186;
				["partyTargetName"] = "";
				["partyTargetNumber"] = 4;
				["partyTargetSubType"] = 1;
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "Ifrit Nail Swap";
		["throttleTime"] = 0;
		["time"] = 328;
		["timeRange"] = true;
		["timelineIndex"] = 43;
		["timeout"] = 5;
		["timerEndOffset"] = 33.5;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "f5f921ee-a3a2-eeb4-8fa6-4e2c43dd8c44";
	};
	[27] = {
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
		["uuid"] = "90dbc9c7-3d08-013d-b40f-cb39d9261cd2";
	};
	[28] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Enemy";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 4;
					[2] = 2;
					[3] = 3;
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
				["name"] = "";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = true;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
					[2] = 6;
					[3] = 3;
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
				["name"] = "";
				["potType"] = 1;
				["setTarget"] = false;
				["showPositionPreview"] = false;
				["stopCasting"] = true;
				["stopMoving"] = false;
				["targetContentID"] = -1;
				["targetName"] = "";
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "local mytarget = Player:GetTarget()\
local cinfo = Player.castinginfo \
return mytarget ~= nil and cinfo ~= nil and cinfo.channeltargetid ~= nil and (mytarget.id ~= cinfo.channeltargetid) and (cinfo.casttime - cinfo.channeltime >= 0.500)";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "if Player:GetTarget() ~= nil then\
local target = Player:GetTarget()\
end\
return target ~= nil and target.contentid < 30000";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["uuid"] = "968110c3-392b-1be6-a48d-7b580263e5fe";
	};
	[29] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 3;
					[3] = 5;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
[20303] = true,\
}\
\
local caster = EntityList:Get(eventArgs.entityID)\
return StopCastingTable[eventArgs.spellID] == true and caster and caster.castinginfo.casttime - caster.castinginfo.channeltime < 2";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return data.stopAutoTarget ~= nil";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
[20303] = true,\
}\
\
return StopCastingTable[eventArgs.spellID] == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "06e87a51-fdfd-17f6-8aa8-f643d76ada50";
	};
	[30] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 1;
					[2] = 2;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
return ClearTargetTable[eventArgs.buffID] == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "e4b0b88f-b80e-68b6-8139-cb26efead65f";
	};
	[31] = {
		["actions"] = {
			[1] = {
				["aType"] = 1;
				["actionID"] = 16889;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "local MitigationTable = {\
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
\
\
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
[19353] = true,\
[19354] = true,\
[19415] = true,\
[19441] = true,\
[19538] = true,\
[19927] = true,\
[19937] = true,\
[19944] = true,\
[19948] = true,\
[19949] = true,\
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
return MitigationTable[eventArgs.spellID] == true\
";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.DutyHelperMitigation == true and AnyoneCore.Settings.DutyHelper == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[3] = {
				["actionCDValue"] = 1;
				["actionID"] = 16889;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "tactician - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "a49e1412-1a11-718d-a65c-827e9543080a";
	};
	[32] = {
		["actions"] = {
			[1] = {
				["aType"] = 1;
				["actionID"] = 7551;
				["actionLua"] = "";
				["allowInterrupt"] = false;
				["atomicPriority"] = false;
				["castAtMouse"] = false;
				["castPosX"] = 0;
				["castPosY"] = 0;
				["castPosZ"] = 0;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Event Entity";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "local InterruptTable = {\
---dungeons\
[9042] = true,\
[8612] = true,\
[2145] = true,\
[12507] = true,\
[15786] = true,\
[16776] = true,\
[16815] = true,\
[15802] = true,\
[15808] = true,\
[17164] = true,\
---8 man raids\
[8983] = true,\
[10933] = true,\
[15757] = true,\
---trials\
[14324] = true,\
---24 man raids\
[3344] = true,\
}\
\
return InterruptTable[eventArgs.spellID] == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.DutyHelperInterrupt == true and AnyoneCore.Settings.DutyHelper == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
				["rangeSourceContentID"] = -1;
				["rangeSourceName"] = "";
				["setEventTargetSubtype"] = 1;
				["setFirstMatch"] = false;
			};
			[3] = {
				["actionCDValue"] = 1;
				["actionID"] = 7551;
				["buffCheckType"] = 1;
				["buffDuration"] = 0;
				["buffID"] = -1;
				["buffIDList"] = {
				};
				["category"] = 2;
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["name"] = "head graze - duty helper";
		["throttleTime"] = 0;
		["time"] = 0;
		["timeRange"] = false;
		["timelineIndex"] = 0;
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "1db89c83-2231-7280-ae8e-f3b7dc853eca";
	};
	[33] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["conditions"] = {
					[1] = 2;
					[2] = 1;
					[3] = 3;
					[4] = 4;
					[5] = 5;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
[19928] = true,\
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
				["eventSpellID"] = -1;
				["eventSpellName"] = -1;
				["eventTargetContentID"] = -1;
				["eventTargetID"] = -1;
				["eventTargetName"] = "";
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.DutyHelperKnockback == true and AnyoneCore.Settings.DutyHelper == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
[19928] = true,\
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
return KnockbackTable[eventArgs.spellID] == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetSubType"] = "Nearest";
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["timeout"] = 10;
		["timerEndOffset"] = 0;
		["timerOffset"] = 0;
		["timerStartOffset"] = 0;
		["used"] = false;
		["uuid"] = "ae94b995-a016-c6a0-922e-2c4d2cec9088";
	};
	[34] = {
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
		["uuid"] = "72ef8654-a4e5-d6df-83a5-a3a67059ca35";
	};
	[35] = {
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["targetSubType"] = "Nearest";
				["targetType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
				["clusterMinTarget"] = 1;
				["clusterRadius"] = 8;
				["clusterRange"] = 30;
				["comparator"] = 1;
				["conditionLua"] = "return AnyoneCore ~= nil and Argus ~= nil and AnyoneCore.Settings.DrawChainLightning == true";
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
				["filterTargetSubtype"] = "Nearest";
				["filterTargetType"] = "Self";
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
				["partyTargetType"] = "All";
				["rangeCheckSourceSubType"] = "Nearest";
				["rangeCheckSourceType"] = "Self";
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
		["uuid"] = "f2f6af97-d4fe-e867-89e7-1aad9b7a9d92";
	};
}
return obj1
