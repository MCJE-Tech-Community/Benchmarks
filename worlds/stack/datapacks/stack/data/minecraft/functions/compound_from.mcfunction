#> compound_from
# @benchmark

execute store result storage _ p int 1 run scoreboard players add p _ 1
function compound_from_push.macro with storage _

scoreboard players remove p _ 1
function compound_pop.macro with storage _
