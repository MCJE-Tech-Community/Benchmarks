data modify storage _: _ set string storage _: text 23 24
execute if data storage _: {_:"\""} run data modify storage _: type set string storage _: text 0 23
execute unless data storage _: {_:"\""} run function main:string/24
