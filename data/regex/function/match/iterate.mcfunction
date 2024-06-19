data modify storage regex:match current set from storage regex:match/iterate target[0]
data remove storage regex:match/iterate target[0]

execute unless data storage regex:match branches[] run data modify storage regex:match branches set from storage regex:match pattern.value
function regex:match/branches
function regex:match/progress

execute if data storage regex:match/iterate target[] unless data storage regex:match {success:true} run function regex:match/iterate