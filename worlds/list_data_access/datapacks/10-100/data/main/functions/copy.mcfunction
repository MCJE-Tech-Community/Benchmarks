#> main:copy
# @benchmark

execute store result storage a: macro.i int 1 run random value 0..9
function main:copy_macro with storage a: macro
execute if data storage b: d.010