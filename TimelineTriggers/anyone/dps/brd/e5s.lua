-- Persistent Data
local multiRefObjects = {
{};{};{};
} -- multiRefObjects
local obj1 = {
	[1] = {
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
\
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
			["time"] = 12;
			["timeRange"] = false;
			["timelineIndex"] = 1;
			["timerEndOffset"] = 0;
			["timerOffset"] = -11.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "31d110c0-b56b-e9f2-90dc-5674c5078a44";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_AOE";
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
			["name"] = "Disable AOE";
			["throttleTime"] = 0;
			["time"] = 12;
			["timeRange"] = false;
			["timelineIndex"] = 1;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "37872ee0-6d01-5d7a-a949-e36d1983a1da";
		};
	};
	[2] = {
	};
	[4] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
					["actionID"] = 3;
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
					["gVar"] = "ACR_TensorRequiem_Hotbar_Sprint";
					["gVarIndex"] = 16;
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
					["variableTogglesType"] = 2;
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.UseSprint == true";
					["conditionType"] = 1;
					["conditions"] = {
					};
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
					["minTargetPercent"] = false;
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
					["partyTargetType"] = "All";
					["rangeCheckSourceSubType"] = "Nearest";
					["rangeCheckSourceType"] = "Self";
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
			["time"] = 35.6;
			["timeRange"] = false;
			["timelineIndex"] = 4;
			["timerEndOffset"] = 0;
			["timerOffset"] = -9;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "d4b1bfc7-7469-dc3f-a84a-383b5f10d878";
		};
	};
	[7] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
						[4] = 4;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_Hotbar_Troubadour";
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
					["variableTogglesType"] = 2;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 7405;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1934;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffID"] = 1951;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1826;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
			["name"] = "Troubador";
			["throttleTime"] = 0;
			["time"] = 63.3;
			["timeRange"] = false;
			["timelineIndex"] = 7;
			["timerEndOffset"] = -0.33199999999999;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.33199999999999;
			["used"] = false;
			["uuid"] = "62a0b26a-7844-a741-bb64-389c4dda2739";
		};
	};
	[11] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Clouds = {}\
