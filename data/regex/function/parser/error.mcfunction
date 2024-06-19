data remove storage regex:parser/private tokens
data modify storage regex:parser output set from storage regex:parser error
data modify storage regex:parser success set value false

tellraw @a [{"text": "Compile Error: ", "color": "red"}, {"nbt":"output", "storage": "regex:parser"}]
