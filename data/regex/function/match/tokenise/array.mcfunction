data modify storage moxlib:api/string/to_array target set from storage regex:match target[0]
function moxlib:api/string/to_array
data modify storage regex:match/iterate target append from storage moxlib:api/string/to_array output[]

data remove storage regex:match target[0]

execute if data storage regex:match target[0] run function regex:match/tokenise/array
