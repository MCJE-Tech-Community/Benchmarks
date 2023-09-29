tag @s add temp
summon text_display ~ ~ ~ {UUID:[I;0,0,0,9],text:'{"selector":"@e[tag=temp,limit=1]"}'}

data modify storage _: text set from entity 0-0-0-0-9 text

kill 0-0-0-0-9
tag @s remove temp