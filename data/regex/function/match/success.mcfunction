data modify storage regex:match success set value true
execute if data storage regex:match {matched:true} run data modify storage regex:match output set from storage regex:match matches
execute if data storage regex:match {matched:false,endpoint:true} run data modify storage regex:match output set from storage regex:match matches