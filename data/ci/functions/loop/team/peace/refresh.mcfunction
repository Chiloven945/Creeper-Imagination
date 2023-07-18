#刷新队伍
team remove peace
team add peace
team modify peace collisionRule never
team modify peace color gray
team modify peace friendlyFire false
team modify peace deathMessageVisibility never



#循环
schedule function ci:loop/team/peace/refresh 1s append
