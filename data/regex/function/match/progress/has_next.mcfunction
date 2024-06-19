execute if data storage regex:match/iterate target[] run data modify storage regex:match branches set from storage regex:match next
execute unless data storage regex:match/iterate target[] if data storage regex:match output[] run function regex:match/success
execute unless data storage regex:match/iterate target[] unless data storage regex:match output[] run function regex:match/reset