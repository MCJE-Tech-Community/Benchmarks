#> main:c-base
# @benchmark

data modify storage _: _.a set value 1
execute as @e[scores={_=1}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 2
execute as @e[scores={_=2}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 3
execute as @e[scores={_=3}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 4
execute as @e[scores={_=4}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 5
execute as @e[scores={_=5}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 6
execute as @e[scores={_=6}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 7
execute as @e[scores={_=7}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 8
execute as @e[scores={_=8}] at @s if entity @s run _ "_"
data modify storage _: _.a set value 9
execute as @e[scores={_=9}] at @s if entity @s run _ "_"