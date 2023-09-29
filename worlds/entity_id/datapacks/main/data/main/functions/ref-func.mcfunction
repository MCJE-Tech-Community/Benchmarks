tag @s add temp
summon text_display ~ ~ ~ {UUID:[I;0,0,0,9],text:'{"selector":"@e[tag=temp,limit=1]"}'}

kill 0-0-0-0-9
tag @s remove temp