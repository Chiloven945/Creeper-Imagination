#war创建
team add war
team modify war collisionRule never
team modify war color red
team modify war prefix {"text":"[战争中]★","color":"red"}
team modify war suffix {"text":"★","color":"red"}

#循环
schedule function ci:loop/team/war/add 1s append
