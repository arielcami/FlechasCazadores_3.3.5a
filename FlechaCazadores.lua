local SCRIPT_ON = 1
local ANNOUNCE 	= 1

local arrows = {2512,2515,3030,3031,3464,9399,10579,11285,19316,18042,12654,28053,24417,
	30611,31949,24412,28056,33803,34581,32760,31737,41586,30319,41165,52021}

local allowedCreatureTypes = {1, 2, 3, 4, 5, 6, 7, 9}
-- 1=Bestia  2=Dragonante  3=Demonio  4=Elemental  5=Gigante  6=No-Muerto  7=Humanoide  9=Mecánico

	local function IS_ALLOWED_CREATURE_TYPE(NPC)
		local bool = false
		for i=1, #allowedCreatureTypes do
			if allowedCreatureTypes[i] == NPC:GetCreatureType() then 
				bool = true
			end		
		end
		return bool
	end

local function On_PvE_Kill (Event, Player, Npc)

	if SCRIPT_ON==1  then

		if Npc:IsWorldBoss() then return end 	--> No aplica en Bosses
									
		local LEVEL_DIFF = math.abs(Player:GetLevel() - Npc:GetLevel())

		if LEVEL_DIFF >= 5 then return end 	--> No te recompensa si el nivel del NPC es demasiado alto o demasiado bajo.

		if Player:GetClassMask() == 4 then --> Si es Cazador.

			local ELITE = Npc:IsElite()	

			if IS_ALLOWED_CREATURE_TYPE(Npc) then	--> Accede solo si la criatura es de tipo permitido.
				for i=1, #arrows do
					if Player:HasItem(arrows[i]) then 
						if ELITE then
							Player:AddItem(arrows[i], math.random(2,6))
						else
							Player:AddItem(arrows[i], math.random(1,3))
						end
						break
					end
				end
			end
		end	
	end
end
RegisterPlayerEvent(7, On_PvE_Kill)

local function OnLogin (E,P)
	if (P:GetClassMask()==4) and (SCRIPT_ON==1) and (ANNOUNCE==1) then
		P:SendBroadcastMessage('Los |cff36ff00Cazadores|r recuperan flechas de sus víctimas.') 
	end
end
RegisterPlayerEvent(3, OnLogin)
