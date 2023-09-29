data modify storage _: _ set string storage _: text 25 26
execute if data storage _: {_:"\""} run data modify storage _: type set string storage _: text 0 25
execute unless data storage _: {_:"\""} run function main:string/26
