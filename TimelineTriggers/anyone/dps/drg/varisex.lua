-- Persistent Data
local multiRefObjects = {
{};
} -- multiRefObjects
local obj1 = {
	[13] = {
	};
	[19] = {
		[1] = {
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
			["name"] = "Arm's Length";
			["throttleTime"] = 0;
			["time"] = 109.6;
			["timeRange"] = false;
			["timelineIndex"] = 19;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6866c876-5a10-c9d3-ab58-0bf464e8f034";
		};
	};
	[28] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDRG.SkillSettings.DragonSight.enabled = false\
SallyDRG.SkillSettings.BattleLitany.enabled = false\
SallyDRG.SkillSettings.LanceCharge.enabled = false\
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
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["isAreaTarget"] = false;
					["luaNeedsWeaveWindow"] = false;
					["luaReturnsAction"] = false;
					["name"] = "SallyDRG";
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
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return gACRSelectedProfiles[Player.job] == \"SallyDRG\"";
					["conditionType"] = 1;
					["conditions"] = {
					};
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = true;
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
					["name"] = "SallyDRG";
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
			["name"] = "Hold Buffs -20s";
			["throttleTime"] = 0;
			["time"] = 177.1;
			["timeRange"] = false;
			["timelineIndex"] = 28;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "828019ef-027a-ce91-b2f9-435847ee7b8e";
		};
	};
	[31] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDRG.SkillSettings.DragonSight.enabled = true\
SallyDRG.SkillSettings.BattleLitany.enabled = true\
SallyDRG.SkillSettings.LanceCharge.enabled = true\
SallyDRG.SkillSettings.Jumps.enabled = true\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return gACRSelectedProfiles[Player.job] == \"SallyDRG\"";
					["conditionType"] = 1;
					["conditions"] = {
					};
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = true;
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
					["name"] = "SallyDRG";
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
			["name"] = "Enable All";
			["throttleTime"] = 0;
			["time"] = 200.1;
			["timeRange"] = false;
			["timelineIndex"] = 31;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "8cbcc911-d6f9-802c-bb6e-0e2ee725c1ed";
		};
	};
	[34] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDRG.SkillSettings.DragonSight.enabled = true\
SallyDRG.SkillSettings.BattleLitany.enabled = true\
SallyDRG.SkillSettings.LanceCharge.enabled = true\
SallyDRG.SkillSettings.Jumps.enabled = true\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return gACRSelectedProfiles[Player.job] == \"SallyDRG\"";
					["conditionType"] = 1;
					["conditions"] = {
					};
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = true;
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
					["name"] = "SallyDRG";
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
			["name"] = "Enable All";
			["throttleTime"] = 0;
			["time"] = 269.1;
			["timeRange"] = false;
			["timelineIndex"] = 34;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b4da1849-1d16-baee-9ebc-2e4ba6e3ab44";
		};
	};
	[45] = {
	};
	[59] = {
		[1] = {
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
			["name"] = "Arm's Length";
			["throttleTime"] = 0;
			["time"] = 307.9;
			["timeRange"] = false;
			["timelineIndex"] = 59;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e0623430-2bf9-57f0-bc5c-acfc0690cb34";
		};
	};
	[73] = {
	};
	[89] = {
		[1] = {
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
			["name"] = "Arm's Length";
			["throttleTime"] = 0;
			["time"] = 585.9;
			["timeRange"] = false;
			["timelineIndex"] = 89;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "7ff63723-ae6f-3a4e-ae62-7f1e81f27114";
		};
	};
	[112] = {
	};
	[119] = {
		[1] = {
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
			["name"] = "Arm's Length";
			["throttleTime"] = 0;
			["time"] = 784.4;
			["timeRange"] = false;
			["timelineIndex"] = 119;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "3994f986-5cb1-ddb9-a3bb-fa92448112b0";
		};
	};
	[131] = {
		[1] = {
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
			["name"] = "Arm's Length";
			["throttleTime"] = 0;
			["time"] = 931.6;
			["timeRange"] = false;
			["timelineIndex"] = 131;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6f1bf8e3-2344-965c-9b57-8da8836b6d51";
		};
	};
	[146] = {
	};
	[155] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDRG.SkillSettings.DragonSight.enabled = false\
SallyDRG.SkillSettings.BattleLitany.enabled = false\
SallyDRG.SkillSettings.LanceCharge.enabled = false\
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
					["endIfUsed"] = false;
					["gVar"] = "";
					["gVarValue"] = 1;
					["ignoreWeaveRules"] = false;
					["isAreaTarget"] = false;
					["luaNeedsWeaveWindow"] = false;
					["luaReturnsAction"] = false;
					["name"] = "SallyDRG";
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
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return gACRSelectedProfiles[Player.job] == \"SallyDRG\"";
					["conditionType"] = 1;
					["conditions"] = {
					};
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = true;
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
					["name"] = "SallyDRG";
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
			["name"] = "Hold Buffs -20s";
			["throttleTime"] = 0;
			["time"] = 1200;
			["timeRange"] = false;
			["timelineIndex"] = 155;
			["timerEndOffset"] = 0;
			["timerOffset"] = -20;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "81a92910-bf4f-d042-8b87-f95094d912dd";
		};
	};
	[162] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "SallyDRG.SkillSettings.DragonSight.enabled = true\
SallyDRG.SkillSettings.BattleLitany.enabled = true\
SallyDRG.SkillSettings.LanceCharge.enabled = true\
SallyDRG.SkillSettings.Jumps.enabled = true\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return gACRSelectedProfiles[Player.job] == \"SallyDRG\"";
					["conditionType"] = 1;
					["conditions"] = {
					};
					["contentid"] = -1;
					["dequeueIfLuaFalse"] = true;
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
					["name"] = "SallyDRG";
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
			["name"] = "Enable All";
			["throttleTime"] = 0;
			["time"] = 1303;
			["timeRange"] = false;
			["timelineIndex"] = 162;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "fd3b8462-0c3b-9817-94e5-960e8e5e113a";
		};
	};
	[168] = {
	};
	[175] = {
		[1] = {
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
			["name"] = "Arm's Length";
			["throttleTime"] = 0;
			["time"] = 1394.6;
			["timeRange"] = false;
			["timelineIndex"] = 175;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "c3ca87ee-b1ec-9f7b-b324-6d78117e1658";
		};
	};
	[178] = {
	};
	[200] = {
	};
	[207] = {
		[1] = {
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
			["name"] = "Arm's Length";
			["throttleTime"] = 0;
			["time"] = 1573.6;
			["timeRange"] = false;
			["timelineIndex"] = 207;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ade1fe55-ef60-f6a3-a563-d582fe18a75d";
		};
	};
	["mapID"] = 913;
	["version"] = 1;
}
return obj1
