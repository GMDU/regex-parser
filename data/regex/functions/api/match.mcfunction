data modify storage regex:parser target set from storage regex:api/match pattern
function regex:parser/init

data modify storage regex:match target set from storage regex:api/match target
data modify storage regex:match pattern set from storage regex:parser output
function regex:match/init

data modify storage regex:api/match output set from storage regex:match output
data modify storage regex:api/match success set from storage regex:match success