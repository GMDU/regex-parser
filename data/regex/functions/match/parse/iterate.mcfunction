data modify storage regex:match instruction set from storage regex:match branch[0]
data remove storage regex:match branch[0]

execute if data storage regex:match instruction{quantifier:"exactly_one"} run data merge storage regex:match {halt:true,required:true}

function regex:match/parse/type
execute if data storage regex:match {compare:true} run function regex:match/parse/quantifier

execute if data storage regex:match branch[] unless data storage regex:match {halt:true} run function regex:match/parse/iterate