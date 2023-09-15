#> main:flag
# @benchmark

execute store result storage a: macro.i int 1 run random value 0..99
function main:flag_macro with storage a: macro
execute if data storage a: d[{_:1b}].010