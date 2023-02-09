data modify storage regex:parser/private/character_set result set value {type: "character_set", value: [], quantifier: "exactly_one", inverted: false}
data modify storage regex:parser/private/character_set first_character set from storage regex:parser/private tokens[0]
execute if data storage regex:parser/private/character_set {first_character:"^"} run data modify storage regex:parser/private/character_set result.inverted set value true
execute if data storage regex:parser/private/character_set {first_character:"^"} run data remove storage regex:parser/private tokens[0]

data modify storage regex:parser/private/character_set flatten set value []

function regex:parser/token/character_set/flatten
execute unless data storage regex:parser/private/character_set {current_character:"]"} run data modify storage regex:parser error set value 'Expected "]", but got end of input'
function regex:parser/token/character_set/iterate

#a5f5fc13-0e4e-4a6b-ad80-f7e7a9069f13
summon marker ~ ~ ~ {UUID:[I; -1510605805, 240011883, -1384056857, -1459183853]}
data modify entity a5f5fc13-0e4e-4a6b-ad80-f7e7a9069f13 Tags set from storage regex:parser/private/character_set result.value
data modify storage regex:parser/private/character_set result.value set from entity a5f5fc13-0e4e-4a6b-ad80-f7e7a9069f13 Tags
kill a5f5fc13-0e4e-4a6b-ad80-f7e7a9069f13

data modify storage regex:parser/private stack[-1][-1] append from storage regex:parser/private/character_set result
scoreboard players set .found_token regex.parser.private 1
