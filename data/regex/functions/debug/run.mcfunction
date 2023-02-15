function regex:parser/init

data modify storage regex:match pattern set from storage regex:parser output
function regex:match/init

tellraw @s {"storage":"regex:match","nbt":"output","interpret": true}