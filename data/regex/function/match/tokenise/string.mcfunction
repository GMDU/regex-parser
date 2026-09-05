data modify storage regex:utils/to_array target set from storage regex:match target
function regex:utils/to_array
data modify storage regex:match/iterate target append from storage regex:utils/to_array output[]
