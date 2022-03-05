local function KILL(E,P,N)    
	if N:IsWorldBoss() then return end 		--> No aplica en Bosses

	local C, R, L = P:GetClassMask(), math.random(1,4), P:GetLevel()
	local EL, f_e, alg, resta = math.random(3,9), "|cffff9efcRecuperaste más flechas por muerte élite.","|cffff9efcRecuperaste algunas flechas."
	local resta, elite = (P:GetLevel() - N:GetLevel()), N:IsElite()

	if resta <= -10 then return end 		--> Si el mob te lleva 10 niveles o más, el script termina.

	if C==4 then  							--> Clase 4, Cazador.
		if resta <= 4 then
			if P:IsHonorOrXPTarget(N) then

		if P:HasItem(2512) and L <= 9 then if elite then P:AddItem(2512,EL) P:SendBroadcastMessage(f_e,0)
		else P:AddItem(2512,R) P:SendBroadcastMessage(alg,0) end

		elseif P:HasItem(2515) and L >=10 and L <=24 then 
		if elite then P:AddItem(2515,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(2515,R) P:SendBroadcastMessage(alg,0) end

		elseif P:HasItem(3030) and L >=25 and L <=39 then 
		if elite then P:AddItem(3030,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(3030,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(3464) and L >=25 and L <=39  then 
		if elite then P:AddItem(3464,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(3464,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(9399) and L >=35 and L <=39 then 
		if elite then P:AddItem(9399,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(9399,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(11285) and L >=40 and L <=54 then 
		if elite then P:AddItem(11285,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(11285,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(19316) and L >=51 and L <=59 then 
		if elite then P:AddItem(19316,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(19316,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(18042) and L >=52 and L <=59 then 
		if elite then P:AddItem(18042,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(18042,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(12654) and L ==54 then 
		if elite then P:AddItem(12654,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(12654,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(28053) and L >=55 and L <=64 then 
		if elite then P:AddItem(28053,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(28053,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(24417) and L >=61 and L <=68 then 
		if elite then P:AddItem(24417,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(24417,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(28056) and L >=65 and L <=74 then 
		if elite then P:AddItem(28056,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(28056,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(30611) and L >=66 and L <=74 then 
		if elite then P:AddItem(30611,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(30611,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(31949) and L >=68 and L <=76 then 
		if elite then P:AddItem(31949,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(31949,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(34581) and L >=70 and L <=79 then 
		if elite then P:AddItem(34581,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(34581,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(31737) and L >=70 and L <=79 then 
		if elite then P:AddItem(31737,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(31737,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(30319) and L >=70 and L <=80 then 
		if elite then P:AddItem(30319,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(30319,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(41165) and L >=71 and L <=80 then 
		if elite then P:AddItem(41165,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(41165,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(41586) and L >=75 and L <=80 then 
		if elite then P:AddItem(41586,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(41586,R) P:SendBroadcastMessage(alg,0) end

	elseif P:HasItem(52021)  and L >=80 then
		if elite then P:AddItem(52021,EL) P:SendBroadcastMessage(f_e,0)
			else P:AddItem(52021,R) P:SendBroadcastMessage(alg,0) end
		end
	else
		 P:SendBroadcastMessage('No puedes recuperar flechas de un objetivo que no te aporta XP.')	
	end
	else 
		P:SendBroadcastMessage('No puedes recuperar flechas de un objetivo con ese nivel.')	
		end
	end 
end
-----------------------------
local function OnLogin (E,P)
	if P:GetClassMask() == 4 then
	P:SendBroadcastMessage('|cff36ff00Cazadores|r pueden recuperar flechas de sus víctimas, pero no balas.') else return end
end
----------------------------
RegisterPlayerEvent(7, KILL)
RegisterPlayerEvent(3, OnLogin)
