data modify storage regex:utils/to_array output append string storage regex:utils/to_array target 0 1
data modify storage regex:utils/to_array target set string storage regex:utils/to_array target 1

execute unless data storage regex:utils/to_array {target: ""} run function regex:utils/to_array/iterate