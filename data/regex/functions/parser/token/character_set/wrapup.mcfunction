execute unless data storage regex:parser error run data modify storage regex:parser/private temp set value {type: "character_set", value: [], quantifier: "exactly_one"}

execute unless data storage regex:parser error run data modify storage regex:parser/private temp.value set from storage regex:parser/private stack[-1]
execute unless data storage regex:parser error run data remove storage regex:parser/private stack[-1]

execute unless data storage regex:parser error run data modify storage regex:parser/private stack[-1][-1] append from storage regex:parser/private temp
