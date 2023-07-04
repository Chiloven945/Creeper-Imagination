#peace创建
team add peace
team modify peace collisionRule never
team modify peace color gray
team modify peace friendlyFire false
team modify peace prefix {"text":"[空闲中]☆","color":"gray"}
team modify peace suffix {"text":"☆","color":"gray"}

#循环
schedule function ci:loop/team/peace/add 1t append
