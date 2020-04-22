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
		["eventType"] = 9,
		["execute"] = "SallyDRK.HotBarConfig.Provoke.enabled = true\
SallyDRK.HotBarConfig.Shirk.enabled = true\
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
SallyDRK.HotBarConfig.ArmsLength.enabled = true\
SallyDRK.HotBarConfig.LivingShadow.enabled = true\
SallyDRK.HotBarConfig.FloodOfShadow.enabled = true\
SallyDRK.HotBarConfig.EdgeOfShadow.enabled = true\
SallyDRK.HotBarConfig.Plunge.enabled = true\
SallyDRK.HotBarConfig.LimitBreak.enabled = true\
\
SallyDRK.SkillSettings.Opener.enabled = false\
SallyDRK.SkillSettings.Delirium.enabled = true\
SallyDRK.SkillSettings.LivingShadow.enabled = true\
SallyDRK.SkillSettings.SaveCD.enabled = false\
SallyDRK.SkillSettings.Range.enabled = true\
SallyDRK.SkillSettings.BloodWeapon.enabled = true\
SallyDRK.SkillSettings.CarveAndSpit.enabled = true\
SallyDRK.SkillSettings.AbyssalDrain.enabled = true\
SallyDRK.SkillSettings.UseAOE.enabled = true\
SallyDRK.SkillSettings.JumpRange.enabled = true\
SallyDRK.SkillSettings.SaltedEarth.enabled = true\
-- SallyDRK.SkillSettings.Potion.enabled = true\
--- remove \"--\" from the above line to have it enable potions on wipe.\
self.used = true\
\
if Player.job ~= 32 then\
self.eventConditionMismatch = true\
self.used = true\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
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
		["uuid"] = "dd236dc5-7267-26cc-aa6c-b31ef3abad67",
	},
	[2] = {
		["actions"] = {
		},
		["conditions"] = {
		},
		["enabled"] = true,
		["eventType"] = 10,
		["execute"] = "SallyDRK.HotBarConfig.Provoke.enabled = true\
SallyDRK.HotBarConfig.Shirk.enabled = true\
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
SallyDRK.HotBarConfig.ArmsLength.enabled = true\
SallyDRK.HotBarConfig.LivingShadow.enabled = true\
SallyDRK.HotBarConfig.FloodOfShadow.enabled = true\
SallyDRK.HotBarConfig.EdgeOfShadow.enabled = true\
SallyDRK.HotBarConfig.Plunge.enabled = true\
SallyDRK.HotBarConfig.LimitBreak.enabled = true\
self.used = true\
\
if Player.job ~= 32 then\
self.eventConditionMismatch = true\
self.used = true\
end\
\
",
		["executeType"] = 2,
		["lastUse"] = 0,
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
		["uuid"] = "6d180639-e778-d7ec-bfb6-cf30a446e1b6",
	},
}
return obj1
