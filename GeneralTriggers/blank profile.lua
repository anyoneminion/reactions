local tbl = 
{
	
	{
		actions = 
		{
		},
		conditions = 
		{
		},
		enabled = false,
		eventType = 1,
		execute = "data.handid = 1073742977\ndata.liquidid = 1073782238\nlocal hand = EntityList:Get(data.handid)\nlocal liquid = EntityList:Get(data.liquidid)\nlocal cTarget = Player:GetTarget()\nif cTarget.id == data.liquidid then\n\t\tif (hand.hp.percent - liquid.hp.percent) >= 3.5 and liquid.hp.percent >= 8 then\n\t\t\t\tPlayer:SetTarget(data.handid)\n\t\tend\nelseif cTarget.id == data.handid then\n\t\tif (liquid.hp.percent - hand.hp.percent) >= 3.5 or liquid.hp.percent <= 5 then\n\t\t\t\tPlayer:SetTarget(data.liquidid)\n\t\tend\nend\nself.used = true\nself.eventConditionMismatch = true",
		executeType = 2,
		lastUse = 0,
		luaReturnsAction = false,
		name = "test dummies",
		randomOffset = 0,
		randomTimeout = 3,
		throttleTime = 0,
		time = 0,
		timeRandomRange = false,
		timeRange = false,
		timelineIndex = 0,
		timeout = 5,
		timerEndOffset = 0,
		timerOffset = 0,
		timerStartOffset = 0,
		used = false,
		uuid = "5301dc3e-35d7-cf27-8a2b-fdf549286d5d",
	},
}



return tbl