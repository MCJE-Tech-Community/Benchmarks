data modify storage _: _ set string storage _: text 18 19
execute if data storage _: {_:"\""} run data modify storage _: type set string storage _: text 0 18
execute unless data storage _: {_:"\""} run function main:string/19
