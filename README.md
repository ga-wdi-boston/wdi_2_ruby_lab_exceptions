## Ruby Exceptions

### Ways to handle errors in Ruby.


* Represents some kind of exceptional or error condition

	<p>It indicates that something has gone wrong.</p>

* Exceptions are raised.

* An exception is a special kind of object, an instance of the class Exception. Or it may be a descendant of that class.

* Ruby has some predefined classes - Exception and its children.
	![Exceptions](ruby_exceptions.jpg)


* By default, Ruby programs terminate when an exception occurs.

* It is possible to declare exception handlers.
	<p>An exception handler is a block of code that is executed if an exception occurs during the execution of some other block of code.</p>


* Raising an exception means:
	1. Stopping normal execution of the program.
	2. Tansferring the flow-of-control to the exception handling code.


### Cases where an Exception will be raised.

* Divide a number by Zero. __See demo__
* Open a file that doesn't exist.
* User enters the wrong type of input. __See demo__
* A method determines that an argument passed to is not correct. __See demo__
* Calling a method on an object that it does have. __See demo__
* Typing Control-C on the terminal while a Ruby program is Running. __See demo__
* RubyOnRails has many methods that can raise and exception. __See demo__
	* Invalid input from a form.
	* Saving an object to the Database that is not valid.

### Demo

Look at div_by_zero.rb. Notice how it raises a "Divide by Zero" exception.

Run it.
<code>
ruby div_by_zero.rb
</code>

Rescue the exception and show the exception attributes.

<code>
ruby div_by_zero_exception.rb
</code>

Do the above for:  

* argument_error.rb and argument_error_retry 
* raise_exceptions.rb  


## Lab (__Advanced__)

### Validate name and age.
1. Create a Person class with a name and an age.
2. Add code to allow the person name and age setters to only accept valid input. What exception should it raise if the argument values are NOT valid?
3. Write a command line utility that will prompt the user to create a valid person. Allow them to enter invalid input 3 times for the name and twice for the age. Exit out of the program if they get the name and age values wrong more than 3 and 2 times.

### Populate a set of people from data.
[
	{john: 44},
	{mary:, 33},
	{bill: 22},
	{harry: 44, 'male'},
	{sue: 26}
]

1. Given this above list of hash literals, create people by passing each hash to the Person.new method.
2. Ignore bad data, (hint: use rescue). Another words, don't let bad data break your program.
