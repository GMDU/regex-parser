data modify storage regex:parser target set from storage regex:api/match pattern
execute unless data storage regex:api/match flags{parse: false} run function regex:parser/init
execute if data storage regex:api/match flags{parse: false} run data modify storage regex:parser output set from storage regex:api/match pattern

data modify storage regex:match target set from storage regex:api/match target
data modify storage regex:match pattern set from storage regex:parser output
function regex:match/init

data modify storage regex:api/match output set from storage regex:match output
data modify storage regex:api/match success set from storage regex:match success

data remove storage regex:api/match flags
