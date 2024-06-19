data modify storage regex:parser/private tokens set value []

execute unless data storage regex:parser target[0] run function regex:parser/tokenise/string
execute if data storage regex:api/match flags{process_pattern:false} run data modify storage regex:parser/private tokens set from storage regex:parser target
execute if data storage regex:parser target[0] unless data storage regex:api/match flags{process_pattern:false} run function regex:parser/tokenise/array
