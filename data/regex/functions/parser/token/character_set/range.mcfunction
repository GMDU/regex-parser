data modify storage regex:parser/private/get_range start set from storage regex:parser/private/character_set current_character
data remove storage regex:parser/private/character_set flatten[0]
data modify storage regex:parser/private/get_range end set from storage regex:parser/private/character_set flatten[0]
data remove storage regex:parser/private/character_set flatten[0]

function regex:parser/token/character_set/get_range
data modify storage regex:parser/private/character_set result.value append from storage regex:parser/private/get_range output[]

scoreboard players set .found_character regex.parser.private 1
