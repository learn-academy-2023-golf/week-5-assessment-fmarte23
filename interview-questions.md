# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. Compare and contrast arrays and hashes in Ruby. Include at least two differences and two similarities.

Your answer: Hash is a collection of key and value pairs. Array is an ordered collection of objects. 

Researched answer: A Ruby hash is a container for unique keys and their corresponding values similar as the conatiner of words in a dictionary. We can implement operations on a hash using CRUD. Both hash and arrays can be nested. Moreover, arrays and hashes in Ruby serve different purposes based on how data is organized and accessed. Arrays are ordered collections with indexed elements, while hashes are collections of key-value pairs without a specific order. It is important to note however, both structures support iteration and the mixing of various data types. The choice between using an array or a hash depends on the nature of the data you want to store and access in your program.

2. What does it mean to implement a TTD workflow?

Your answer: It is how we conduct quality assurance on our code. We only write new code when automated test has failed. 

Researched answer: Test-driven development (TDD) is a software development practice that emphasizes writing tests before writing the actual code. It follows a cyclical process of writing a failing test, writing the minimum code to make the test pass, and then refactoring the code.

3. Why would super be used in a Ruby class?

Your answer: Super is used to call on the initialize method in the superclass. 

Researched answer: This method is used in the class to call on or invoke the super so that we may be able to access the instance variables within that method. By using super,  we can borrow these instance variables and further make modifications to the behavior of a method defined in its superclass.

4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?

Researched answer: Inheritance is a way of recycling code and creating new classes  or types of objects based on existing ones. In Ruby, inheritance allows a class (child class) to inherit or acquire the properties and methods of another class (parent class). JavaScript on the other hand uses prototypal inheritance where objects inherit properties and methods from other objects (prototypes). This helps reduce code duplication and makes it easier to maintain code. JavaScript and Ruby inheritance also have different mechanisms and syntax to support inheritance.  

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. PostgreSQL: PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and SQL compliance. It was originally named POSTGRES, referring to its origins as a successor to the Ingres database

2. Ruby on Rails: Ruby on Rails is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller framework, providing default structures for a database, a web service, and web pages.

3. Active Record: The active record is an object that wraps a row in the database table, encapsulates the database access and provides an interface to query, insert, update and delete data from the database, making it easier to work with databases in an application.
