data modify storage regex:api/match pattern set value "a(bc|de)f"
data modify storage regex:api/match target set value "123adef456"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match between options in a group."
data modify storage moxlib:test/it expects set value {success:true, output:["a","d","e","f"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "a(bc)+f"
data modify storage regex:api/match target set value "123abcbcfg"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with a greedy group."
data modify storage moxlib:test/it expects set value ["a","b","c","b","c","f"]
data modify storage moxlib:test/it receives set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "a(bc*)+f"
data modify storage regex:api/match target set value "123abccbfg"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with an even greedier group."
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","c","c","b","f"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "a(bd|c)*f"
data modify storage regex:api/match target set value "123abdccbdfg"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with a greedy group, with multiple options."
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","d","c","c","b","d","f"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform