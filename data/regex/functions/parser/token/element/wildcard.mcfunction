data modify storage regex:parser/private stack[-1] append value {type: "wildcard", quantifier: "exactly_one"}


scoreboard players set .found_character regex.parser.private 1
