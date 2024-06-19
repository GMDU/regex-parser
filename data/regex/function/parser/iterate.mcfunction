data modify storage regex:parser/private current_token set from storage regex:parser/private tokens[0]
data remove storage regex:parser/private tokens[0]

function regex:parser/token/parse_token

execute if data storage regex:parser error run function regex:parser/error

execute if data storage regex:parser/private tokens[0] run function regex:parser/iterate
