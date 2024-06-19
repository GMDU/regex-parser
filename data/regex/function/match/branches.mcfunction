data modify storage regex:match branch set from storage regex:match branches[0]
data remove storage regex:match branches[0]

function regex:match/parse/init

execute if data storage regex:match branches[] run function regex:match/branches