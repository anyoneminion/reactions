-- Persistent Data
local multiRefObjects = {
{};{};{};{};{};{};{};
} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "--- Do not touch anything on this page. If you want to change the settings, then use the menu options.\
--- Press the MMOMinion menu button, and at the bottom of the FFXIVMinion list, you should see\
--- an option named \"AnyoneCore\". Click that and change the settings as you please.\
\
---If you do not see an option named that, follow these steps to troubleshoot:\
---1) Make sure your profile is set to one of my profiles (i.e. \"anyone smn\")\
---2) Reload LUA\
---3) Make sure you are on the most up to date version of my general reactions.\
---4) Check console for errors.\
---5) Send any additional problems to me on Discord at Anyone#9549\
\
\
\
		if Player.job ~= 38 then\
				d(\"[Anyone's Reactions] - Job check failed, sending text command.\")\
				TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0} You're using the wrong timeline triggers. You're currently using the {color:255,0,0}Dancer{color:0,255,0} profile, which doesn't match your current job. <se.1>\")\
		elseif Player.job == 38 then\
				d(\"[Anyone's Reactions] - Player job check succeeded\")\
		end\
\
if SallyDNC.SkillSettings.Potion.enabled == true then\
data.PotsEnabled = true\
end\
\
---if you want a higher or lower speed, you can change 7.2 to anything you want. you will have to change on each timeline.\
if AnyoneCore.Settings.AutoSetSpeedHacks == true then\
		gDevHackWalkSpeed = 7\
		Player:SetSpeed(1,gDevHackWalkSpeed,gDevHackWalkSpeed,gDevHackWalkSpeed)\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "REACTION SETTINGS";
			["throttleTime"] = 0;
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "156b9cab-585f-0cbe-a83e-4e18763cf2de";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "---Frequently Asked Questions:\
--\
---Question: \"Something isn't working\"\
---Answer: First of all, make sure you're using the most up to date version of my reactions\
---Secondly, make sure your debug logs are ENABLED. Check the debug tab in the TensorReactions window and enable it.\
---Finally, send me the debug log, located in TensorReactions/logs in your minion folder, along with a description\
---of your problem. Try to be as precise as possible with the issue.\
---Additionally, if it's a rotational error, send me the link to the fflogs of the run in question.\
---You can reach me on discord at Anyone#9549.\
--\
--\
---Question: \"How do I get the knockback mirror arm's length strat to work?\" or \"I got killed during knockback mirrors\"\
---Answer: Open the Anyone's Reactions Settings menu and enable \"Knockback Mirror Uptime Strat\"\
--\
--\
---Question: \"How do I get the assist toggle during Away With Thee to work on e7s?\"\
---Answer: Open the Anyone's Reactions Settings menu and enable \"Disable Assist for Away With Thee\"\
--\
--\
--\
---Question: \"Why don't you do something this way instead of that way?\"\
---Answer: Because that's how I made it. If you truly believe you have a better idea, then send it to me on Discord.\
--\
--\
--\
---Question: \"How do I change the settins for my reactions?\"\
---Answer: Press the MMOMinion menu button, and at the bottom of the FFXIVMinion list, you should see\
---an option named \"AnyoneCore\". Click that and change the settings as you please.";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "-- general read me --";
			["throttleTime"] = 0;
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a5aca75b-c1e5-1f69-9b01-3d47ecc00082";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "--\
--On this timeline, you have the option of enabling reactions that will help you with Away With Thee. To enable this:\
---Open the Anyone's Reactions Settings menu and enable \"Disable Assist for Away With Thee\"\
--\
--\
";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "-- e7s read me --";
			["throttleTime"] = 0;
			["time"] = 13;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b9586b2b-dcd5-660d-a8b8-f464fe3ba34b";
		};
	};
	[22] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "\
--- 'disable assist before teleport', and 'reenable assist after stunned' are disabled by default. if you'd like\
--- to use them, then change the settings in your \"Anyone's Reaction Settings\" menu.";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "-- read me --";
			["throttleTime"] = 0;
			["time"] = 116.7;
			["timeRange"] = false;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "30dc7ac6-b1da-98a2-928f-49a2d20f2540";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
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
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
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
				[4] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2240;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[6];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2241;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[6];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2242;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[6];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2243;
					["buffIDList"] = multiRefObjects[1];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[6];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable assist before teleport";
			["throttleTime"] = 0;
			["time"] = 116.7;
			["timeRange"] = true;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "d4e96238-576a-8f49-8e6c-5cb0584b226f";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "reenable all after teleport";
			["throttleTime"] = 0;
			["time"] = 116.7;
			["timeRange"] = false;
			["timelineIndex"] = 22;
			["timerEndOffset"] = 20;
			["timerOffset"] = 12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e2ace808-f740-1ffa-bc8d-2648c28acbfd";
		};
	};
	[25] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.TechStep.enabled = false\
