data modify storage regex:utils/filter target set from storage regex:match instruction.value
data modify storage regex:utils/filter key set from storage regex:match current
function regex:utils/filter

data modify storage regex:match compare set value false
execute if data storage regex:match instruction{inverted:true} if data storage regex:utils/filter {output:true} run data modify storage regex:match compare set value true
execute unless data storage regex:match instruction{inverted:true} if data storage regex:utils/filter {output:false} run data modify storage regex:match compare set value true