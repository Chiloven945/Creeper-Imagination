#刷新队伍
team remove war
team add war
team modify war collisionRule never
team modify war color red
team modify war seeFriendlyInvisibles false
team join war @a[scores={job=1..}]

#循环
schedule function ci:loop/team/war/refresh 1s append
