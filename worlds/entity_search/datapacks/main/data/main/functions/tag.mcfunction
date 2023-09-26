#> main:copy-fail
# @benchmark

data modify storage _: _ set from storage _: b
execute store result score _ _ run data modify storage _: _[] set value 0f
execute unless score _ _ matches 0 run function main:pass