self.used = true\
";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable tech";
			["throttleTime"] = 0;
			["time"] = 131;
			["timeRange"] = false;
			["timelineIndex"] = 25;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "07ade0fc-9d63-f835-a017-1ac975daa127";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.TechStep.enabled = true\
self.used = true\
";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "enable tech";
			["throttleTime"] = 0;
			["time"] = 131;
			["timeRange"] = false;
			["timelineIndex"] = 25;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "c95994ca-88ef-a575-85d5-b1845f4b1bfb";
		};
	};
	[27] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.HotBarConfig.ShieldSamba.enabled = false\
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
						[3] = 3;
						[4] = 4;
					};
					["endIfUsed"] = false;
					["gVar"] = "SallyDNC.HotBarConfig.ShieldSamba.enabled";
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
					["variableTogglesType"] = 2;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 16012;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1934;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1951;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffID"] = 1826;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shield Samba";
			["throttleTime"] = 0;
			["time"] = 139.9;
			["timeRange"] = false;
			["timelineIndex"] = 27;
			["timerEndOffset"] = -0.33199999999999;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.33199999999999;
			["used"] = false;
			["uuid"] = "15fdc746-4cd2-a986-90b1-e0c3394b7801";
		};
	};
	[38] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "\
--- 'disable assist before teleport', and 'reenable assist after stunned' are disabled by default. if you'd like\
--- to use them, then change the settings in your \"Anyone's Reaction Settings\" menu.";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "-- read me --";
			["throttleTime"] = 0;
			["time"] = 177.5;
			["timeRange"] = false;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "1459ce16-7df5-37eb-b6a8-de6f739902b4";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
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
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
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
				[4] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if FFXIV_Common_BotRunning and AnyoneCore.Settings.DisableAssist == true then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2240;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2241;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2242;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2243;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable assist before teleport";
			["throttleTime"] = 0;
			["time"] = 177.5;
			["timeRange"] = true;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "fd6f6b67-7be1-73d8-9870-a6f29ede065d";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if not FFXIV_Common_BotRunning then\
		ml_global_information.ToggleRun()\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "reenable all after teleport";
			["throttleTime"] = 0;
			["time"] = 177.5;
			["timeRange"] = false;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 20;
			["timerOffset"] = 12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "1e12db5c-9358-e71f-9a93-5abea169824d";
		};
	};
	[47] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.StandardStep.enabled = false\
SallyDNC.SkillSettings.TechStep.enabled = false\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable standard";
			["throttleTime"] = 0;
			["time"] = 198.5;
			["timeRange"] = false;
			["timelineIndex"] = 47;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3.6500000953674;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "4ee6300c-3c19-4c8b-98b4-c85c016ac20b";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if MoogleTTS ~= nil and AnyoneCore.Settings.UseMoogleTTS == true then\
MoogleTTS.Speak(\"Use Improvisation\")\
elseif MoogleTTS == nil and AnyoneCore.Settings.UseMoogleTTS == true then\
TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0} Use Improvisation. <se.1>\")\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Improv TTS";
			["throttleTime"] = 0;
			["time"] = 198.5;
			["timeRange"] = false;
			["timelineIndex"] = 47;
			["timerEndOffset"] = 0;
			["timerOffset"] = -0.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f4ca3b28-1e8a-62fc-a291-5e8f352a4464";
		};
	};
	[51] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.StandardStep.enabled = true\
SallyDNC.SkillSettings.TechStep.enabled = true\
SallyDNC.SkillSettings.Devilment.enabled = true\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "enable all";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = false;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "519a8b5c-8ea6-8886-adde-0da732e9ad67";
		};
		[2] = {
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
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target nearest add";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = true;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 3;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "601fd39b-0a89-037b-b559-285be69a2c46";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.Potion.enabled = false\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_Potion";
					["gVarIndex"] = 12;
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
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable pot";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = false;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "05ef45be-9156-6694-ab78-1f5c28a0c94f";
		};
		[4] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 15998;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
					["conditions"] = {
						[1] = 3;
						[2] = 4;
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
				[2] = {
					["aType"] = 1;
					["actionID"] = 15997;
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
						[3] = 4;
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
					["actionCDValue"] = 1;
					["actionID"] = 15997;
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
					["actionCDValue"] = 1.0099999904633;
					["actionID"] = 15998;
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
					["targetName"] = "";
				};
				[3] = {
					["actionCDValue"] = 1;
					["actionID"] = 15998;
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
					["targetName"] = "";
				};
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1827;
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "precast dance";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = false;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 0;
			["timerOffset"] = -7.0999999046326;
			["timerStartOffset"] = -12.5;
			["used"] = false;
			["uuid"] = "d068030d-8522-7647-9e0f-116cf47f4ad5";
		};
	};
	[53] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.TechStep.enabled = false\
