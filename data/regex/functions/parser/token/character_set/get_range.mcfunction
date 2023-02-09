data modify storage regex:parser/private/get_range output set value []
data modify storage regex:parser/private/get_range range set from storage regex:parser/constants character_sets

function regex:parser/token/character_set/get_range/find_start_array
function regex:parser/token/character_set/get_range/find_start_character
function regex:parser/token/character_set/get_range/find_end_array
function regex:parser/token/character_set/get_range/find_end_character

function regex:parser/token/character_set/get_range/set_output
