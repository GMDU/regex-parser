data modify storage regex:api/match pattern set value "abc$"
data modify storage regex:api/match target set value "defabc"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with the end of string."
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match target set value "abcdef"

function regex:api/match

data modify storage moxlib:test/it describes set value "An unsuccessful match with the end of string."
data modify storage moxlib:test/it expects set value {success:false, output:[]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform