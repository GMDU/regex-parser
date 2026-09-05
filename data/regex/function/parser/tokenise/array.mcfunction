data modify storage regex:utils/to_array target set from storage regex:parser target[0]
function regex:utils/to_array
data modify storage regex:parser/private tokens append from storage regex:utils/to_array output[]

data remove storage regex:parser target[0]

execute if data storage regex:parser target[0] run function regex:parser/tokenise/array