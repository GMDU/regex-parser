scoreboard players set .found_character regex.parser.private 0

execute if data storage regex:parser/private {current_character:"\\"} run function regex:parser/token/character_set/escape

execute if score .found_character regex.parser.private matches 0 if data storage regex:parser/private {next_character:"-"} run function regex:parser/token/character_set/range

execute if score .found_character regex.parser.private matches 0 if data storage regex:parser/private {current_character:"]"} run function regex:parser/token/character_set/wrapup

execute if score .found_character regex.parser.private matches 0 run function regex:parser/token/character_set/literal

