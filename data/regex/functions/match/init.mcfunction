data modify storage moxlib:api/string/to_array target set from storage regex:match target
function moxlib:api/string/to_array

data modify storage regex:match/iterate target set from storage moxlib:api/string/to_array output

data modify storage regex:match success set value false
data modify storage regex:match output set value []
data modify storage regex:match next set value []
data modify storage regex:match branches set value []

function regex:match/iterate