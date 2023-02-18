data modify storage regex:parser/constants escape_presets set value []

data modify storage regex:parser/constants escape_presets append value {character: "w", preset: {type: "character_set", value: ["_","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0"], quantifier: "exactly_one", inverted: false}}

data modify storage regex:parser/constants escape_presets append from storage regex:parser/constants escape_presets[-1]
data modify storage regex:parser/constants escape_presets[-1].character set value "W"
data modify storage regex:parser/constants escape_presets[-1].preset.inverted set value true

data modify storage regex:parser/constants escape_presets append value {character: "d", preset: {type: "character_set", value: ["1","2","3","4","5","6","7","8","9","0"], quantifier: "exactly_one", inverted: false}}

data modify storage regex:parser/constants escape_presets append from storage regex:parser/constants escape_presets[-1]
data modify storage regex:parser/constants escape_presets[-1].character set value "D"
data modify storage regex:parser/constants escape_presets[-1].preset.inverted set value true

data modify storage regex:parser/constants escape_presets append value {character: "s", preset: {type: "character_set", value: [" "], quantifier: "exactly_one", inverted: false}}

data modify storage regex:parser/constants escape_presets[-1].preset.value append from storage moxlib:api/string/newline

data modify storage regex:parser/constants escape_presets append from storage regex:parser/constants escape_presets[-1]
data modify storage regex:parser/constants escape_presets[-1].character set value "S"
data modify storage regex:parser/constants escape_presets[-1].preset.inverted set value true

data modify storage regex:parser/constants escape_presets append value {character: "n", preset: {type: "literal", value: "", quantifier: "exactly_one"}}

data modify storage regex:parser/constants escape_presets[-1].preset.value set from storage moxlib:api/string/newline