for id, ent in pairs(EntityList(\"\")) do\
		if not Clouds[id] and ent.contentid == 9282 then\
				Argus.addTimedCircleFilled(29600, ent.pos.x, ent.pos.y, ent.pos.z, 8, 35, {r = 1, g = 0, b = 0}, 0.1, 0.1, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 2)\
				Clouds[id] = true\
		end\
end\
self.used = table.size(Clouds) >= 4";
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
					["name"] = "drawing";
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return Argus ~= nil and AnyoneCore.Settings.DrawClouds == true";
					["conditionType"] = 1;
					["conditions"] = {
					};
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
					["minTargetPercent"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "Argus";
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "\
";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Clouds";
			["throttleTime"] = 0;
			["time"] = 84.8;
			["timeRange"] = true;
			["timelineIndex"] = 11;
			["timerEndOffset"] = 5;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "7529cfb5-a2fe-3804-8973-d2f7a4d43c9b";
		};
	};
	[14] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["gVar"] = "ACR_TensorRequiem_Hotbar_ArmsLength";
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
					["targetSubType"] = "Nearest";
					["targetType"] = "Self";
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
					["actionID"] = 7548;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
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
					["minTargetPercent"] = false;
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
			["name"] = "arm's length";
			["throttleTime"] = 0;
			["time"] = 96.2;
			["timeRange"] = false;
			["timelineIndex"] = 14;
			["timerEndOffset"] = -0.95;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.95;
			["used"] = false;
			["uuid"] = "6888c6f0-c6fa-9d46-974c-432f4aff4ea1";
		};
	};
	[18] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_BattleVoice";
					["gVarIndex"] = 6;
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
				[2] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_CD";
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
			["name"] = "hold bv/rs";
			["throttleTime"] = 0;
			["time"] = 127.4;
			["timeRange"] = false;
			["timelineIndex"] = 18;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "1f08e041-f9d7-4593-88c9-cb81456b25d3";
		};
	};
	[20] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_BattleVoice";
					["gVarIndex"] = 6;
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
					["aType"] = 2;
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
			["name"] = "unhold";
			["throttleTime"] = 0;
			["time"] = 128.9;
			["timeRange"] = false;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f8a05051-f8f4-527c-9ba8-647e6035ea01";
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
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
					["minTargetPercent"] = false;
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
			["time"] = 128.9;
			["timeRange"] = true;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "ec6f3b3a-3362-502c-a4b3-bd8e9168b7bc";
		};
	};
	[22] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
						[4] = 4;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_Hotbar_Troubadour";
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
					["variableTogglesType"] = 2;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 7405;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1934;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffID"] = 1951;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1826;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
			["name"] = "Troub";
			["throttleTime"] = 0;
			["time"] = 148.3;
			["timeRange"] = false;
			["timelineIndex"] = 22;
			["timerEndOffset"] = -0.37800000000001;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.37800000000001;
			["used"] = false;
			["uuid"] = "2a4a7c38-17bf-455d-ac2c-48f067e5799b";
		};
	};
	[35] = {
	};
	[37] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
					["actionID"] = 3;
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
					["gVar"] = "ACR_TensorRequiem_Hotbar_Sprint";
					["gVarIndex"] = 16;
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
					["variableTogglesType"] = 2;
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.UseSprint == true";
					["conditionType"] = 1;
					["conditions"] = {
					};
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
					["minTargetPercent"] = false;
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
					["partyTargetType"] = "All";
					["rangeCheckSourceSubType"] = "Nearest";
					["rangeCheckSourceType"] = "Self";
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
			["time"] = 262.3;
			["timeRange"] = false;
			["timelineIndex"] = 37;
			["timerEndOffset"] = 0;
			["timerOffset"] = -9;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "be18cead-ac7c-058a-b13c-f376bd13e1db";
		};
	};
	[38] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_BattleVoice";
					["gVarIndex"] = 6;
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
			["name"] = "hold bv";
			["throttleTime"] = 0;
			["time"] = 263.4;
			["timeRange"] = false;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "4f1186c7-5213-20af-9228-2615ecaa473b";
		};
	};
	[39] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_BattleVoice";
					["gVarIndex"] = 6;
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
					["aType"] = 2;
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
			["name"] = "unhold";
			["throttleTime"] = 0;
			["time"] = 265.6;
			["timeRange"] = false;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "02c15c05-0901-56ef-8950-c39a1f3816a6";
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
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
					["minTargetPercent"] = false;
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
			["time"] = 265.6;
			["timeRange"] = true;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "76a07290-8928-bff3-b56e-264a0fc5d82d";
		};
	};
	[41] = {
	};
	[45] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 297.8;
			["timeRange"] = true;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "249d83d0-592f-7984-a9b8-3be3ce8ab474";
		};
	};
	[46] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 301.6;
			["timeRange"] = true;
			["timelineIndex"] = 46;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "0cb7ce61-35f3-ec52-9d92-164187227549";
		};
	};
	[48] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 305.3;
			["timeRange"] = true;
			["timelineIndex"] = 48;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "ff2af38c-8b2a-ef1b-aadf-68b71526a5c9";
		};
	};
	[49] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 309;
			["timeRange"] = true;
			["timelineIndex"] = 49;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "ec365ba6-6ee8-9db0-a888-e21739fc095a";
		};
	};
	[50] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 312.7;
			["timeRange"] = true;
			["timelineIndex"] = 50;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "0350e718-7aa9-0145-8848-47b096290fa9";
		};
	};
	[51] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 316.4;
			["timeRange"] = true;
			["timelineIndex"] = 51;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "af86fd8e-f0c7-e760-bbfc-04ff777b9552";
		};
	};
	[52] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
						[4] = 4;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_Hotbar_Troubadour";
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
					["variableTogglesType"] = 2;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 7405;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1934;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffID"] = 1951;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1826;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
			["name"] = "Troub";
			["throttleTime"] = 0;
			["time"] = 317.4;
			["timeRange"] = false;
			["timelineIndex"] = 52;
			["timerEndOffset"] = -0.087999999999965;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.087999999999965;
			["used"] = false;
			["uuid"] = "6ecf4055-3ef9-f4f5-b9b1-97a170bc68c1";
		};
	};
	[53] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 320.1;
			["timeRange"] = true;
			["timelineIndex"] = 53;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "542570a8-7248-93fa-9760-9bcf6499eade";
		};
	};
	[54] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 323.8;
			["timeRange"] = true;
			["timelineIndex"] = 54;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "e5e5a3ac-3659-aa73-8dad-9dbfb4122751";
		};
	};
	[55] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 327.5;
			["timeRange"] = true;
			["timelineIndex"] = 55;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "ddab8316-08c7-048f-938b-9062e355ff26";
		};
	};
	[68] = {
	};
	[70] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
					["actionID"] = 3;
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
					["gVar"] = "ACR_TensorRequiem_Hotbar_Sprint";
					["gVarIndex"] = 16;
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
					["variableTogglesType"] = 2;
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.UseSprint == true";
					["conditionType"] = 1;
					["conditions"] = {
					};
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
					["minTargetPercent"] = false;
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
					["partyTargetType"] = "All";
					["rangeCheckSourceSubType"] = "Nearest";
					["rangeCheckSourceType"] = "Self";
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
			["time"] = 429.4;
			["timeRange"] = false;
			["timelineIndex"] = 70;
			["timerEndOffset"] = 0;
			["timerOffset"] = -9;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e9d773da-79e1-c2f7-bbde-11a53f34e822";
		};
	};
	[71] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_BattleVoice";
					["gVarIndex"] = 6;
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
			["name"] = "hold bv";
			["throttleTime"] = 0;
			["time"] = 430.6;
			["timeRange"] = false;
			["timelineIndex"] = 71;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e47a3a1c-1d90-7559-92ea-7f3140f5eff4";
		};
	};
	[72] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_BattleVoice";
					["gVarIndex"] = 6;
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
					["aType"] = 2;
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
			["name"] = "unhold";
			["throttleTime"] = 0;
			["time"] = 432.7;
			["timeRange"] = false;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "77492d55-7bda-ea2c-b30a-c2b5a171d340";
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
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
					["minTargetPercent"] = false;
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
			["time"] = 432.7;
			["timeRange"] = true;
			["timelineIndex"] = 72;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "92ec5543-acc9-8982-aba1-f5bdae681f28";
		};
	};
	[73] = {
	};
	[78] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "Clouds = {}\
for id, ent in pairs(EntityList(\"\")) do\
		if not Clouds[id] and ent.contentid == 9282 then\
				Argus.addTimedCircleFilled(29600, ent.pos.x, ent.pos.y, ent.pos.z, 8, 35, {r = 1, g = 0, b = 0}, 0.1, 0.1, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 2)\
				Clouds[id] = true\
		end\
end\
self.used = table.size(Clouds) >= 4";
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
					["name"] = "drawing";
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return Argus ~= nil and AnyoneCore.Settings.DrawClouds == true";
					["conditionType"] = 1;
					["conditions"] = {
					};
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
					["minTargetPercent"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "Argus";
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
					["targetName"] = "";
				};
			};
			["enabled"] = true;
			["execute"] = "\
";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Clouds";
			["throttleTime"] = 0;
			["time"] = 465.6;
			["timeRange"] = true;
			["timelineIndex"] = 78;
			["timerEndOffset"] = 5;
			["timerOffset"] = 0;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "d81630fd-2851-6938-939c-89e5a06a365d";
		};
	};
	[81] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
					["gVar"] = "ACR_TensorRequiem_Hotbar_ArmsLength";
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
					["targetSubType"] = "Nearest";
					["targetType"] = "Self";
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
					["actionID"] = 7548;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
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
					["minTargetPercent"] = false;
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
			["name"] = "arm's length";
			["throttleTime"] = 0;
			["time"] = 477;
			["timeRange"] = false;
			["timelineIndex"] = 81;
			["timerEndOffset"] = -0.70299999999997;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.70299999999997;
			["used"] = false;
			["uuid"] = "28dc4ca8-827a-d9fe-9c1f-b3b6ec63ed26";
		};
	};
	[83] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 502.6;
			["timeRange"] = true;
			["timelineIndex"] = 83;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "5e07d116-a34f-0516-b5ac-03219a3a6245";
		};
	};
	[84] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 506.4;
			["timeRange"] = true;
			["timelineIndex"] = 84;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "69bb0544-6321-9872-9860-531950e98a0f";
		};
	};
	[86] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 510.1;
			["timeRange"] = true;
			["timelineIndex"] = 86;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "f302a298-6a90-297b-bdf8-4badec165cf2";
		};
	};
	[87] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 513.8;
			["timeRange"] = true;
			["timelineIndex"] = 87;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "3e5a2bed-4c5e-9923-9a46-01bba6d2b6d8";
		};
	};
	[88] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 517.5;
			["timeRange"] = true;
			["timelineIndex"] = 88;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "f910e864-f707-6327-bf58-6ea51dcf7aca";
		};
	};
	[89] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 521.2;
			["timeRange"] = true;
			["timelineIndex"] = 89;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "5924e94f-ea9a-dd8f-9cb4-381e48a91c47";
		};
	};
	[90] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 2;
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
						[4] = 4;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRequiem_Hotbar_Troubadour";
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
					["variableTogglesType"] = 2;
				};
			};
			["conditions"] = {
				[1] = {
					["actionCDValue"] = 1;
					["actionID"] = 7405;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 4;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1934;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffID"] = 1951;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
					["buffCheckType"] = 2;
					["buffDuration"] = 0;
					["buffID"] = 1826;
					["buffIDList"] = multiRefObjects[2];
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[3];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
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
					["minTargetPercent"] = false;
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
			["name"] = "Troub";
			["throttleTime"] = 0;
			["time"] = 523.2;
			["timeRange"] = false;
			["timelineIndex"] = 90;
			["timerEndOffset"] = -0.075000000000045;
			["timerOffset"] = -4;
			["timerStartOffset"] = -0.075000000000045;
			["used"] = false;
			["uuid"] = "4a66f53e-9b29-9375-9cf6-69f29a3a09d7";
		};
	};
	[91] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 524.8;
			["timeRange"] = true;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "74419848-42a2-244b-8ad8-41727fc71ad4";
		};
	};
	[92] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 528.5;
			["timeRange"] = true;
			["timelineIndex"] = 92;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "a063abbb-ee67-65ee-9ab5-6c5d11afaf54";
		};
	};
	[93] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = false;
			["execute"] = "if Argus == nil then\
	self.used = true\
end\
\
for id, ent in pairs(TensorCore.entityList(\"\")) do\
    if TensorCore.hasBuff(ent, 2233) and AnyoneCore.Settings.DrawChainLightning == true then\
        Argus.addTimedCircleFilled(3200, ent.pos.x, ent.pos.y, ent.pos.z, 2, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 0, ent.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
    end\
end\
self.used = true";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw cl aoe";
			["throttleTime"] = 0;
			["time"] = 532.2;
			["timeRange"] = true;
			["timelineIndex"] = 93;
			["timerEndOffset"] = 2;
			["timerOffset"] = -2;
			["timerStartOffset"] = -2;
			["used"] = false;
			["uuid"] = "6a2263f9-9ad5-55ea-8855-5f746c82ecee";
		};
	};
	["mapID"] = 906;
	["version"] = 4;
}
return obj1
