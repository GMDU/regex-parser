data modify storage moxlib:api/string/to_array target set from storage regex:parser target[0]
function moxlib:api/string/to_array
data modify storage regex:parser/private tokens append from storage moxlib:api/string/to_array output[]

data remove storage regex:parser target[0]

execute if data storage regex:parser target[0] run function regex:parser/tokenise/array