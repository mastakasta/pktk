elder_sage = {
		cast=function(player,target)

			if(player.state==1) then
				player:sendMinitext("Spirits can't do that.")
				return
			end

			local a
			a=player.question
			player:sendAction(6,22)
			player:setAether("elder_sage",5000)
			player:broadcast(-1,"[Elder "..player.name.."]:"..player.question)
		
		end       
}



