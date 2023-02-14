data modify storage regex:match/private target set from storage regex:match instruction.value
execute store success storage regex:match/private success byte 1 run data modify storage regex:match/private target set from storage regex:match current

data modify storage regex:match compare set value false
execute if data storage regex:match/private {success:false} run data modify storage regex:match compare set value true