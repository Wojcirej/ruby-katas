# First n Prime Numbers

### Description
A prime number is an integer greater than 1 that is only evenly divisible by itself and 1.

Write your own `Primes` class with class method `Primes.first(n)` that returns an array of the first n prime numbers.

NOTE: There were some problems with using `Prime` class in this kata on codewars (perhaps on purpose ;-) ), so this solution does not use it either. This solution contains [Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) implementation for selecting Prime numbers. It is used in tests though, generating expected results.

### Examples
```ruby
Primes.first(1)
# => [2]
Primes.first(2)
# => [2, 3]
Primes.first(5)
# => [2, 3, 5, 7, 11]
Primes.first(20).last(5)
# => [53, 59, 61, 67, 71]
```

### Link to kata on codewars.com
https://www.codewars.com/kata/535bfa2ccdbf509be8000113
