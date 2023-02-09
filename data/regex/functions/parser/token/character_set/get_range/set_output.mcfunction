data modify storage regex:parser/private/get_range output append from storage regex:parser/private/get_range range[0][]

data remove storage regex:parser/private/get_range range[0]
execute if data storage regex:parser/private/get_range range[0] run function regex:parser/token/character_set/get_range/set_output
