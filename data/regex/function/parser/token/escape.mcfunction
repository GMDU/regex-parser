execute unless data storage regex:parser/private tokens[0] run data modify storage regex:parser error set value 'Unexpected token "\\". Expected escapable character, but got end of input'

data modify storage regex:parser/private escape.character set from storage regex:parser/private tokens[0]
function regex:parser/token/escape/get

execute if data storage regex:parser/private escape.output run data modify storage regex:parser/private stack[-1][-1] append from storage regex:parser/private escape.output.preset

execute unless data storage regex:parser/private escape.output run data modify storage regex:parser/private stack[-1][-1] append value {type: "literal", quantifier: "exactly_one", value: ""}
execute unless data storage regex:parser/private escape.output run data modify storage regex:parser/private stack[-1][-1][-1].value set from storage regex:parser/private tokens[0]
data remove storage regex:parser/private tokens[0]

scoreboard players set .found_token regex.parser.private 1
