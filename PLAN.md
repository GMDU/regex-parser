# Regex Parser

`/abc.+*?\.(abc)+[a-f]/`

`/(abc|123)./`

```
{
  "type": "regex",
  "value": [
    [
      {
        "type": "group",
        "value": [
          [
            {
              "type": "literal",
              "value": "a",
              "quantifier": "exactly_one"
            },
            {
              "type": "literal",
              "value": "b",
              "quantifier": "exactly_one"
            },
            {
              "type": "literal",
              "value": "c",
              "quantifier": "exactly_one"
            }
          ],
          [
            {
              "type": "literal",
              "value": "123",
              "quantifier": "exactly_one"
            }
          ]
        ],
        "quantifier": "exactly_one"
      },
      {
        "type": "wildcard",
        "quantifier": "exactly_one"
      }
    ]
  ]
}

{
  "type": "wildcard",
  "quantifier": "exactly_one"
}
```
\ escaped

Element  | Type          | Extra properties
---------|---------------|-----------------
.        | wildcard      |
()       | group         | value: regex[]
[] or [^]| character_set | allowed_characters: char[], inverted: boolean
|        | or            | list_of_regexes: regex[]
^        | beginning     |
default  | literal       | value: char

Character | Quantifier
----------|-----------
?         | zero_or_one
\*        | zero_or_more
default   | exactly_one


["a","b","x","y","z"]
[{},{},{}]

[:alnum:]

/abc.+d?/
a exactly_one
b exactly_one
c exactly_one
. exactly_one
. zero_or_more
d zero_or_one

```
abc123d

a false
b false
c false
1 false
2 true
3 true
d false

/a*b?.*c/

c
```

/(abc)+{3}/

`hello|^fs`

`/a*b?.*c/`
