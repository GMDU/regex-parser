data modify storage regex:api/match pattern set value ["^","a","b","c"]
data modify storage regex:api/match target set value "abcdef"

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with an array as pattern"
data modify storage observer:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform

data modify storage regex:api/match pattern set value ["^","a","b","c"]
data modify storage regex:api/match target set value ["a","bc","de","f"]

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with an array as target"
data modify storage observer:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform

data modify storage regex:api/match pattern set value ["^","a","b","c"]
data modify storage regex:api/match target set value ["a","b","c","d","e","f"]
data modify storage regex:api/match flags set value {process_pattern: false, process_target: false}

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with no target or pattern processing"
data modify storage observer:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform

data modify storage regex:api/match pattern set value {type: "regex", value: [[{type: "literal", value: "a", quantifier: "exactly_one"},{type: "literal", value: "b", quantifier: "exactly_one"},{type: "literal", value: "c", quantifier: "exactly_one"}]]}
data modify storage regex:api/match target set value ["a","b","c","d","e","f"]
data modify storage regex:api/match flags set value {parse: false, process_target: false}

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with no parsing"
data modify storage observer:test/it expects set value {success:true, output:["a","b","c"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform
