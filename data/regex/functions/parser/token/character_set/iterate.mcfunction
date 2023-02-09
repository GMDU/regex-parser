data modify storage regex:parser/private current_character set from storage regex:parser/private tokens[0]
data remove storage regex:parser/private tokens[0]
execute unless data storage regex:parser/private tokens[0] run data modify storage regex:parser/private next_character set value ""
data modify storage regex:parser/private next_character set from storage regex:parser/private tokens[0]

function regex:parser/token/character_set/parse_character

execute if data storage regex:parser error run function regex:parser/error

execute unless data storage regex:parser/private {current_character:"]"} if data storage regex:parser/private tokens[0] run function regex:parser/token/character_set/iterate
