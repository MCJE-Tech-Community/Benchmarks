#> compound_value
# @benchmark

execute store result storage _ p int 1 run scoreboard players add p _ 1
function compound_value_push.macro with storage _

scoreboard players remove p _ 1
function compound_pop.macro with storage _
