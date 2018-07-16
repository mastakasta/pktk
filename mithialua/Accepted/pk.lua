pk_trainer = {
click = async(function(player, npc)
	local t = {graphic = 0, color = 0}
	local menuOptions = {}
	
	player.npcGraphic = t.graphic
	player.npcColor = t.color
	player.dialogType = 1
	
	if (player.class == 0) then
		table.insert(menuOptions, "Mage")
	end
		
	local choice = player:menuString("Pick a loadout for PK!", menuOptions)
	
	if (choice == "Mage") then
		player:dialogSeq({t, "Mages are a path of extremely high single target damage and crowd control. Their ability to manipulate the enemies around them is unrivaled and their burst unmatched."}, 1)
		
		local spells = player:getSpells()
		local choice = player:menuString("Would you like to test Mage spells?", {"Yes", "No"})
		
		if (choice == "Yes") then

			if (player:canLearnSpell("incinerate"))  then
				player:addSpell("incinerate")
			end
			
			if (player:canLearnSpell("salve"))  then
				player:addSpell("salve")
			end
			
			if (player:canLearnSpell("devastate"))  then
				player:addSpell("devastate")
			end

			if (player:canLearnSpell("gather"))  then
				player:addSpell("gather")
			end

			if (player:canLearnSpell("electrocute"))  then
				player:addSpell("electrocute")
			end

			player:addItem("spring_mantle", 1)
			
			player:flushDuration(1)
			player:sendMinitext("You learned mage spells.")
		end
	end
	
end),

action = function(npc, player)

end
}