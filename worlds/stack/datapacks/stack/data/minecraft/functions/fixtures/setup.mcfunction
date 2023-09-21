scoreboard objectives add _ dummy
scoreboard players reset *
scoreboard players set p _ -1

data modify storage _ a set value 0b
data modify storage _ b set value []
data modify storage _ c set value {}
