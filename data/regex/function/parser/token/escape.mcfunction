execute unless data storage regex:parser/private tokens[0] run data modify storage regex:parser error set value 'Unexpected token "\\". Expected escapable character, but got end of input'

data modify storage moxlib:api/data/get target set from storage regex:parser/constants escape_presets
data modify storage moxlib:api/data/get key set value {character: ""}
data modify storage moxlib:api/data/get key.character set from storage regex:parser/private tokens[0]
function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:true} run data modify storage regex:parser/private stack[-1][-1] append from storage moxlib:api/data/get output.preset

execute unless data storage moxlib:api/data/get {success:true} run data modify storage regex:parser/private stack[-1][-1] append value {type: "literal", quantifier: "exactly_one", value: ""}
execute unless data storage moxlib:api/data/get {success:true} run data modify storage regex:parser/private stack[-1][-1][-1].value set from storage regex:parser/private tokens[0]
data remove storage regex:parser/private tokens[0]

scoreboard players set .found_token regex.parser.private 1
