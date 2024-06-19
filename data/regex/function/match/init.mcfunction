data modify storage regex:match/iterate target set value []

execute unless data storage regex:match target[0] run function regex:match/tokenise/string
execute if data storage regex:match target[0] unless data storage regex:api/match flags{process_target:false} run function regex:match/tokenise/array
execute if data storage regex:api/match flags{process_target:false} run data modify storage regex:match/iterate target set from storage regex:match target

data modify storage regex:match/iterate target prepend value "^s"
data modify storage regex:match/iterate target append value "^x"

data merge storage regex:match {success:false,required:false,matches:[],next:[],branches:[],branch:[],output:[]}
data remove storage regex:match instruction

function regex:match/iterate