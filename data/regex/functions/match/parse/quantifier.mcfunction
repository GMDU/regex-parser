execute if data storage regex:match instruction{quantifier:"exactly_one"} run function regex:match/parse/quantifier/exactly_one
execute if data storage regex:match instruction{quantifier:"zero_or_one"} run function regex:match/parse/quantifier/zero_or_one
execute if data storage regex:match instruction{quantifier:"zero_or_more"} run function regex:match/parse/quantifier/zero_or_more

execute unless data storage regex:match branch[] run data modify storage regex:match endpoint set value true