self.used = true\
";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable tech";
			["throttleTime"] = 0;
			["time"] = 231.8;
			["timeRange"] = false;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b1e8b015-294d-c2ba-8c22-5c55ec158458";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.TechStep.enabled = true\
self.used = true\
";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "enable tech";
			["throttleTime"] = 0;
			["time"] = 231.8;
			["timeRange"] = false;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 0;
			["timerOffset"] = -2;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e4df1255-8727-1c9c-ba27-e0ea36b9047a";
		};
	};
	[57] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.TechStep.enabled = false\
self.used = true\
";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable tech";
			["throttleTime"] = 0;
			["time"] = 254.5;
			["timeRange"] = false;
			["timelineIndex"] = 57;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "27c68bb7-b6e3-d3d3-8327-79ad18de4a5a";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.TechStep.enabled = true\
self.used = true\
";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "enable tech";
			["throttleTime"] = 0;
			["time"] = 254.5;
			["timeRange"] = false;
			["timelineIndex"] = 57;
			["timerEndOffset"] = 0;
			["timerOffset"] = -2;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9d6c53af-35ba-4bd1-99fc-ad308c3e672e";
		};
	};
	[58] = {
	};
	[60] = {
	};
	[62] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.TechStep.enabled = false\
SallyDNC.SkillSettings.Devilment.enabled = false\
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
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 1;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 3;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
				[2] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["conditions"] = {
					};
					["contentid"] = 9301;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable tech/devil";
			["throttleTime"] = 0;
			["time"] = 291.8;
			["timeRange"] = true;
			["timelineIndex"] = 62;
			["timerEndOffset"] = 30;
			["timerOffset"] = -20;
			["timerStartOffset"] = -30;
			["used"] = false;
			["uuid"] = "4022ea99-f31f-6b2f-9528-03a04a786af8";
		};
		[2] = {
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
					["targetContentID"] = -1;
					["targetName"] = "";
					["targetSubType"] = 1;
					["targetType"] = 20;
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
					["setTarget"] = true;
					["showPositionPreview"] = false;
					["stopCasting"] = false;
					["stopMoving"] = false;
					["targetContentID"] = 9300;
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
					["buffIDList"] = {
					};
					["category"] = 4;
					["comparator"] = 1;
					["conditionLua"] = "for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if ent.contentid == 9301 and ent.hp.current > 0 then\
        -- swap to other add that's alive\
        reaction.eventArgs.targetID = id\
        return true\
    end\
end\
return false";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[7];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["conditionLua"] = "local t = Player:GetTarget()\
return t == nil or t.hp.current / t.hp.max <= 0.02-- no target or target dead, then swap";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[7];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["conditionLua"] = "for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if ent.contentid == 9301 and ent.hp.current > 0 then\
        -- other add is alive, don't swap to blasphemy\
        return false\
    end\
end\
return true";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[7];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "retarget next add";
			["throttleTime"] = 0;
			["time"] = 291.8;
			["timeRange"] = true;
			["timelineIndex"] = 62;
			["timerEndOffset"] = 30;
			["timerOffset"] = 0;
			["timerStartOffset"] = -30;
			["used"] = false;
			["uuid"] = "fb173e05-8e66-cb15-b6d2-54e208f70f9d";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if MoogleTTS ~= nil and AnyoneCore.Settings.UseMoogleTTS == true then\
MoogleTTS.Speak(\"Use Improvisation\")\
elseif MoogleTTS == nil and AnyoneCore.Settings.UseMoogleTTS == true then\
TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0} Use Improvisation. <se.1>\")\
end\
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
					["category"] = 1;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["conditions"] = {
					};
					["contentid"] = 9300;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["targetName"] = "";
				};
				[2] = {
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
					["conditionType"] = 3;
					["conditions"] = {
					};
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 10;
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Improv TTS";
			["throttleTime"] = 0;
			["time"] = 291.8;
			["timeRange"] = true;
			["timelineIndex"] = 62;
			["timerEndOffset"] = -30;
			["timerOffset"] = -0.5;
			["timerStartOffset"] = -30;
			["used"] = false;
			["uuid"] = "d5611131-7226-789b-8b6e-752cd051f570";
		};
	};
	[71] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.HotBarConfig.ShieldSamba.enabled = false\
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
						[3] = 3;
						[4] = 4;
					};
					["endIfUsed"] = false;
					["gVar"] = "SallyDNC.HotBarConfig.ShieldSamba.enabled";
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
					["variableTogglesType"] = 2;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 16012;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1934;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1951;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffID"] = 1826;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1827;
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shield Samba";
			["throttleTime"] = 0;
			["time"] = 500;
			["timeRange"] = false;
			["timelineIndex"] = 71;
			["timerEndOffset"] = -0.33199999999999;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.33199999999999;
			["used"] = false;
			["uuid"] = "be403d50-f560-9d71-a5ce-f70122596352";
		};
	};
	[74] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if data.PotsEnabled == true then\
