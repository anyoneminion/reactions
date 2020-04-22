-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	[1] = {
		["actions"] = {
			[1] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "--- This code is from Nil's general reactions. I've only minorly changed it. Credits go entirely to Nil for this concept.\
\
if Player.job ~= 21 or Player.level < 58 then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 3552)\
local isActionAvailable = actionskill.cdmax - actionskill.cd < 1\
\
if isActionAvailable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- check regen buffs\
local hasRegen = false\
if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) then\
		hasRegen = true\
end\
\
if hasRegen and Player.hp.percent < 30 then\
		SallyWAR.HotBarConfig.Equilibrium.enabled = false \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 then\
SallyWAR.HotBarConfig.Equilibrium.enabled = false\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil",
				["allowInterrupt"] = false,
				["conditions"] = {
					[1] = 1,
					[2] = 2,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["luaReturnsAction"] = false,
				["name"] = "use if no weakness/brink",
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
			[2] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "--- This code is from Nil's general reactions. I've only minorly changed it. Credits go entirely to Nil for this concept.\
\
if Player.job ~= 21 or Player.level < 58 or Player.incombat == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 3552)\
local isActionAvailable = actionskill.cdmax - actionskill.cd < 1\
\
if isActionAvailable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- check regen buffs\
local hasRegen = false\
if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) then\
		hasRegen = true\
end\
\
if hasRegen and Player.hp.percent < 30 then\
		SallyWAR.HotBarConfig.Equilibrium.enabled = false \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 then\
SallyWAR.HotBarConfig.Equilibrium.enabled = false\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil",
				["allowInterrupt"] = false,
				["conditions"] = {
					[1] = 3,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["luaReturnsAction"] = false,
				["name"] = "dont if weak > 95s",
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
			[3] = {
				["aType"] = 4,
				["actionID"] = -1,
				["actionLua"] = "--- This code is from Nil's general reactions. I've only minorly changed it. Credits go entirely to Nil for this concept.\
\
if Player.job ~= 21 or Player.level < 58 or Player.incombat == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 3552)\
local isActionAvailable = actionskill.cdmax - actionskill.cd < 1\
\
if isActionAvailable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- check regen buffs\
local hasRegen = false\
if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) then\
		hasRegen = true\
end\
\
if hasRegen and Player.hp.percent < 30 then\
		SallyWAR.HotBarConfig.Equilibrium.enabled = false \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 then\
SallyWAR.HotBarConfig.Equilibrium.enabled = false\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil",
				["allowInterrupt"] = false,
				["conditions"] = {
					[1] = 4,
				},
				["endIfUsed"] = false,
				["gVar"] = "",
				["gVarIndex"] = 1,
				["gVarValue"] = 1,
				["ignoreWeaveRules"] = false,
				["luaReturnsAction"] = false,
				["name"] = "dont if brink > 95s",
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
				["buffCheckType"] = 2,
				["buffDuration"] = 0,
				["buffID"] = 43,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
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
			[2] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 2,
				["buffDuration"] = 0,
				["buffID"] = 44,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 1,
				["conditionLua"] = "",
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
			[3] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 3,
				["buffDuration"] = 95,
				["buffID"] = 43,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 2,
				["conditionLua"] = "",
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
			[4] = {
				["actionCDValue"] = 0,
				["actionID"] = -1,
				["buffCheckType"] = 3,
				["buffDuration"] = 95,
				["buffID"] = 44,
				["buffIDList"] = {
				},
				["category"] = 2,
				["comparator"] = 2,
				["conditionLua"] = "",
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
		["execute"] = "--- This code is from Nil's general reactions. I've only minorly changed it. Credits go entirely to Nil for this concept.\
\
if Player.job ~= 21 or Player.level < 58 or Player.incombat == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- if action on cooldown\
local actionskill = ActionList:Get(1, 3552)\
local isActionAvailable = actionskill.cdmax - actionskill.cd < 1\
\
if isActionAvailable == false then\
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
-- check regen buffs\
local hasRegen = false\
if  HasBuff(Player.id, 158) or HasBuff(Player.id, 150) or HasBuff(Player.id, 839) then\
		hasRegen = true\
end\
\
if hasRegen and Player.hp.percent < 30 then\
		SallyWAR.HotBarConfig.Equilibrium.enabled = false \
		self.eventConditionMismatch = true -- suppressing the log\
		self.used = true \
		return nil\
end\
\
if hasRegen == false and Player.hp.percent < 40 then\
SallyWAR.HotBarConfig.Equilibrium.enabled = false\
end\
\
self.eventConditionMismatch = true -- suppressing the log\
self.used = true\
return nil",
		["executeType"] = 1,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Nil's Equilibrium",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "9c5c6bf8-f542-6db3-a285-1fc22155277f",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 10,
		["execute"] = "SallyWAR.HotBarConfig.Shake.enabled = true\
SallyWAR.HotBarConfig.Provoke.enabled = true\
SallyWAR.HotBarConfig.Shirk.enabled = true\
SallyWAR.HotBarConfig.Reprisal.enabled = true\
SallyWAR.HotBarConfig.RawIntuition.enabled = true\
SallyWAR.HotBarConfig.Rampart.enabled = true\
SallyWAR.HotBarConfig.LowBlow.enabled = true\
SallyWAR.HotBarConfig.Vengeance.enabled = true\
SallyWAR.HotBarConfig.Holmgang.enabled = true\
SallyWAR.HotBarConfig.Thrill.enabled = true\
SallyWAR.HotBarConfig.Equilibrium.enabled = true\
SallyWAR.HotBarConfig.NascentFlash.enabled = true\
SallyWAR.HotBarConfig.InnerRelease.enabled = true\
SallyWAR.HotBarConfig.Onslaught.enabled = true\
SallyWAR.HotBarConfig.Sprint.enabled = true\
SallyWAR.HotBarConfig.Interject.enabled = true\
SallyWAR.HotBarConfig.ArmsLength.enabled = true\
SallyWAR.HotBarConfig.Upheaval.enabled = true\
self.used = true\
\
if Player.job ~= 21 then\
self.eventConditionMismatch = true\
self.used = true\
end\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset Hotbar on death",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "e8738461-c3dd-c0bb-9e54-79779f9dc7f5",
	},
	[3] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 9,
		["execute"] = "SallyWAR.HotBarConfig.Shake.enabled = true\
SallyWAR.HotBarConfig.Provoke.enabled = true\
SallyWAR.HotBarConfig.Shirk.enabled = true\
SallyWAR.HotBarConfig.Reprisal.enabled = true\
SallyWAR.HotBarConfig.RawIntuition.enabled = true\
SallyWAR.HotBarConfig.Rampart.enabled = true\
SallyWAR.HotBarConfig.LowBlow.enabled = true\
SallyWAR.HotBarConfig.Vengeance.enabled = true\
SallyWAR.HotBarConfig.Holmgang.enabled = true\
SallyWAR.HotBarConfig.Thrill.enabled = true\
SallyWAR.HotBarConfig.Equilibrium.enabled = true\
SallyWAR.HotBarConfig.NascentFlash.enabled = true\
SallyWAR.HotBarConfig.InnerRelease.enabled = true\
SallyWAR.HotBarConfig.Onslaught.enabled = true\
SallyWAR.HotBarConfig.Sprint.enabled = true\
SallyWAR.HotBarConfig.Interject.enabled = true\
SallyWAR.HotBarConfig.ArmsLength.enabled = true\
SallyWAR.HotBarConfig.Upheaval.enabled = true\
\
SallyWAR.SkillSettings.Opener.enabled = false\
SallyWAR.SkillSettings.InnerRelease.enabled = true\
SallyWAR.SkillSettings.Onslaught.enabled = true\
SallyWAR.SkillSettings.SaveCD.enabled = false\
SallyWAR.SkillSettings.Range.enabled = true\
SallyWAR.SkillSettings.RefreshEye.enabled = true\
SallyWAR.SkillSettings.Upheaval.enabled = true\
SallyWAR.SkillSettings.Infuriate.enabled = true\
SallyWAR.SkillSettings.UseAOE.enabled = true\
SallyWAR.SkillSettings.JumpRange.enabled = true\
-- SallyWAR.SkillSettings.Potion.enabled = true\
--- remove \"--\" from the above line to have it enable potions on wipe.\
self.used = true\
\
if Player.job ~= 21 then\
self.eventConditionMismatch = true\
self.used = true\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
		["luaReturnsAction"] = false,
		["name"] = "Reset Hotbar/QT on wipe",
		["throttleTime"] = 0,
		["time"] = 0,
		["timeRange"] = false,
		["timelineIndex"] = 0,
		["timeout"] = 5,
		["timerEndOffset"] = 0,
		["timerOffset"] = 0,
		["timerStartOffset"] = 0,
		["used"] = false,
		["uuid"] = "10c80885-5136-300c-977e-4259385c88f1",
	},
}
return obj1
