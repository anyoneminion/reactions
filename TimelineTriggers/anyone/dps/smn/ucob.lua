-- Persistent Data
local multiRefObjects = {
{};
} -- multiRefObjects
local obj1 = {
	[2] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if ACR_TensorRuin_Potion == true then\
data.PotsEnabled = true\
end\
\
---if you want a higher or lower speed, you can change 7 to anything you want. you will have to change on each timeline.\
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
			["time"] = 7;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "78d49e48-8a78-880b-bc03-521f25fd9296";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 7;
			["timeRange"] = false;
			["timelineIndex"] = 2;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "a9dcef98-b894-80ca-b04a-a8fadd63af4d";
		};
	};
	[6] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 27.6;
			["timeRange"] = false;
			["timelineIndex"] = 6;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "8d44dbb9-7d1e-0ff5-9deb-63731214341a";
		};
	};
	[10] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = true\
data.furthestContent = 1482\
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
			["name"] = "draw furthest";
			["throttleTime"] = 0;
			["time"] = 47.5;
			["timeRange"] = false;
			["timelineIndex"] = 10;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ce41f5cd-ef36-f8f0-9828-1d61b04b2c97";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = nil\
data.furthestContent = nil\
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
			["name"] = "stop drawing furthest";
			["throttleTime"] = 0;
			["time"] = 47.5;
			["timeRange"] = false;
			["timelineIndex"] = 10;
			["timerEndOffset"] = 0;
			["timerOffset"] = 6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b70c968d-f254-d02c-a80e-8fdef88ebaec";
		};
	};
	[13] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = true\
data.furthestContent = 1482\
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
			["name"] = "draw furthest";
			["throttleTime"] = 0;
			["time"] = 59.1;
			["timeRange"] = false;
			["timelineIndex"] = 13;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "43794003-0cba-3e16-84dd-716c1d53f441";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = nil\
data.furthestContent = nil\
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
			["name"] = "stop drawing furthest";
			["throttleTime"] = 0;
			["time"] = 59.1;
			["timeRange"] = false;
			["timelineIndex"] = 13;
			["timerEndOffset"] = 0;
			["timerOffset"] = 6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "2e3dc765-e49f-5845-9c9c-c4b73f80a694";
		};
	};
	[17] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 86.6;
			["timeRange"] = false;
			["timelineIndex"] = 17;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "fa9ff087-8a79-586f-a83b-c685637edf90";
		};
	};
	[18] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = true\
data.furthestContent = 1482\
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
			["name"] = "draw furthest";
			["throttleTime"] = 0;
			["time"] = 91.7;
			["timeRange"] = false;
			["timelineIndex"] = 18;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "8c62a63b-e2ed-347c-bc8e-dfdc127460af";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = nil\
data.furthestContent = nil\
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
			["name"] = "stop drawing furthest";
			["throttleTime"] = 0;
			["time"] = 91.7;
			["timeRange"] = false;
			["timelineIndex"] = 18;
			["timerEndOffset"] = 0;
			["timerOffset"] = 6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "441567ac-bc65-d5af-8d1c-8ec3b80c1ca0";
		};
	};
	[20] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = true\
data.furthestContent = 1482\
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
			["name"] = "draw furthest";
			["throttleTime"] = 0;
			["time"] = 106.4;
			["timeRange"] = false;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "167d52c3-6d8d-3299-9fd6-b28a22285321";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = nil\
data.furthestContent = nil\
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
			["name"] = "stop drawing furthest";
			["throttleTime"] = 0;
			["time"] = 106.4;
			["timeRange"] = false;
			["timelineIndex"] = 20;
			["timerEndOffset"] = 0;
			["timerOffset"] = 6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "2211f344-109f-f46b-b534-9f73916b5333";
		};
	};
	[26] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 136.6;
			["timeRange"] = false;
			["timelineIndex"] = 26;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "a32c69c2-d089-d92f-997d-1d6d8ed08700";
		};
	};
	[29] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 151.6;
			["timeRange"] = false;
			["timelineIndex"] = 29;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "de628e99-3258-3eff-bd0c-031b85a1d15b";
		};
	};
	[30] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = true\
data.furthestContent = 1482\
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
			["name"] = "draw furthest";
			["throttleTime"] = 0;
			["time"] = 153.8;
			["timeRange"] = false;
			["timelineIndex"] = 30;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "e2ce712c-0a80-8913-94c9-12bf47d9a46a";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = nil\
