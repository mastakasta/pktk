housing53117 = {
	open=function(player)
	    if(player.side==0) then
                if(player.registry["house53116owner"]==1 or player.registry["house53116guest"]==1) then		
                	local obj=getObject(53,11,6)
			if(obj==8376) then
				setObject(53,11,6,8378)
				player:sendMinitext("Opened.")
			elseif(obj==8378) then
				setObject(53,11,6,8376)
				player:sendMinitext("Closed.")
			end
			
                else
                     player:sendMinitext("You are neither a guest nor the owner of this house.")
                end
	     end
	end
}
