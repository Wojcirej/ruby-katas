# Hex to bin

### Description
Takes a hexadecimal string as an argument. Returns the binary representation (without leading zeros) of the numerical value of the hexadecimal string.

#### Notes
* This string can contain upper or lower case characters and start with any amount of zeros.
* Author of this kata on codewars "disabled a few things.", so this solution might differ from one someone would expect... But it was interesting experience.
* This is just one of two functions one needed to implement to solve this kata. I've separated those for my convenience.

### Examples
```ruby
hex_to_bin("00F") # "1111"
hex_to_bin("5") # "101"
hex_to_bin("00000") # "0"
hex_to_bin('04D2') # '10011010010'
```

### Link to kata on codewars.com
https://www.codewars.com/kata/55d1b0782aa1152115000037
