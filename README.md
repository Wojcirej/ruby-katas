# Katas
My solutions of katas available on codewars.com gathered in one place
[![CodeWars](https://www.codewars.com/users/Wojcirej/badges/large)](https://www.codewars.com/users/Wojcirej/badges/large "My Honor Badge")
# Launch tests
`rspec`
# Solution generator
`ruby generator.rb <kata_name> [argument names]`
### Example of solution generator usage
`ruby generator.rb test_kata arg1 arg2`
will generate template for kata with `test_kata` name in `/katas/` directory.

In this case, file within `katas/{kata_name}/lib` directory named `{kata_name}.rb` will contain template for function named `test_kata` taking two arguments: `arg1` and `arg2`.

There will be also file template for tests in `/spec/katas/{kata_name}` directory, named `{kata_name}_spec.rb`. All hail convention over configuration! :)
