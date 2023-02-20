data modify storage regex:api/match pattern set value "a.*z"
data modify storage regex:api/match target set value "abczcczxf"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with a greedy wildcard."
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","c","z","c","c","z"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "a.*"
data modify storage regex:api/match target set value "abczf"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with a greedy wildcard that doesnt end."
data modify storage moxlib:test/it expects set value {success:true, output:["a","b","c","z","f"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output


function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "[A-Z]\\w+"
data modify storage regex:api/match target set value "Hi"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with a shortly lived greedy character set."
data modify storage moxlib:test/it expects set value {success:true, output:["H","i"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output


function moxlib:api/test/perform