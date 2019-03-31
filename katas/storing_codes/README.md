# Storing codes

### Description
Create a class called Code that allows to store arbitrary "named code".

### Examples
```ruby
Code.green = '00FF00'
Code.red = 0xFF0000

Code.green # => known code, return exactly as spcified: '00FF00'
Code.red   # => known code, return exactly as spcified: 0xFF0000
Code.blue  # => unknown code, raise exception
```

### Link to kata on codewars.com
https://www.codewars.com/kata/54331f38cba5d99c17000568/
