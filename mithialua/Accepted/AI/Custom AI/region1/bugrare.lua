bugrare = {
on_healed = function(mob, healer)
	mob_ai_basic.on_healed(mob, healer)
end,

on_attacked = function(mob, attacker)
	mob_ai_basic.on_attacked(mob, attacker)
end,
	
move = function(mob, target)
	mob_ai_basic.move(mob, target)
end,

attack=function(mob, target)
	mob_ai_basic.attack(mob, target)
end
}
