data modify storage regex:api/match pattern set value "abc|def|hij"
data modify storage regex:api/match target set value "hijdefabc"

function regex:api/match

data modify storage observer:test/it describes set value "A successful match between three options."
data modify storage observer:test/it expects set value {success:true, output:["h","i","j"]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform

data modify storage regex:api/match pattern set value "abc|def|hij"
data modify storage regex:api/match target set value "hideac"

function regex:api/match

data modify storage observer:test/it describes set value "An unsuccessful match between three options."
data modify storage observer:test/it expects set value {success:false, output:[]}
data modify storage observer:test/it receives.success set from storage regex:api/match success
data modify storage observer:test/it receives.output set from storage regex:api/match output

function observer:api/perform