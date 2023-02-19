data modify storage regex:parser/private tokens set value []

execute unless data storage regex:parser target[0] run function regex:parser/tokenise/string
execute if data storage regex:parser target[0] run function regex:parser/tokenise/array
