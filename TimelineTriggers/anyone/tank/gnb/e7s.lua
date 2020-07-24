-- Persistent Data
local multiRefObjects = {
{};{};{};{};{};
} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if SallyGNB.SkillSettings.Potion.enabled == true then\
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
			["uuid"] = "eaef8b45-47fb-ef70-aacf-1f03b03ca461";
		};
	};
	[22] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.NoMercy.enabled = false\
SallyGNB.SkillSettings.BloodFest.enabled = false\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable no mercy/bloodfest";
			["throttleTime"] = 0;
			["time"] = 116.7;
			["timeRange"] = false;
			["timelineIndex"] = 22;
			["timerEndOffset"] = -10;
			["timerOffset"] = -5;
			["timerStartOffset"] = -12;
			["used"] = false;
			["uuid"] = "5871ac9c-fe9e-f388-a10d-ecd02dff4ae1";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "\
--- 'disable assist before teleport', and 'reenable assist after stunned' are disabled by default. if you'd like\
--- to use them, then change the settings in the \"E7S REACTION SETTINGS\" located at \"13 - Empty Wave\" on the timeline.";
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
			["uuid"] = "2ff72185-4dd3-e127-ab3f-35fa9b6acdc0";
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
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
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
					["actionLua"] = "SallyGNB.SkillSettings.NoMercy.enabled = true\
SallyGNB.SkillSettings.BloodFest.enabled = true\
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
			["uuid"] = "bae5faad-cc73-c7c8-8fc6-cc98bdebc8cd";
		};
		[4] = {
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2240;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[1];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2241;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[1];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2242;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[1];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2243;
					["buffIDList"] = multiRefObjects[3];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[1];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["uuid"] = "8cb35795-60b7-6c0f-8310-2c6428a192c0";
		};
	};
	[23] = {
	};
	[25] = {
	};
	[27] = {
	};
	[38] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.NoMercy.enabled = false\
SallyGNB.SkillSettings.BloodFest.enabled = false\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable no mercy/bloodfest";
			["throttleTime"] = 0;
			["time"] = 177.5;
			["timeRange"] = false;
			["timelineIndex"] = 38;
			["timerEndOffset"] = -10;
			["timerOffset"] = -5;
			["timerStartOffset"] = -12;
			["used"] = false;
			["uuid"] = "fe1ca128-4939-9ba5-9b3f-edbf16ac8499";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "\
--- 'disable assist before teleport', and 'reenable assist after stunned' are disabled by default. if you'd like\
--- to use them, then change the settings in the \"E7S REACTION SETTINGS\" located at \"13 - Empty Wave\" on the timeline.";
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
			["uuid"] = "f804ecad-b4bf-97c9-85b3-3da72c29858b";
		};
		[3] = {
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2240;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2241;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2242;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
					["buffCheckType"] = 3;
					["buffDuration"] = 1.5;
					["buffID"] = 2243;
					["buffIDList"] = multiRefObjects[5];
					["category"] = 2;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 1;
					["conditions"] = multiRefObjects[2];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["uuid"] = "cde1bc53-a559-9ee5-ab1b-8f276b143612";
		};
		[4] = {
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
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
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
					["actionLua"] = "SallyGNB.SkillSettings.NoMercy.enabled = true\
SallyGNB.SkillSettings.BloodFest.enabled = true\
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
			["timerOffset"] = 11;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "51152c18-4cf2-49b6-affc-02d9fbcb0bbc";
		};
	};
	[43] = {
	};
	[47] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.SaveCD.enabled = true\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Save CD";
			["throttleTime"] = 0;
			["time"] = 198.5;
			["timeRange"] = false;
			["timelineIndex"] = 47;
			["timerEndOffset"] = -10;
			["timerOffset"] = -15;
			["timerStartOffset"] = -12;
			["used"] = false;
			["uuid"] = "27c36d68-f0d1-7d80-98c2-fdb0a0b6ce90";
		};
	};
	[51] = {
		[1] = {
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
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = true;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "503d437c-a53a-56bb-bb26-64e2b9a62db1";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.Potion.enabled = false\
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
			["uuid"] = "006c4288-8401-db68-adfc-025398320ba6";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.SaveCD.enabled = false\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable save cd";
			["throttleTime"] = 0;
			["time"] = 205.6;
			["timeRange"] = false;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "c65746b2-1046-46cf-8fd5-d1efe0651148";
		};
	};
	[53] = {
	};
	[57] = {
	};
	[58] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.NoMercy.enabled = false\
