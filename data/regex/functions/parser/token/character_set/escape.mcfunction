execute unless data storage regex:parser/private tokens[0] run data modify storage regex:parser error set value 'Unexpected token "\\". Expected escapable character, but got end of input'

data modify storage regex:parser/private stack[-1] append from storage regex:parser/private tokens[0]
data remove storage regex:parser/private tokens[0]

scoreboard players set .found_character regex.parser.private 1