SallyDNC.SkillSettings.Potion.enabled = true\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
					["conditions"] = {
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_Potion";
					["gVarIndex"] = 12;
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
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "enable pot";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = false;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "7380bb8e-3da5-43bb-b63c-b1556a36e141";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.StandardStep.enabled = true\
SallyDNC.SkillSettings.TechStep.enabled = true\
SallyDNC.SkillSettings.Devilment.enabled = true\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "enable all";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = false;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b5059d02-0233-f297-940c-ce1cca6e38ab";
		};
		[3] = {
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
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = true;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 3;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "aa2449a8-98d7-987b-bc84-32379cd29218";
		};
		[4] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 15998;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
					["conditions"] = {
						[1] = 3;
						[2] = 4;
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
				[2] = {
					["aType"] = 1;
					["actionID"] = 15997;
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
						[3] = 4;
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
					["actionCDValue"] = 1;
					["actionID"] = 15997;
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
					["actionCDValue"] = 1.0099999904633;
					["actionID"] = 15998;
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
					["targetName"] = "";
				};
				[3] = {
					["actionCDValue"] = 1;
					["actionID"] = 15998;
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
					["targetName"] = "";
				};
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1827;
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "precast dance";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = true;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 0;
			["timerOffset"] = -14.5;
			["timerStartOffset"] = -15;
			["used"] = false;
			["uuid"] = "6cd96099-3f86-a54e-9b0e-7acab7177e8d";
		};
	};
	[83] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = 3;
					["actionLua"] = "SallyDNC.HotBarConfig.Sprint.enabled = false\
self.used = true";
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
					["conditionLua"] = "return AnyoneCore.Settings.UseSprint == true";
					["conditionType"] = 1;
					["conditions"] = {
					};
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["name"] = "Check Settings";
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
					["targetName"] = "";
				};
				[2] = {
					["actionCDValue"] = 1;
					["actionID"] = 3;
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Use Sprint";
			["throttleTime"] = 0;
			["time"] = 550.5;
			["timeRange"] = false;
			["timelineIndex"] = 83;
			["timerEndOffset"] = 0;
			["timerOffset"] = -9;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a01f82e8-d006-0138-8772-02f160c2f8eb";
		};
	};
	[104] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.StandardStep.enabled = false\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable standard";
			["throttleTime"] = 0;
			["time"] = 658.8;
			["timeRange"] = false;
			["timelineIndex"] = 104;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3.6500000953674;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "5bc4f0dd-bd52-98ad-9560-4daf53f3293c";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.Devilment.enabled = false\
SallyDNC.SkillSettings.TechStep.enabled = false\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable devilment/tech";
			["throttleTime"] = 0;
			["time"] = 658.8;
			["timeRange"] = false;
			["timelineIndex"] = 104;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ce838e5b-beb3-2b53-b4f5-38f2a11c02e2";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if MoogleTTS ~= nil and AnyoneCore.Settings.UseMoogleTTS == true then\
MoogleTTS.Speak(\"Use Improvisation\")\
elseif MoogleTTS == nil and AnyoneCore.Settings.UseMoogleTTS == true then\
TensorCore.sendParsedChatMessage(\"/e {color:0, 255, 0} Use Improvisation. <se.1>\")\
end\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Improv TTS";
			["throttleTime"] = 0;
			["time"] = 658.8;
			["timeRange"] = false;
			["timelineIndex"] = 104;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "53b918c3-cfcb-477e-ba38-dcd77a45e4ae";
		};
	};
	[107] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.SkillSettings.StandardStep.enabled = true\
