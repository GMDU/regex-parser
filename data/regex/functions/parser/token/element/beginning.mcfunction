data modify storage regex:parser/private stack[-1][-1] append value {type: "beginning", quantifier: "exactly_one"}


scoreboard players set .found_token regex.parser.private 1
