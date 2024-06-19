data modify storage moxlib:api/string/filter target set from storage regex:match instruction.value
data modify storage moxlib:api/string/filter key set from storage regex:match current
function moxlib:api/string/filter

data modify storage regex:match compare set value false
execute if data storage regex:match instruction{inverted:true} if data storage moxlib:api/string/filter {output:true} run data modify storage regex:match compare set value true
execute unless data storage regex:match instruction{inverted:true} if data storage moxlib:api/string/filter {output:false} run data modify storage regex:match compare set value true