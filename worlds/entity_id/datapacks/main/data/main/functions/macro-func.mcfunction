tag @s add temp
summon text_display ~ ~ ~ {UUID:[I;0,0,0,9],text:'{"selector":"@e[tag=temp,limit=1]"}'}

function main:macro-macro with entity 0-0-0-0-9
data modify storage _: type set from storage _: text.hoverEvent.contents.type

kill 0-0-0-0-9
tag @s remove temp