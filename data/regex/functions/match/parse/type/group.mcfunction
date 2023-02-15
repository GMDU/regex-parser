data modify storage regex:match/type group set from storage regex:match instruction.value
execute if data storage regex:match/type group[] run function regex:match/parse/type/group/iterate
data merge storage regex:match {required:false,compare:true}