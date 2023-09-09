#> main:scores
# @benchmark

execute store result storage _: _.x int 1 run scoreboard players set _ x1 0
execute store result storage _: _.y int 1 run scoreboard players set _ y1 0
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 0
execute store result storage _: _.y int 1 run scoreboard players set _ y1 10
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 0
execute store result storage _: _.y int 1 run scoreboard players set _ y1 20
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 10
execute store result storage _: _.y int 1 run scoreboard players set _ y1 0
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 10
execute store result storage _: _.y int 1 run scoreboard players set _ y1 10
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 10
execute store result storage _: _.y int 1 run scoreboard players set _ y1 20
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 20
execute store result storage _: _.y int 1 run scoreboard players set _ y1 0
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 20
execute store result storage _: _.y int 1 run scoreboard players set _ y1 10
function main:scores-macro with storage _: _
execute store result storage _: _.x int 1 run scoreboard players set _ x1 20
execute store result storage _: _.y int 1 run scoreboard players set _ y1 20
function main:scores-macro with storage _: _