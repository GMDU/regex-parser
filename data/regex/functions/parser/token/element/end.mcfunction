data modify storage regex:parser/private stack[-1][-1] append value {type: "literal", quantifier: "exactly_one", value: "^x"}

scoreboard players set .found_token regex.parser.private 1