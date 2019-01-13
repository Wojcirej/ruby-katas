# Count IP addresses

### Description
Write a function that accepts a starting and ending IPv4 address, and the number of IP addresses from `start` to `end`, excluding the `end` IP address.

All input to the function will be valid IPv4 addresses in the form of strings. The ending address will be at least one address higher than the starting address.

### Examples
```ruby
count_ip_addresses("10.0.0.0", "10.0.0.50")  #=>   50
count_ip_addresses("10.0.0.0", "10.0.1.0")   #=>  256
count_ip_addresses("20.0.0.10", "20.0.1.0")  #=>  246
```

### Link to kata on codewars.com
https://www.codewars.com/kata/526989a41034285187000de4
