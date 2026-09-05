data modify storage regex:utils/to_array target set from storage regex:parser target
function regex:utils/to_array
data modify storage regex:parser/private tokens append from storage regex:utils/to_array output[]
