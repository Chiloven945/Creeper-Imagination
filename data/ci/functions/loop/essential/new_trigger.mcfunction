execute as @a unless entity @s[scores={score=0..}] run function ci:loop/essential/new
schedule function ci:loop/essential/new_trigger 1t append