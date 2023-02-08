scoreboard players set .found_character regex.parser.private 0

execute if data storage regex:parser/private {current_token:"."} run function regex:parser/token/element/wildcard
execute if data storage regex:parser/private {current_token:"^"} run function regex:parser/token/element/beginning

execute if data storage regex:parser/private {current_token:"("} run function regex:parser/token/group/open
execute if data storage regex:parser/private {current_token:")"} run function regex:parser/token/group/close

execute if data storage regex:parser/private {current_token:"|"} run function regex:parser/token/or


execute if data storage regex:parser/private {current_token:"?"} run function regex:parser/token/quantifier/zero_or_one
execute if data storage regex:parser/private {current_token:"*"} run function regex:parser/token/quantifier/zero_or_more
execute if data storage regex:parser/private {current_token:"+"} run function regex:parser/token/quantifier/one_or_more

execute if score .found_character regex.parser.private matches 0 run function regex:parser/token/element/literal
