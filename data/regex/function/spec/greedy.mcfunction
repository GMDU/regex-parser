data modify storage regex:api/match pattern set value "a.*z"
data modify storage regex:api/match target set value "abczcczxf"

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with a greedy wildcard."
data modify storage observer:test/it expects set value {success:true, output:["a","b","c","z","c","c","z"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform

data modify storage regex:api/match pattern set value "a.*"
data modify storage regex:api/match target set value "abczf"

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with a greedy wildcard that doesnt end."
data modify storage observer:test/it expects set value {success:true, output:["a","b","c","z","f"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output


function observer:api/perform

data modify storage regex:api/match pattern set value "[A-Z]\\w+"
data modify storage regex:api/match target set value "Hi"

function regex:api/match

data modify storage observer:test/it describes set value "A successful match with a shortly lived greedy character set."
data modify storage observer:test/it expects set value {success:true, output:["H","i"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output


function observer:api/perform