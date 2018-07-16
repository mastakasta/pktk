recipe_dark_platemail = {
	use = async(function(player)
	local opts = { }
	table.insert(opts,"Yes")
	table.insert(opts,"No")

	local t={graphic=convertGraphic(3052,"item"),color=0}
                player.npcGraphic=t.graphic
	        player.npcColor=t.color

	if(player.registry["armorer"]<18000) then
			player:sendMinitext("You are not skilled enough to learn this recipe [Skilled Armorer Required].")
			return
	end
	if(player.registry["recipedarkplatemail"]==1) then
			player:sendMinitext("You already how to forge a Dark Platemail.")
			return
	end

	player:dialogSeq({t,"Dark Platemail:\n\nA warrior Platemail infused by Darkness.",t,"Requires:\n\n-Skilled Armorer\n-Impenetrable Platemail\n-100 Soulstones\n-20 Copper bars\n-10 Iron bars\n-5 Silver bar\n-1 Gold bar\n-5000 coins\n\nto be forged."},1)
	local choice=player:menuString2("Do you wish to learn how to forge a Dark Armor Dress?\n((This action is definitive and will consume your recipe))",opts)
		if(choice=="Yes") then
		if(player:hasItem("recipe_dark_platemail",1)) then
			player.registry["recipedarkplatemail"]=1
			player.registry["totalrecipenumber"]=player.registry["totalrecipenumber"]+1
			player.registry["recipearmorsmith"]=player.registry["recipearmorsmith"]+1
			player:removeItem("recipe_dark_platemail",1)
			player:dialogSeq({t,"You now know how to forge a Dark Platemail."})
		end
		end	
	end)
}