SallyDNC.SkillSettings.TechStep.enabled = true\
SallyDNC.SkillSettings.Devilment.enabled = true\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "enable all";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = false;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "48a4bd4a-cfc7-abe2-98bc-80408d311eb9";
		};
		[2] = {
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
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 3;
			["timerOffset"] = 0;
			["timerStartOffset"] = -3;
			["used"] = false;
			["uuid"] = "a9496bdd-d6f4-3bfb-8a41-e7ec67e74dc5";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 1;
					["actionID"] = 15998;
					["actionLua"] = "";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
					["conditions"] = {
						[1] = 3;
						[2] = 4;
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
				[2] = {
					["aType"] = 1;
					["actionID"] = 15997;
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
						[3] = 4;
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
					["actionCDValue"] = 1;
					["actionID"] = 15997;
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
					["actionCDValue"] = 1.0099999904633;
					["actionID"] = 15998;
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
					["targetName"] = "";
				};
				[3] = {
					["actionCDValue"] = 1;
					["actionID"] = 15998;
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
					["targetName"] = "";
				};
				[4] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1827;
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "precast dance";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 0;
			["timerOffset"] = -14.5;
			["timerStartOffset"] = -12;
			["used"] = false;
			["uuid"] = "6b394c8b-bb23-b1dc-b0ac-bfd309cec1fb";
		};
	};
	[109] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawBlackWhiteOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(10000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 3";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Orbs Group 1";
			["throttleTime"] = 0;
			["time"] = 683.7;
			["timeRange"] = true;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "21eb682c-79ce-98ee-aae0-3e739585901a";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawBlackWhiteOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(10000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 3";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Orbs Group 2";
			["throttleTime"] = 0;
			["time"] = 683.7;
			["timeRange"] = true;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 12;
			["timerOffset"] = 0;
			["timerStartOffset"] = 11;
			["used"] = false;
			["uuid"] = "47166268-aa4e-2c16-8292-33dd50e8a226";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawBlackWhiteOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(10000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 3";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Orbs Group 3";
			["throttleTime"] = 0;
			["time"] = 683.7;
			["timeRange"] = true;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 23;
			["timerOffset"] = 0;
			["timerStartOffset"] = 22;
			["used"] = false;
			["uuid"] = "9f41e730-e0a0-607e-ac1f-79763166c17e";
		};
	};
	[113] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDNC.HotBarConfig.ShieldSamba.enabled = false\
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
						[3] = 3;
						[4] = 4;
					};
					["endIfUsed"] = false;
					["gVar"] = "SallyDNC.HotBarConfig.ShieldSamba.enabled";
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
					["variableTogglesType"] = 2;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 16012;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1934;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1951;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffID"] = 1826;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[3];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Shield Samba";
			["throttleTime"] = 0;
			["time"] = 736.6;
			["timeRange"] = false;
			["timelineIndex"] = 113;
			["timerEndOffset"] = -0.33199999999999;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.33199999999999;
			["used"] = false;
			["uuid"] = "25587964-e8f2-4a60-b931-9534f393c2c2";
		};
	};
	[116] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawBlackWhiteOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(10000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 3";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Orbs Group 1";
			["throttleTime"] = 0;
			["time"] = 761.9;
			["timeRange"] = true;
			["timelineIndex"] = 116;
			["timerEndOffset"] = 1;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ea585296-e507-2fbe-b143-bb59ee10a424";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawBlackWhiteOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(10000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 3";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Orbs Group 2";
			["throttleTime"] = 0;
			["time"] = 761.9;
			["timeRange"] = true;
			["timelineIndex"] = 116;
			["timerEndOffset"] = 12;
			["timerOffset"] = 0;
			["timerStartOffset"] = 11;
			["used"] = false;
			["uuid"] = "785f002e-d61a-95d1-a60e-2e4a6302b9ef";
		};
		[3] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true end\
\
local drawnOrbs = {}\
\
for id, ent in pairs(EntityList(\"\")) do\
	if (ent.contentid == 9302 or ent.contentid == 9303) and not drawnOrbs[id] then\
		if AnyoneCore.Settings.DrawBlackWhiteOrbs == true then\
			drawnOrbs[id] = true\
			Argus.addTimedCircleFilled(10000, ent.pos.x, ent.pos.y, ent.pos.z, 6, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
	end\
end\
\
self.used = table.size(drawnOrbs) >= 3";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Orbs Group 3";
			["throttleTime"] = 0;
			["time"] = 761.9;
			["timeRange"] = true;
			["timelineIndex"] = 116;
			["timerEndOffset"] = 23;
			["timerOffset"] = 0;
			["timerStartOffset"] = 22;
			["used"] = false;
			["uuid"] = "d1ed2e96-0555-e3cc-adcc-62b5398c5708";
		};
	};
	["mapID"] = 908;
	["version"] = 6;
}
return obj1
