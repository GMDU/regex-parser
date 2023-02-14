data modify storage regex:match output append from storage regex:match current

execute if data storage regex:match next[] run function regex:match/progress/has_next
execute unless data storage regex:match next[] run function regex:match/progress/missing_next

data modify storage regex:match next set value []