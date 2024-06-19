data modify storage regex:parser/private stack[-1][-1] append value {type: "literal", quantifier: "exactly_one", value: ""}
data modify storage regex:parser/private stack[-1][-1][-1].value set from storage regex:parser/private current_token


scoreboard players set .found_token regex.parser.private 1
