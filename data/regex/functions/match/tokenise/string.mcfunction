data modify storage moxlib:api/string/to_array target set from storage regex:match target
function moxlib:api/string/to_array
data modify storage regex:match/iterate target append from storage moxlib:api/string/to_array output[]
