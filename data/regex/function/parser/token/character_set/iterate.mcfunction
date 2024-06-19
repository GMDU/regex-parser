data modify storage regex:parser/private/character_set current_character set from storage regex:parser/private/character_set flatten[0]
data remove storage regex:parser/private/character_set flatten[0]
execute unless data storage regex:parser/private/character_set flatten[0] run data remove storage regex:parser/private/character_set next_character
data modify storage regex:parser/private/character_set next_character set from storage regex:parser/private/character_set flatten[0]

execute if data storage regex:parser/private/character_set {next_character:"range"} if data storage regex:parser/private/character_set flatten[1] run function regex:parser/token/character_set/range

execute unless data storage regex:parser/private/character_set {next_character:"range"} run data modify storage regex:parser/private/character_set result.value append from storage regex:parser/private/character_set current_character
execute if data storage regex:parser/private/character_set {next_character:"range"} unless data storage regex:parser/private/character_set flatten[1] run data modify storage regex:parser/private/character_set result.value append from storage regex:parser/private/character_set current_character

execute if data storage regex:parser/private/character_set flatten[0] run function regex:parser/token/character_set/iterate
