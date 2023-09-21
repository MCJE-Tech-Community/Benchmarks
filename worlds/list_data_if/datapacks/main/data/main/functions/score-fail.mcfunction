#> main:score-fail
# @benchmark

execute store result score 1 _ run data get storage _: b[0] 1000
execute store result score 2 _ run data get storage _: b[1] 1000
execute store result score 3 _ run data get storage _: b[2] 1000
execute unless score 1 _ matches 0 unless score 2 _ matches 0 unless score 3 _ matches 0 run function main:pass