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


#### Divide by Zero

Look at div_by_zero.rb. Notice how it raises a "Divide by Zero" exception.

Run it.  

<code>
ruby div_by_zero.rb
</code>

Rescue the exception and show the exception attributes.

<code>
ruby div_by_zero_exception.rb
</code>


#### Retry _(Handling Exceptions)_  

Do the above for argument_error.rb and argument_error_retry 

### Lab

Create a ruby app to guess a number. Give the user 3 tries. Use __retry__

### Demo

#### Creating your own Exceptions.

Look at Person class with a PersonValid exception class.

###  Lab
Use this PersonValid exception class to validate people.

### Validate name and age.
1. Create a Person class with a name and an age.
2. Add a Person instance method to check if the name is has from 2 to 9 characters.
3. Add a Person instance method to check if the person has a valid age. Greater than 0 and less than 110. 


### Lab __(Advanced)__

#### Populate a set of people from data.
[
	{john: 44},
	{mary:, 33},
	{bill: 22},
	{harry: 44, 'male'},
	{sue: 26}
]

1. Given this above list of hash literals, create people by passing each hash to the Person.new method.
2. Ignore bad data, (hint: use rescue). Another words, don't let bad data break your program.