data.furthestContent = nil\
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
			["name"] = "stop drawing furthest";
			["throttleTime"] = 0;
			["time"] = 153.8;
			["timeRange"] = false;
			["timelineIndex"] = 30;
			["timerEndOffset"] = 0;
			["timerOffset"] = 6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "abac13a9-dddb-de5a-9a3a-ccbbb50068fe";
		};
	};
	[35] = {
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
						[2] = 3;
					};
					["detectionTargetNumber"] = 1;
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRuin_Demi";
					["gVarIndex"] = 6;
					["gVarValue"] = 2;
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
						[1] = 1;
						[2] = 3;
					};
					["detectionTargetNumber"] = 1;
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRuin_PetCD";
					["gVarIndex"] = 2;
					["gVarValue"] = 2;
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
					["targetSubType"] = "Nearest";
					["targetType"] = "Self";
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
					["detectionTargetNumber"] = 1;
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
					["gVarValue"] = 2;
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
					["targetSubType"] = "Nearest";
					["targetType"] = "Self";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["conditions"] = {
					};
					["contentid"] = 1482;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
					["filterTargetSubtype"] = "Nearest";
					["filterTargetType"] = "Self";
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
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 3;
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
					["hpValue"] = 5;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["minTargetPercent"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "5%";
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
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 3;
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
					["hpValue"] = 8;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["minTargetPercent"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "8%";
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
			["loop"] = true;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "toggle off before transition";
			["throttleTime"] = 0;
			["time"] = 184;
			["timeRange"] = true;
			["timelineIndex"] = 35;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -60;
			["used"] = false;
			["uuid"] = "8e40046e-e750-162e-b99f-ec92b14f87e8";
		};
		[2] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 184;
			["timeRange"] = false;
			["timelineIndex"] = 35;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "08d213ec-79fa-8d39-a46b-cc1f1d719f14";
		};
	};
	[38] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 199;
			["timeRange"] = false;
			["timelineIndex"] = 38;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "6043695b-20db-5ad8-8526-debaf2153d6b";
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 200;
			["timeRange"] = false;
			["timelineIndex"] = 39;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6f6f6e60-1b8d-4b3a-a05c-66303d4e7a26";
		};
	};
	[44] = {
	};
	[45] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 213.5;
			["timeRange"] = true;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "9dbf8ed0-0980-40a2-9aff-29fa082749e7";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local target = Player:GetTarget()\
