data modify storage moxlib:api/string/to_array target set from storage regex:match target
function moxlib:api/string/to_array

data modify storage regex:match/iterate target set from storage moxlib:api/string/to_array output
data modify storage regex:match/iterate target prepend value "^s"
data modify storage regex:match/iterate target append value "^x"

data merge storage regex:match {success:false,matches:[],next:[],branches:[],output:[]}

function regex:match/iterate