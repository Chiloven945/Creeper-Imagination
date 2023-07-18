#peace创建
team add peace
team modify peace collisionRule never
team modify peace color gray
team modify peace friendlyFire false

#循环
schedule function ci:loop/team/peace/add 1t append
