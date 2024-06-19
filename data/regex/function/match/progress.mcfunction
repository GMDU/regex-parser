execute unless data storage regex:match {current:"^s"} unless data storage regex:match {current:"^x"} run data modify storage regex:match matches append from storage regex:match current
execute if data storage regex:match {current:"^x",required:false} run data modify storage regex:match endpoint set value true

execute if data storage regex:match {endpoint:true} run data modify storage regex:match output set from storage regex:match matches

execute if data storage regex:match next[] run function regex:match/progress/has_next
execute unless data storage regex:match next[] run function regex:match/progress/missing_next

data merge storage regex:match {endpoint:false,next:[],required:false,matched:false}