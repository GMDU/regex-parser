data modify storage regex:utils/filter target set from storage regex:parser/private/get_range range[0]
data modify storage regex:utils/filter key set from storage regex:parser/private/get_range start
function regex:utils/filter

execute if data storage regex:utils/filter {output:true} run data remove storage regex:parser/private/get_range range[0]
execute if data storage regex:utils/filter {output:true} run function regex:parser/token/character_set/get_range/find_start_array
