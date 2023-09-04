#> main:d-base
# @benchmark

data modify storage _: _.a set value 1
execute as @e[scores={_=1}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 2
execute as @e[scores={_=2}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 3
execute as @e[scores={_=3}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 4
execute as @e[scores={_=4}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 5
execute as @e[scores={_=5}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 6
execute as @e[scores={_=6}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 7
execute as @e[scores={_=7}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 8
execute as @e[scores={_=8}] run _ "_"
execute as @e[scores={_=1}] run _ "_"
data modify storage _: _.a set value 9
execute as @e[scores={_=9}] run _ "_"
execute as @e[scores={_=1}] run _ "_"