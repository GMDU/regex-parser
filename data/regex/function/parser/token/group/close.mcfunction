execute store result score .length regex.parser.private run data get storage regex:parser/private stack

execute if score .length regex.parser.private matches ..1 run data modify storage regex:parser error set value 'Unexpected token ")", no groups to close'
execute unless data storage regex:parser error run data modify storage regex:parser/private temp set value {type: "group", value: [], quantifier: "exactly_one"}

execute unless data storage regex:parser error run data modify storage regex:parser/private temp.value set from storage regex:parser/private stack[-1]
execute unless data storage regex:parser error run data remove storage regex:parser/private stack[-1]

execute unless data storage regex:parser error run data modify storage regex:parser/private stack[-1][-1] append from storage regex:parser/private temp

scoreboard players set .found_token regex.parser.private 1
