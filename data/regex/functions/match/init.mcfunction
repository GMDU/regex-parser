data modify storage moxlib:api/string/to_array target set from storage regex:match target
function moxlib:api/string/to_array

data modify storage regex:match/iterate target set from storage moxlib:api/string/to_array output
data modify storage regex:match/iterate target prepend value "^s"
data modify storage regex:match/iterate target append value "^x"

data merge storage regex:match {success:false,required:false,matches:[],next:[],branches:[],branch:[],output:[]}
data remove storage regex:match instruction

function regex:match/iterate