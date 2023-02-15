data modify storage regex:match/type branch set from storage regex:match/type group[0]
data remove storage regex:match/type group[0]

data modify storage regex:match/type branch append from storage regex:match branch[]
data modify storage regex:match branches append from storage regex:match/type branch

execute if data storage regex:match/type group[] run function regex:match/parse/type/group/iterate