ActionList:Get(11,3):Cast(0,0,0)\
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
					["name"] = "Place pet (new)";
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
			["name"] = "place pet";
			["throttleTime"] = 0;
			["time"] = 213.5;
			["timeRange"] = false;
			["timelineIndex"] = 45;
			["timerEndOffset"] = 0;
			["timerOffset"] = -8;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "899c83d6-36dd-a9f0-aa61-cbb85132d734";
		};
	};
	[49] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local party = TensorCore.getEntityGroupList(\"Party\")\
local duration = 5000\
local radius = 5\
local alphaMin = 0.3\
local alphaMax = 0.3\
local colorFill = {r = 1, g = 1, b = 0.4}\
local colorOutline = GUI:ColorConvertFloat4ToU32(colorFill.r, colorFill.g, colorFill.b, 1.5)\
local outlineThickness = 1.5\
local BuffID = 466\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
for id, ent in pairs(party) do\
    if TensorCore.hasBuff(ent, BuffID) and not data.entitiesAdded[ent.id] then\
        data.entitiesAdded[ent.id] = true\
        Argus.addTimedCircleFilled(duration, ent.pos.x, ent.pos.y, ent.pos.z, radius, 50, colorFill, alphaMin, alphaMax, 0, ent.id, colorOutline, outlineThickness)\
    end\
end\
\
self.used = table.size(data.entitiesAdded) >= 2\
if self.used then\
    data.entitiesAdded = nil\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
			["name"] = "draw thunder";
			["throttleTime"] = 0;
			["time"] = 235.1;
			["timeRange"] = true;
			["timelineIndex"] = 49;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "1593123b-4284-07fe-9628-fadc4c99660a";
		};
	};
	[56] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local party = TensorCore.getEntityGroupList(\"Party\")\
local duration = 5000\
local radius = 5\
local alphaMin = 0.3\
local alphaMax = 0.3\
local colorFill = {r = 1, g = 1, b = 0.4}\
local colorOutline = GUI:ColorConvertFloat4ToU32(colorFill.r, colorFill.g, colorFill.b, 1.5)\
local outlineThickness = 1.5\
local BuffID = 466\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
for id, ent in pairs(party) do\
    if TensorCore.hasBuff(ent, BuffID) and not data.entitiesAdded[ent.id] then\
        data.entitiesAdded[ent.id] = true\
        Argus.addTimedCircleFilled(duration, ent.pos.x, ent.pos.y, ent.pos.z, radius, 50, colorFill, alphaMin, alphaMax, 0, ent.id, colorOutline, outlineThickness)\
    end\
end\
\
self.used = table.size(data.entitiesAdded) >= 2\
if self.used then\
    data.entitiesAdded = nil\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
			["name"] = "draw thunder";
			["throttleTime"] = 0;
			["time"] = 260;
			["timeRange"] = true;
			["timelineIndex"] = 56;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "79cb76ef-3636-f0b6-96b1-920b87629fb1";
		};
	};
	[59] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local party = TensorCore.getEntityGroupList(\"Party\")\
local duration = 5000\
local radius = 5\
local alphaMin = 0.3\
local alphaMax = 0.3\
local colorFill = {r = 1, g = 1, b = 0.4}\
local colorOutline = GUI:ColorConvertFloat4ToU32(colorFill.r, colorFill.g, colorFill.b, 1.5)\
local outlineThickness = 1.5\
local BuffID = 466\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
for id, ent in pairs(party) do\
    if TensorCore.hasBuff(ent, BuffID) and not data.entitiesAdded[ent.id] then\
        data.entitiesAdded[ent.id] = true\
        Argus.addTimedCircleFilled(duration, ent.pos.x, ent.pos.y, ent.pos.z, radius, 50, colorFill, alphaMin, alphaMax, 0, ent.id, colorOutline, outlineThickness)\
    end\
end\
\
self.used = table.size(data.entitiesAdded) >= 2\
if self.used then\
    data.entitiesAdded = nil\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
			["name"] = "draw thunder";
			["throttleTime"] = 0;
			["time"] = 278.9;
			["timeRange"] = true;
			["timelineIndex"] = 59;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "897d3887-63ae-2411-b8ef-dc533fcc4498";
		};
	};
	[65] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local party = TensorCore.getEntityGroupList(\"Party\")\
local duration = 5000\
local radius = 5\
local alphaMin = 0.3\
local alphaMax = 0.3\
local colorFill = {r = 1, g = 1, b = 0.4}\
local colorOutline = GUI:ColorConvertFloat4ToU32(colorFill.r, colorFill.g, colorFill.b, 1.5)\
local outlineThickness = 1.5\
local BuffID = 466\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
for id, ent in pairs(party) do\
    if TensorCore.hasBuff(ent, BuffID) and not data.entitiesAdded[ent.id] then\
        data.entitiesAdded[ent.id] = true\
        Argus.addTimedCircleFilled(duration, ent.pos.x, ent.pos.y, ent.pos.z, radius, 50, colorFill, alphaMin, alphaMax, 0, ent.id, colorOutline, outlineThickness)\
    end\
end\
\
self.used = table.size(data.entitiesAdded) >= 2\
if self.used then\
    data.entitiesAdded = nil\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
			["name"] = "draw thunder";
			["throttleTime"] = 0;
			["time"] = 305.9;
			["timeRange"] = true;
			["timelineIndex"] = 65;
			["timerEndOffset"] = 20;
			["timerOffset"] = 0;
			["timerStartOffset"] = -20;
			["used"] = false;
			["uuid"] = "65ed9bff-a69a-3328-9132-89c92f098d9d";
		};
	};
	[66] = {
	};
	[73] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
			["name"] = "disable 15s";
			["throttleTime"] = 0;
			["time"] = 341;
			["timeRange"] = false;
			["timelineIndex"] = 73;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "2820d3e4-7eb1-6cfa-a969-28f5e8292c70";
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
			["name"] = "disable 12s";
			["throttleTime"] = 0;
			["time"] = 341;
			["timeRange"] = false;
			["timelineIndex"] = 73;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "34e76c00-8386-7a6d-a374-bc635dfd5944";
		};
		[3] = {
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
					["gVar"] = "ACR_TensorRuin_CD";
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
			["name"] = "disable 4s";
			["throttleTime"] = 0;
			["time"] = 341;
			["timeRange"] = false;
			["timelineIndex"] = 73;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ae5f5e7c-dd56-2af3-9e4e-b1d617d1b98f";
		};
		[4] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
						[1] = 1;
					};
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 3;
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
					["hpValue"] = 5;
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 341;
			["timeRange"] = false;
			["timelineIndex"] = 73;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "89ed32d4-a7ee-8998-b96e-7d6bb2bd0440";
		};
		[5] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = true\
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
			["name"] = "force instants";
			["throttleTime"] = 0;
			["time"] = 341;
			["timeRange"] = false;
			["timelineIndex"] = 73;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "bbdb2c57-515d-0185-930f-509abefea90a";
		};
	};
	[77] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "target boss";
			["throttleTime"] = 0;
			["time"] = 349.7;
			["timeRange"] = true;
			["timelineIndex"] = 77;
			["timerEndOffset"] = 0;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -10;
			["used"] = false;
			["uuid"] = "59cd324a-cdd9-7cea-afb8-9ee6bcf146a0";
		};
	};
	[82] = {
	};
	[83] = {
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
						[2] = 3;
					};
					["detectionTargetNumber"] = 1;
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRuin_Demi";
					["gVarIndex"] = 6;
					["gVarValue"] = 2;
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
						[1] = 1;
						[2] = 3;
					};
					["detectionTargetNumber"] = 1;
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRuin_PetCD";
					["gVarIndex"] = 2;
					["gVarValue"] = 2;
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
					["targetSubType"] = "Nearest";
					["targetType"] = "Self";
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
					["detectionTargetNumber"] = 1;
					["endIfUsed"] = false;
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
					["gVarValue"] = 2;
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
					["targetSubType"] = "Nearest";
					["targetType"] = "Self";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
				[1] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "";
					["conditionType"] = 2;
					["conditions"] = {
					};
					["contentid"] = 2612;
					["dequeueIfLuaFalse"] = false;
					["enmityValue"] = 0;
					["filterTargetSubtype"] = "Nearest";
					["filterTargetType"] = "Self";
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
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 3;
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
					["hpValue"] = 5;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["minTargetPercent"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "5%";
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
				[3] = {
					["actionCDValue"] = 0;
					["actionID"] = -1;
					["buffCheckType"] = 1;
					["buffDuration"] = 0;
					["buffID"] = -1;
					["buffIDList"] = {
					};
					["category"] = 1;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 2;
					["conditionLua"] = "";
					["conditionType"] = 3;
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
					["hpValue"] = 8;
					["inCombatType"] = 1;
					["inRangeValue"] = 0;
					["lastSkillID"] = -1;
					["localmapid"] = -1;
					["matchAnyBuff"] = false;
					["minTargetPercent"] = false;
					["mpType"] = 1;
					["mpValue"] = 0;
					["name"] = "8%";
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
			["loop"] = true;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "toggle off before transition";
			["throttleTime"] = 0;
			["time"] = 408.2;
			["timeRange"] = true;
			["timelineIndex"] = 83;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = -80;
			["used"] = false;
			["uuid"] = "6dd13f58-bf59-0901-acee-631661fd4122";
		};
	};
	[84] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 500;
			["timeRange"] = false;
			["timelineIndex"] = 84;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "dd912091-0b3f-7833-a4e4-f193cb7615f6";
		};
	};
	[87] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 511;
			["timeRange"] = true;
			["timelineIndex"] = 87;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "945235d4-add4-e4c4-a864-0cd1575dc23d";
		};
	};
	[88] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 3210 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(2000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Flare Breath";
			["throttleTime"] = 0;
			["time"] = 517;
			["timeRange"] = false;
			["timelineIndex"] = 88;
			["timerEndOffset"] = 0;
			["timerOffset"] = -2;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "915901fe-d23a-54fa-b0da-1c28bd211274";
		};
	};
	[91] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
			["name"] = "disable 15s";
			["throttleTime"] = 0;
			["time"] = 534;
			["timeRange"] = false;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6bd6fd42-8489-1660-ba7f-c9852f904934";
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
			["name"] = "disable 12s";
			["throttleTime"] = 0;
			["time"] = 534;
			["timeRange"] = false;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "8104f39c-ab9d-e5db-84b8-408af3b80334";
		};
		[3] = {
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
					["gVar"] = "ACR_TensorRuin_CD";
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
			["name"] = "disable 4s";
			["throttleTime"] = 0;
			["time"] = 534;
			["timeRange"] = false;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "7449ef8f-5b43-e6fe-8149-1a5ec0aec25c";
		};
		[4] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 534;
			["timeRange"] = false;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "00a44738-c1fb-4527-b6f7-3fd445db5e91";
		};
		[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deathflare";
			["throttleTime"] = 0;
			["time"] = 534;
			["timeRange"] = false;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "26d9eb51-ab72-1aa7-be3b-e93eacbe8bea";
		};
		[6] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = true\
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
			["name"] = "force instants";
			["throttleTime"] = 0;
			["time"] = 534;
			["timeRange"] = false;
			["timelineIndex"] = 91;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "811322db-be5b-610e-8b43-5fa44a045a98";
		};
	};
	[94] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 545;
			["timeRange"] = true;
			["timelineIndex"] = 94;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "cf8bac52-be45-a745-b661-c1d0c55e986c";
		};
	};
	[98] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local mt = TensorCore.getEntityByGroup(\"Main Tank\")\
		if mt then\
				Argus.addTimedCircleFilled(6000, mt.pos.x, mt.pos.y, mt.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 2500, mt.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
\
local ot = TensorCore.getEntityByGroup(\"Off Tank\")\
		if ot then\
				Argus.addTimedCircleFilled(6000, ot.pos.x, ot.pos.y, ot.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 2500, ot.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return Argus ~= nil";
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
					["category"] = 4;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
			["name"] = "draw tempest wings";
			["throttleTime"] = 0;
			["time"] = 552;
			["timeRange"] = false;
			["timelineIndex"] = 98;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "fe439f83-31a1-ab28-a4d8-f7065a478c9b";
		};
	};
	[99] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 3210 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Flare Breath";
			["throttleTime"] = 0;
			["time"] = 555.9;
			["timeRange"] = false;
			["timelineIndex"] = 99;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f9462100-af56-a9a0-9eaa-a72010bb315d";
		};
	};
	[102] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
			["name"] = "disable 15s";
			["throttleTime"] = 0;
			["time"] = 574;
			["timeRange"] = false;
			["timelineIndex"] = 102;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "fac3abc1-3133-a291-83c6-f212f749070b";
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
			["name"] = "disable 12s";
			["throttleTime"] = 0;
			["time"] = 574;
			["timeRange"] = false;
			["timelineIndex"] = 102;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "920537a5-3826-36d5-8c24-de177aaea755";
		};
		[3] = {
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
					["gVar"] = "ACR_TensorRuin_CD";
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
			["name"] = "disable 4s";
			["throttleTime"] = 0;
			["time"] = 574;
			["timeRange"] = false;
			["timelineIndex"] = 102;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6187eb2e-7d7d-3d61-a05f-c463887ae879";
		};
		[4] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 574;
			["timeRange"] = false;
			["timelineIndex"] = 102;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9fc8c104-29da-a065-a583-1da5bbda17ae";
		};
		[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deathflare";
			["throttleTime"] = 0;
			["time"] = 574;
			["timeRange"] = false;
			["timelineIndex"] = 102;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "bb750a73-e756-2844-bfe1-eb3635023e72";
		};
		[6] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = true\
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
			["name"] = "force instants";
			["throttleTime"] = 0;
			["time"] = 574;
			["timeRange"] = false;
			["timelineIndex"] = 102;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a5f455ed-74e6-70af-9b3c-c5b817e5e19f";
		};
	};
	[103] = {
	};
	[109] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 590;
			["timeRange"] = true;
			["timelineIndex"] = 109;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "215ec3fa-2c59-3738-b333-973c07696ce0";
		};
	};
	[110] = {
	};
	[111] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 3210 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(9000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Flare Breath";
			["throttleTime"] = 0;
			["time"] = 605;
			["timeRange"] = false;
			["timelineIndex"] = 111;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "862e4177-62d5-c8e1-a1a1-ad78e79cb518";
		};
	};
	[115] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
			["name"] = "disable 15s";
			["throttleTime"] = 0;
			["time"] = 624;
			["timeRange"] = false;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6aedbbae-ad6a-509d-ad11-076227c06f00";
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
			["name"] = "disable 12s";
			["throttleTime"] = 0;
			["time"] = 624;
			["timeRange"] = false;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "8da49180-9518-6f59-9ae4-c6cb5a2ee945";
		};
		[3] = {
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
					["gVar"] = "ACR_TensorRuin_CD";
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
			["name"] = "disable 4s";
			["throttleTime"] = 0;
			["time"] = 624;
			["timeRange"] = false;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "44e2ed91-d262-3b4d-8de0-e0b24c46544f";
		};
		[4] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 624;
			["timeRange"] = false;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "93cd7ed9-fec8-e409-a358-60d6c6a099e3";
		};
		[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deathflare";
			["throttleTime"] = 0;
			["time"] = 624;
			["timeRange"] = false;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "48a55e79-c2ba-ff6a-9873-c2fa72e4c965";
		};
		[6] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = true\
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
			["name"] = "force instants";
			["throttleTime"] = 0;
			["time"] = 624;
			["timeRange"] = false;
			["timelineIndex"] = 115;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "95d07fdf-a64a-4f2b-a948-f708d0ef0e02";
		};
	};
	[117] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local mt = TensorCore.getEntityByGroup(\"Main Tank\")\
		if mt then\
				Argus.addTimedCircleFilled(6000, mt.pos.x, mt.pos.y, mt.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 2500, mt.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
		end\
\
local ot = TensorCore.getEntityByGroup(\"Off Tank\")\
		if ot then\
				Argus.addTimedCircleFilled(6000, ot.pos.x, ot.pos.y, ot.pos.z, 5, 30, {r = 1, g = 0, b = 0}, 0.2, 0.2, 2500, ot.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return Argus ~= nil";
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
					["category"] = 4;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
					["clusterMinTarget"] = 1;
					["clusterRadius"] = 8;
					["clusterRange"] = 30;
					["comparator"] = 1;
					["conditionLua"] = "return AnyoneCore.Settings.DrawNaelQuotes == true";
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
			["name"] = "draw tempest wings";
			["throttleTime"] = 0;
			["time"] = 637.1;
			["timeRange"] = false;
			["timelineIndex"] = 117;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "78b9d9be-8a26-9497-954e-83e595ce721d";
		};
	};
	[119] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 640.1;
			["timeRange"] = true;
			["timelineIndex"] = 119;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "f038fef0-a725-c139-946a-694e001e9c69";
		};
	};
	[122] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 3210 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Flare Breath";
			["throttleTime"] = 0;
			["time"] = 651.4;
			["timeRange"] = false;
			["timelineIndex"] = 122;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a84a5468-0dfb-8cee-907f-b3a6c35b3e56";
		};
	};
	[124] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 3210 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Flare Breath";
			["throttleTime"] = 0;
			["time"] = 665.4;
			["timeRange"] = false;
			["timelineIndex"] = 124;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "c52235f8-77bc-6ea6-a8c8-60428d906b9d";
		};
	};
	[126] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
			["name"] = "disable 15s";
			["throttleTime"] = 0;
			["time"] = 675.4;
			["timeRange"] = false;
			["timelineIndex"] = 126;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "70ec8b32-8351-09ad-a7d0-d128e107079e";
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
			["name"] = "disable 12s";
			["throttleTime"] = 0;
			["time"] = 675.4;
			["timeRange"] = false;
			["timelineIndex"] = 126;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9002bec4-6b6c-e3a0-847d-a91a29f1e024";
		};
		[3] = {
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
					["gVar"] = "ACR_TensorRuin_CD";
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
			["name"] = "disable 4s";
			["throttleTime"] = 0;
			["time"] = 675.4;
			["timeRange"] = false;
			["timelineIndex"] = 126;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "5be28594-5e4f-fab5-9674-1027f1233e10";
		};
		[4] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 675.4;
			["timeRange"] = false;
			["timelineIndex"] = 126;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ab9d2f15-d844-14de-8af9-db41c36e32ae";
		};
		[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deathflare";
			["throttleTime"] = 0;
			["time"] = 675.4;
			["timeRange"] = false;
			["timelineIndex"] = 126;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "2292457e-4482-f973-9507-3bb7f41c65dc";
		};
		[6] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = true\
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
			["name"] = "force instants";
			["throttleTime"] = 0;
			["time"] = 675.4;
			["timeRange"] = false;
			["timelineIndex"] = 126;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "41dc9d92-7b94-95e6-a833-9ffbaf40329d";
		};
	};
	[128] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.drawHeavensfallKnockback = true\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
					["clusterMinTarget"] = 2;
					["clusterMintarget"] = 1;
					["clusterRadius"] = 10;
					["clusterRange"] = 25;
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
			["name"] = "draw kb";
			["throttleTime"] = 0;
			["time"] = 686.9;
			["timeRange"] = false;
			["timelineIndex"] = 128;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "d02b34cd-94af-3c6f-a48d-de4924a0068b";
		};
	};
	[130] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.drawHeavensfallKnockback = nil\
