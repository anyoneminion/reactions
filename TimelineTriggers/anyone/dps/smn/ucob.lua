-- Persistent Data
local multiRefObjects = {

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
