#> main:predicate
# @benchmark

scoreboard players set _ x1 0
scoreboard players set _ y1 0
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 0
scoreboard players set _ y1 10
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 0
scoreboard players set _ y1 20
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 10
scoreboard players set _ y1 0
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 10
scoreboard players set _ y1 10
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 10
scoreboard players set _ y1 20
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 20
scoreboard players set _ y1 0
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 20
scoreboard players set _ y1 10
execute as @e[predicate=main:score] run function main:function
scoreboard players set _ x1 20
scoreboard players set _ y1 20
execute as @e[predicate=main:score] run function main:function