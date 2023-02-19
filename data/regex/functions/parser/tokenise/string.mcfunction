data modify storage moxlib:api/string/to_array target set from storage regex:parser target
function moxlib:api/string/to_array
data modify storage regex:parser/private tokens append from storage moxlib:api/string/to_array output[]
