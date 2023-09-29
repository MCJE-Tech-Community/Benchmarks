tag @s add temp
summon text_display ~ ~ ~ {UUID:[I;0,0,0,9],text:'{"selector":"@e[tag=temp,limit=1]"}'}

data modify storage _: text set string entity 0-0-0-0-9 text 109 144
function main:string/11

kill 0-0-0-0-9
tag @s remove temp