# Meta Mad Libs

### Description
Mad Libs is a game where you switch out words in a sentence.

For this kata, you will create a method `madlib(name)` for `String` objects that replaces every 3rd person singular pronoun (case insensitive) with `name`.

The pronouns are:
* He
* She
* It
* Her
* Him

Notes:
* Do not alter the case of the input strings in any case, except for the fact that the first letter of the returned string have to always be uppercase.
* Do not mutate the original object, return a fresh one.


### Examples
```ruby
"He is short".madlib("Bob")
=> "Bob is short"

"I gave it a round of applause".madlib("the show")
=> "I gave the show a round of applause"

"I high-fived her".madlib("your mom")
=> "I high-fived your mom"
```

### Link to kata on codewars.com
https://www.codewars.com/kata/59260882a475b5d3e2000028
