data modify storage regex:parser/private/character_set current_character set from storage regex:parser/private tokens[0]
data remove storage regex:parser/private tokens[0]

execute if data storage regex:parser/private/character_set {current_character:"\\"} run function regex:parser/token/character_set/escape

execute if data storage regex:parser/private/character_set {current_character:"-"} run data modify storage regex:parser/private/character_set flatten append value "range"

execute unless data storage regex:parser/private/character_set {current_character:"\\"} unless data storage regex:parser/private/character_set {current_character:"]"} unless data storage regex:parser/private/character_set {current_character:"-"} run data modify storage regex:parser/private/character_set flatten append from storage regex:parser/private/character_set current_character

execute unless data storage regex:parser/private/character_set {current_character:"]"} if data storage regex:parser/private tokens[0] run function regex:parser/token/character_set/flatten
