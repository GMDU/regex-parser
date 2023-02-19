data modify storage regex:api/match pattern set value ["^","a","b","c"]
data modify storage regex:api/match target set value "abcdef"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with an array as pattern"
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value ["^","a","b","c"]
data modify storage regex:api/match target set value ["a","bc","de","f"]

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with an array as target"
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value ["^","a","b","c"]
data modify storage regex:api/match target set value ["a","b","c","d","e","f"]
data modify storage regex:api/match flags set value {process_pattern: false, process_target: false}

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with no target or pattern processing"
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform
