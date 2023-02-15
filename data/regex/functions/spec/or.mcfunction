data modify storage regex:api/match pattern set value "abc|def|hij"
data modify storage regex:api/match target set value "hijdefabc"

function regex:api/match

data modify storage moxlib:test/it describes set value "A successful match between three options."
data modify storage moxlib:test/it expects set value ["h","i","j"]
data modify storage moxlib:test/it receives set from storage regex:api/match output

function moxlib:api/test/perform

data modify storage regex:api/match pattern set value "abc|def|hij"
data modify storage regex:api/match target set value "hideac"

function regex:api/match

data modify storage moxlib:test/it describes set value "An unsuccessful match between three options."
data modify storage moxlib:test/it expects set value false
data modify storage moxlib:test/it receives set from storage regex:api/match success

function moxlib:api/test/perform