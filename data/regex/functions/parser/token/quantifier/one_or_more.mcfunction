data modify storage regex:parser/private temp set from storage regex:parser/private stack[-1][-1][-1].quantifier
execute unless data storage regex:parser/private {temp:"exactly_one"} run data modify storage regex:parser error set value 'Unexpected token "+". Cannot quantify already quantified element'

execute unless data storage regex:parser error run data modify storage regex:parser/private stack[-1][-1] append from storage regex:parser/private stack[-1][-1][-1]
execute unless data storage regex:parser error run data modify storage regex:parser/private stack[-1][-1][-1].quantifier set value "zero_or_more"

scoreboard players set .found_token regex.parser.private 1
