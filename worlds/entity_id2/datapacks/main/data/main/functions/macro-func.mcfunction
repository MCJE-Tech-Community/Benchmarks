tag @s add temp
summon text_display ~ ~ ~ {UUID:[I;0,0,0,9],text:'{"selector":"@e[tag=temp,limit=1]"}'}

data modify storage _: in.text set from entity 0-0-0-0-9 text
function main:macro-macro with storage _: in
data modify storage _: type set from storage _: text.hoverEvent.contents.type

kill 0-0-0-0-9
tag @s remove temp