SallyGNB.SkillSettings.BloodFest.enabled = false\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable no mercy/bloodfest";
			["throttleTime"] = 0;
			["time"] = 264.3;
			["timeRange"] = false;
			["timelineIndex"] = 58;
			["timerEndOffset"] = -10;
			["timerOffset"] = -5;
			["timerStartOffset"] = -12;
			["used"] = false;
			["uuid"] = "41399729-bc36-41e4-9e9a-7d1767533ed6";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.NoMercy.enabled = true\
SallyGNB.SkillSettings.BloodFest.enabled = true\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "reenable all";
			["throttleTime"] = 0;
			["time"] = 264.3;
			["timeRange"] = false;
			["timelineIndex"] = 58;
			["timerEndOffset"] = 0;
			["timerOffset"] = 11;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6af949e5-21ff-56ea-87b9-3d3739ffe147";
		};
	};
	[60] = {
	};
	[62] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.SaveCD.enabled = true\
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
						[1] = 1;
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
					["category"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 3;
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
					["filterTargetSubtype"] = "Nearest";
					["filterTargetType"] = "Self";
					["gaugeIndex"] = 1;
					["gaugeValue"] = 0;
					["hpType"] = 1;
					["hpValue"] = 12;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "save cd at 12% hp";
			["throttleTime"] = 0;
			["time"] = 291.8;
			["timeRange"] = true;
			["timelineIndex"] = 62;
			["timerEndOffset"] = 40;
			["timerOffset"] = -30;
			["timerStartOffset"] = -40;
			["used"] = false;
			["uuid"] = "c54387cb-9c6b-cbdf-97a4-b7ed1e14ab36";
		};
	};
	[63] = {
	};
	[71] = {
	};
	[74] = {
		[1] = {
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
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "274e9a2a-b0fd-9a14-9a19-78c91863bf4b";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.Potion.enabled = true\
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
			["uuid"] = "b2e25c95-117d-5805-a0f7-dad71a090654";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.SaveCD.enabled = false\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable save cd";
			["throttleTime"] = 0;
			["time"] = 510.3;
			["timeRange"] = false;
			["timelineIndex"] = 74;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9e009107-97cd-99fe-b705-af00ad8f4e0f";
		};
	};
	[75] = {
	};
	[101] = {
	};
	[103] = {
	};
	[104] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.SaveCD.enabled = true\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Save CD";
			["throttleTime"] = 0;
			["time"] = 658.8;
			["timeRange"] = false;
			["timelineIndex"] = 104;
			["timerEndOffset"] = -10;
			["timerOffset"] = -15;
			["timerStartOffset"] = -12;
			["used"] = false;
			["uuid"] = "e5d59ad4-7a11-bee3-a4f0-533a6ae1c45c";
		};
	};
	[106] = {
	};
	[107] = {
		[1] = {
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
					["conditions"] = multiRefObjects[4];
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = true;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = true;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "5f8a600c-0877-63f9-aede-4602dc51efd8";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyGNB.SkillSettings.SaveCD.enabled = false\
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
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "disable save cd";
			["throttleTime"] = 0;
			["time"] = 673.5;
			["timeRange"] = false;
			["timelineIndex"] = 107;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "c8fffebf-8260-3b67-870f-02663ab4f56a";
		};
	};
	[108] = {
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
			["uuid"] = "822e1874-9df6-6a71-8081-01a48e7b7ac2";
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
			["uuid"] = "ccd561a6-b1d6-984c-83f1-806f55ec3e3b";
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
			["uuid"] = "40bb6dec-f479-6557-8e88-a39c74ece232";
		};
	};
	[110] = {
	};
	[111] = {
	};
	[112] = {
	};
	[113] = {
	};
	[114] = {
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
			["uuid"] = "9c91d82c-8dcc-81ad-8942-62ef735aeb37";
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
			["uuid"] = "defec6b8-6361-e4e4-896f-ce668acaa4f8";
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
			["uuid"] = "c47d558d-10ff-9020-a4c7-01af93c6c4be";
		};
	};
	[117] = {
	};
	[118] = {
	};
	[119] = {
	};
	[120] = {
	};
	[121] = {
	};
	["mapID"] = 908;
	["version"] = 6;
}
return obj1
