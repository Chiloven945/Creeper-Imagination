execute as @a[scores={job=1},nbt={SelectedItem: {id: "minecraft:creeper_spawn_egg"}}] run function ci:loop/game/job/1/skill/1/1_decide
schedule function ci:loop/game/job/1/skill/1/1_trigger 2t append