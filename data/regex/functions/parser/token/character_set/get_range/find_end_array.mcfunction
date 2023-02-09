data modify storage moxlib:api/string/filter target set from storage regex:parser/private/get_range range[-1]
data modify storage moxlib:api/string/filter key set from storage regex:parser/private/get_range end
function moxlib:api/string/filter

execute if data storage moxlib:api/string/filter {output:true} run data remove storage regex:parser/private/get_range range[-1]
execute if data storage moxlib:api/string/filter {output:true} if data storage regex:parser/private/get_range range[-1] run function regex:parser/token/character_set/get_range/find_end_array