self.used = true";
					["allowInterrupt"] = false;
					["atomicPriority"] = false;
					["castAtMouse"] = false;
					["castPosX"] = 0;
					["castPosY"] = 0;
					["castPosZ"] = 0;
					["clusterMinTarget"] = 2;
					["clusterMintarget"] = 1;
					["clusterRadius"] = 10;
					["clusterRange"] = 25;
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
			["name"] = "turn off kb";
			["throttleTime"] = 0;
			["time"] = 688.9;
			["timeRange"] = false;
			["timelineIndex"] = 130;
			["timerEndOffset"] = 0;
			["timerOffset"] = 0.30000001192093;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "3da72e69-7c50-11ac-b615-f71a5a4e7379";
		};
	};
	[134] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 702.5;
			["timeRange"] = true;
			["timelineIndex"] = 134;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "603a3b24-4040-4562-bb26-d4c349e44a67";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local target = Player:GetTarget()\
ActionList:Get(11,3):Cast(0,0,0)\
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
					["name"] = "Place pet (new)";
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
			["name"] = "place pet";
			["throttleTime"] = 0;
			["time"] = 702.5;
			["timeRange"] = false;
			["timelineIndex"] = 134;
			["timerEndOffset"] = 0;
			["timerOffset"] = -6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "9e487af0-c894-e824-bff7-f1c3e41a3952";
		};
	};
	[136] = {
	};
	[137] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 3210 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(9000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Flare Breath";
			["throttleTime"] = 0;
			["time"] = 717.5;
			["timeRange"] = false;
			["timelineIndex"] = 137;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "04851b20-ab44-6084-bb66-ab9203fb8742";
		};
	};
	[141] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
			["name"] = "disable 15s";
			["throttleTime"] = 0;
			["time"] = 735.5;
			["timeRange"] = false;
			["timelineIndex"] = 141;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f9dabe0a-20bf-d199-b36a-73c2007b1a99";
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
			["name"] = "disable 12s";
			["throttleTime"] = 0;
			["time"] = 735.5;
			["timeRange"] = false;
			["timelineIndex"] = 141;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "29a63d3c-8201-bb1e-a876-09efde19b436";
		};
		[3] = {
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
					["gVar"] = "ACR_TensorRuin_CD";
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
			["name"] = "disable 4s";
			["throttleTime"] = 0;
			["time"] = 735.5;
			["timeRange"] = false;
			["timelineIndex"] = 141;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "f30d85f1-e7f6-a40d-b982-047d8c1fc111";
		};
		[4] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 735.5;
			["timeRange"] = false;
			["timelineIndex"] = 141;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "44ce4ac1-c074-5eb7-b880-19c73fa92008";
		};
		[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deathflare";
			["throttleTime"] = 0;
			["time"] = 735.5;
			["timeRange"] = false;
			["timelineIndex"] = 141;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "0a05dcf6-1ec1-d490-83a6-1f8ebd906459";
		};
		[6] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = true\
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
			["name"] = "force instants";
			["throttleTime"] = 0;
			["time"] = 735.5;
			["timeRange"] = false;
			["timelineIndex"] = 141;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "8dacbe92-208e-3f5d-aee6-11e08c1a35cb";
		};
	};
	[143] = {
	};
	[145] = {
	};
	[146] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 754.4;
			["timeRange"] = true;
			["timelineIndex"] = 146;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "f2390387-973d-ef9b-bf24-ab4ed20eb4b5";
		};
	};
	[151] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 3210 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(5000, ent.pos.x, ent.pos.y, ent.pos.z, 25, math.rad(90), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Flare Breath";
			["throttleTime"] = 0;
			["time"] = 781.4;
			["timeRange"] = false;
			["timelineIndex"] = 151;
			["timerEndOffset"] = 0;
			["timerOffset"] = -5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a15bba87-5ae8-05a8-a150-d581e676373b";
		};
	};
	[153] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
			["name"] = "disable 15s";
			["throttleTime"] = 0;
			["time"] = 791.4;
			["timeRange"] = false;
			["timelineIndex"] = 153;
			["timerEndOffset"] = 0;
			["timerOffset"] = -15;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "ba94ceb5-7c4a-cc94-be39-ab5fbe9d9733";
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
			["name"] = "disable 12s";
			["throttleTime"] = 0;
			["time"] = 791.4;
			["timeRange"] = false;
			["timelineIndex"] = 153;
			["timerEndOffset"] = 0;
			["timerOffset"] = -12;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "d004b9ac-b48f-db20-b472-fe50874e4780";
		};
		[3] = {
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
					["gVar"] = "ACR_TensorRuin_CD";
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
			["name"] = "disable 4s";
			["throttleTime"] = 0;
			["time"] = 791.4;
			["timeRange"] = false;
			["timelineIndex"] = 153;
			["timerEndOffset"] = 0;
			["timerOffset"] = -4;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "1b1fc80d-8d55-0488-b140-9138ade2cef7";
		};
		[4] = {
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 791.4;
			["timeRange"] = false;
			["timelineIndex"] = 153;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "025d861a-1400-df7c-acbe-d1a9b18f13c9";
		};
		[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
			};
			["enabled"] = true;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Deathflare";
			["throttleTime"] = 0;
			["time"] = 791.4;
			["timeRange"] = false;
			["timelineIndex"] = 153;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.5;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "55cfc374-9354-9605-ae47-163ba81364d9";
		};
		[6] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = true\
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
			["name"] = "force instants";
			["throttleTime"] = 0;
			["time"] = 791.4;
			["timeRange"] = false;
			["timelineIndex"] = 153;
			["timerEndOffset"] = 0;
			["timerOffset"] = -3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "6516be8f-b8cf-1281-8e65-1d5a5ad89852";
		};
	};
	[154] = {
	};
	[166] = {
	};
	[168] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["name"] = "target nearest add";
			["throttleTime"] = 0;
			["time"] = 844.9;
			["timeRange"] = true;
			["timelineIndex"] = 168;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "ebdab242-925b-7edf-ad20-04216ef95733";
		};
	};
	[170] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 852.9;
			["timeRange"] = false;
			["timelineIndex"] = 170;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "1b950e18-eb7f-86a5-9a42-15cbb2704724";
		};
	};
	[171] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = true\
