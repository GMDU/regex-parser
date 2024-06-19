data modify storage regex:match compare set value false
function regex:match/parse/iterate
execute if data storage regex:match {compare:true} run data modify storage regex:match matched set value true
data modify storage regex:match halt set value false