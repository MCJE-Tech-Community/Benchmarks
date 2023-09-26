summon text_display ~ ~ ~ {UUID:[I;0,0,0,0],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,2],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,3],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,4],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,5],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,6],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,7],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}
summon text_display ~ ~ ~ {UUID:[I;0,0,0,8],Tags:["A"],Passengers:[{id:"marker",data:{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}},{id:"text_display"}]}

execute as @e[type=text_display,tag=A] store result score @s _ run data get entity @s UUID[3]

data modify storage _: _data set value [{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"},{0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9"}]