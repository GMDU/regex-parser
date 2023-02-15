**This library requires [Moxlib](https://modrinth.com/datapack/moxlib) to function.**

# GMDU Regex Library
**by Gears and Moxvallix.**

## Overview
This library provides a simple regular expression parser, working entirely in mcfunction.

### Current Features and Metacharacters
Character | Example              | Description
----------|----------------------|-----------------
 `[]`     | `[abc]`              | Character set
 `[^]`    | `[^abc]`             | Inverted character set
 `[x-y]`  | `[A-Z]`              | Character range
 `()`     | `(ab)`               | Group
 `.`      | `.`                  | Wildcard
 `\|`     | `(a\|b)`             | Or
 `^`      | `^abc`               | Beginning of string
 `$`      | `xyz$`               | End of string
 `?`      | `ab?`                | Zero or one of the preceding token
 `*`      | `ab*`                | Zero or more of the preceding token
 `+`      | `ab+`                | One or more of the preceding token
 `\`      | `\+`                 | Escape following character

If you need help creating your regex pattern, we recommend using [RegExr](https://regexr.com/).

*Not all features from RegExr are supported in our library, see table above.*

## Getting Started
This library uses a simple api. The string to match is given in `target`,
and the regex to match with is set in `pattern`. These are set in the storage,
`regex:api/match`

To run the match, run `function regex:api/match`.

### Example
```
data modify storage regex:api/match target set value "Hello, World!"
data modify storage regex:api/match pattern set value "[A-Za-z]+"
function regex:api/match
```
```
{
  success: 1b,
  output: ["H","e","l","l","o"]
}
```