data.furthestContent = 1482\
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
			["name"] = "draw furthest";
			["throttleTime"] = 0;
			["time"] = 856;
			["timeRange"] = false;
			["timelineIndex"] = 171;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "405c12f3-49e5-f7e4-8a71-1f2b9f3f78ff";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = nil\
data.furthestContent = nil\
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
			["name"] = "stop drawing furthest";
			["throttleTime"] = 0;
			["time"] = 856;
			["timeRange"] = false;
			["timelineIndex"] = 171;
			["timerEndOffset"] = 0;
			["timerOffset"] = 6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "31f47c2d-986a-b664-bcc1-2ae1e6ab29fd";
		};
	};
	[173] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent then             \
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
		if ent then             \
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
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
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
			["eventType"] = 3;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw twisters";
			["throttleTime"] = 1700;
			["time"] = 868.6;
			["timeRange"] = false;
			["timelineIndex"] = 173;
			["timeout"] = 5;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.7000000476837;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "8158e602-18ee-6e06-ac0d-88efb1b12710";
		};
	};
	[175] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent then             \
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
		if ent then             \
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
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
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
			["eventType"] = 3;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw twisters";
			["throttleTime"] = 1700;
			["time"] = 885.5;
			["timeRange"] = false;
			["timelineIndex"] = 175;
			["timeout"] = 5;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.7000000476837;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "2502e15c-7e02-f32f-816a-d89e47edbffd";
		};
	};
	[179] = {
		[1] = {
			["actions"] = {
			};
			["conditions"] = {
			};
			["enabled"] = true;
			["execute"] = "if Argus == nil then self.used = true return end\
\
if data.entitiesAdded == nil then\
    data.entitiesAdded = {}\
end\
\
local tank = TensorCore.getEntityByGroup(\"Main Tank\")\
for _,ent in pairs (EntityList(\"aggressive\")) do \
if ent and ent.contentid == 1482 and not data.entitiesAdded[ent.id] then\
data.entitiesAdded[ent.id] = true\
Argus.addTimedConeFilled(3000, ent.pos.x, ent.pos.y, ent.pos.z, 15, math.rad(120), 0, 30, {r = 1, g = 0, b = 0}, 0.1, 0.2, 0, ent.id, tank.id, GUI:ColorConvertFloat4ToU32(1, 0, 0, 1), 1.5)\
end\
end\
\
self.used = table.size(data.entitiesAdded) >= 1\
if self.used then\
    data.entitiesAdded = nil\
end";
			["executeType"] = 2;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "Draw Plummet";
			["throttleTime"] = 0;
			["time"] = 908.6;
			["timeRange"] = false;
			["timelineIndex"] = 179;
			["timerEndOffset"] = 5;
			["timerOffset"] = -3;
			["timerStartOffset"] = -5;
			["used"] = false;
			["uuid"] = "21e21b04-2e63-6efe-82aa-fff5d18ae1e3";
		};
	};
	[181] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = true\
