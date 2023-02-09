execute store result score .length regex.parser.private run data get storage regex:parser/private stack
execute if score .length regex.parser.private matches 2.. run data modify storage regex:parser error set value 'Expected ")", but got end of input'

execute unless data storage regex:parser error run data modify storage regex:parser output set value {type: "regex", value: []}
execute unless data storage regex:parser error run data modify storage regex:parser output.value set from storage regex:parser/private stack[-1]

execute if data storage regex:parser error run function regex:parser/error
