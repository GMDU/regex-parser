data modify storage regex:parser/private/get_range temp set from storage regex:parser/private/get_range range[0][0]
execute store result score .different regex.parser.private run data modify storage regex:parser/private/get_range temp set from storage regex:parser/private/get_range start

execute if score .different regex.parser.private matches 1 run data remove storage regex:parser/private/get_range range[0][0]
execute if score .different regex.parser.private matches 1 run function regex:parser/token/character_set/get_range/find_start_character