data.furthestContent = 1482\
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
			["name"] = "draw furthest";
			["throttleTime"] = 0;
			["time"] = 917.7;
			["timeRange"] = false;
			["timelineIndex"] = 181;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "b6053ddd-8055-db79-88ac-8f2fdca9a12d";
		};
		[2] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "data.DrawFurthest = nil\
data.furthestContent = nil\
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
			["name"] = "stop drawing furthest";
			["throttleTime"] = 0;
			["time"] = 917.7;
			["timeRange"] = false;
			["timelineIndex"] = 181;
			["timerEndOffset"] = 0;
			["timerOffset"] = 6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "98b07ddd-f533-a53e-a6fd-1e03e4bce26a";
		};
	};
	[183] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent then             \
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
		if ent then             \
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
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
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
			["eventType"] = 3;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw twisters";
			["throttleTime"] = 1700;
			["time"] = 930.7;
			["timeRange"] = false;
			["timelineIndex"] = 183;
			["timeout"] = 5;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.7000000476837;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "a834ad61-4a00-eebe-a8f9-edfbe7a2f4dd";
		};
	};
	[185] = {
		[1] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "if Argus == nil then self.used = true end\
\
for id, ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do    \
		if ent then             \
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
		if ent then             \
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
					["category"] = 2;
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
					["channelCheckTimeRemain"] = 0;
					["channelCheckType"] = 1;
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
			["eventType"] = 3;
			["execute"] = "";
			["executeType"] = 1;
			["lastUse"] = 0;
			["loop"] = false;
			["luaNeedsWeaveWindow"] = false;
			["luaReturnsAction"] = false;
			["name"] = "draw twisters";
			["throttleTime"] = 1700;
			["time"] = 947.9;
			["timeRange"] = false;
			["timelineIndex"] = 185;
			["timeout"] = 5;
			["timerEndOffset"] = 0;
			["timerOffset"] = -1.7000000476837;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "469022f4-ae38-45bb-ba21-9a21053e2526";
		};
	};
	[190] = {
	};
	[193] = {
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
					["channelCheckSpellID"] = -1;
					["channelCheckSpellIDList"] = multiRefObjects[1];
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
			["time"] = 1245;
			["timeRange"] = true;
			["timelineIndex"] = 193;
			["timerEndOffset"] = 8;
			["timerOffset"] = 1.375;
			["timerStartOffset"] = -8;
			["used"] = false;
			["uuid"] = "0a250bed-5bfc-6ce2-8675-9ea90f16ef1d";
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
					["gVar"] = "ACR_TensorRuin_Demi";
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
					["gVar"] = "ACR_TensorRuin_CD";
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
					["gVar"] = "ACR_TensorRuin_PetCD";
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
					["variableTogglesType"] = 1;
				};
				[4] = {
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
					["gVar"] = "ACR_TensorRuin_DoTs";
					["gVarIndex"] = 9;
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
				[5] = {
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
					["gVar"] = "ACR_TensorRuin_Hotbar_Deathflare";
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
					["variableTogglesType"] = 2;
				};
				[6] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "ACR_TensorRuin_SlidecastForceHold = false\
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
			["name"] = "re-enable after";
			["throttleTime"] = 0;
			["time"] = 1245;
			["timeRange"] = false;
			["timelineIndex"] = 193;
			["timerEndOffset"] = 0;
			["timerOffset"] = 3;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "464b5304-3cc7-3778-a138-23340d778f44";
		};
		[3] = {
			["actions"] = {
				[1] = {
					["aType"] = 4;
					["actionID"] = -1;
					["actionLua"] = "local target = Player:GetTarget()\
ActionList:Get(11,3):Cast(0,0,0)\
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
					["name"] = "Place pet (new)";
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
			["name"] = "place pet";
			["throttleTime"] = 0;
			["time"] = 1245;
			["timeRange"] = false;
			["timelineIndex"] = 193;
			["timerEndOffset"] = 0;
			["timerOffset"] = -6;
			["timerStartOffset"] = 0;
			["used"] = false;
			["uuid"] = "4a47de2b-2fc9-05f3-8191-86e6f72dfae3";
		};
	};
	["mapID"] = 733;
	["version"] = 2;
}
return obj1
