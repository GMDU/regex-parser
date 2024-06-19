data modify storage regex:api/match pattern set value "[abc]+"
data modify storage regex:api/match target set value "abcdabc"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with a greedy character set."
data modify storage moxlib:test/it expects set value {success:true, output: ["a","b","c"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "[^abc]+"
data modify storage regex:api/match target set value "efghidb"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with an inverted character set."
data modify storage moxlib:test/it expects set value {success:true, output: ["e","f","g","h","i","d"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "\\w+"
data modify storage regex:api/match target set value "Hello, world!"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match with a character set preset."
data modify storage moxlib:test/it expects set value {success:true, output: ["H","e","l","l","o"]}
data modify storage moxlib:test/it receives.success set from storage regex:api/match success
data modify storage moxlib:test/it receives.output set from storage regex:api/match output

function moxlib:api/test/perform
