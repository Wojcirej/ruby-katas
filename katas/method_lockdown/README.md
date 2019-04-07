# Method lockdown

### Description
You're a kata author trying to prevent code warriors from using Ruby's built in random number generators because you want them to implement their own.

Prevent the usage of random number generators by preventing calls to `rand` and `srand` in both the `Kernel` module and the `Random` class. Also prevent sneaky types from using `sample` and `shuffle` on arrays to get random numbers.

The test will require calls to these methods to throw an error.

Extra points for discussion about ways to call random even after running solutions which pass the test.

### Link to kata on codewars.com
https://www.codewars.com/kata/52788a9ae42add6b13000653/

### Disclaimer
I can guarantee you that this solution works. However, I've commented it to avoid serious consequences of monkey patching for my other solutions. :)
