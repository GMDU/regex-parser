data modify storage regex:parser output set value {type: "regex", value: []}
data modify storage regex:parser output.value set from storage regex:parser/private stack[-1]
