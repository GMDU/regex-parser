data modify storage regex:api/match pattern set value "abc$"
data modify storage regex:api/match target set value "defabc"

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with the end of string."
data modify storage observer:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform

data modify storage regex:api/match target set value "abcdef"

function regex:api/match

data modify storage observer:test/it describes set value "An unsuccessful match with the end of string."
data modify storage observer:test/it expects set value {success:false, output:[]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform