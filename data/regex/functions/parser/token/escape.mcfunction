data modify storage regex:parser/private stack[-1][-1] append value {type: "literal", quantifier: "exactly_one", value: ""}
data modify storage regex:parser/private stack[-1][-1][-1].value set from storage regex:parser/private tokens[0]
data remove storage regex:parser/private tokens[0]


scoreboard players set .found_character regex.parser.private 1
