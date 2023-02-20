data modify storage regex:version name set value "Regex Parser"

data modify storage regex:version major set value 0
data modify storage regex:version minor set value 1
data modify storage regex:version patch set value 1

tellraw @a {"nbt":"name","storage":"regex:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"regex:version","extra":[{"text":"."},{"nbt":"minor","storage":"regex:version"},{"text":".","extra":[{"nbt":"patch","storage":"regex:version"}]}]}]}]}
