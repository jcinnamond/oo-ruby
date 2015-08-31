# Extreme Object-Oriented Ruby #

In my talk at [Full Stack Fest](http://fullstackfest.com/) I showed
how to recreate some fundamental Ruby functionality in a pure OO way,
building numbers, conditional logic and strings. However I didn't have
to show how to build everything and there are a number of interesting
features I didn't explore. This repo contains some fun challenges to
build some of the missing functionality.

The challenges are all pretty short. I don't know how long it will
take you to do them, but none of them require much code. They're
mostly tricky little brain teasers. I hope you have fun solving them.

Please create a Pull Request if you solve any/all of them, or if you
get stuck. I'm happy to give you some feedback and I'll update this
README to share any interesting solutions.

There is a file called test.rb that you can use to check your
solutions. If everything works then it will print "OK" a lot. If it
doesn't work then you might occasionally get weird errors.

And now ladies and gentlemen, without any further ado, I give you The
Challenges.

## Numbers ##

Numbers in a pure OO version of Ruby work by creating a class to
represent Zero, and another class to represent other positive integers
as the number of successors to Zero. This idea comes from the Italian
mathematician
[Guiseppe Peano](https://en.wikipedia.org/wiki/Giuseppe_Peano).

Performing addition using this approach requires us to count the
number of successors from Zero for one of the numbers, and call the
successor function on the other number that number of times. Another
way to put this is that we count down to Zero from one of the numbers,
counting up away from Zero the same number of steps for the other
number.

Implementing this in pure OO ruby uses two short methods: one on the
NumberZero and one on other numbers. The implementation is:

    class NumberZero
	  def +(other)
	    other
	  end
	end

    class Number
      def +(other)
	    (@pred + other).succ
      end
    end

### Challenge 1: implement multiplication for pure OO numbers ###
### Challenge 2: implement subtraction for pure OO numbers ###
### Challenge 3: implement division for pure OO numbers ###

### Challenge 4: implement pure OO negative numbers ###

## Lists ##

I didn't have time to talk about how to implement pure OO lists, so
these challenges are all about how to implement them. Like most of
these challenges, lists are easy to implement once you know how to do
them. Until that point they may prove to be illusive.

Implement solutions to this in a file called 'list.rb' if you want to
run the tests.

### Challenge 4: implement a list that allows you to append items ###

I imagine you would use the list as follows:

    list = List.new
    list.append("first") # or if you prefer: list << "first"
	list.append("second")

    list.inspect # => "first", "second",

This might seem a little daunting. If you don't know how to get
started then the following sub-challenges might help break the problem
down for you.

#### Challenge 4a: implement a single list item ####

This item should store a single value, and hold a reference to the
next item in the list.

#### Challenge 4b: implement a special 'EndOfList' class ####

This wouldn't do much (yet), but it represents the 'next item' when
there is no next item.

#### Challenge 4c: implement 'append' for 'EndOfList' ####
#### Challenge 4d: implement 'append' for a normal list item ####
#### Challenge 4e: implement a 'List' class ####

### Challenge 5: retrieve items from a list by index ###

I would expect to be able to do something like this:

    list = List.new
    list.append("first")
	list.append("second")

    list[Zero] # => "first"
    list[One] # => "second"
	list[Two] # => some indication that the index is invalid

I needed to understand numbers, number equality and conditional logic
- including the problem of delayed execution - to make this work.

## Hashes ##

Lists are really a special case of a hash, where the 'keys' are
numbers in sequential order. We can replace our list implementation
with a generic hash (or map, if you prefer) that allows us to store
and retrieve values using some arbitrary key.

Implement solutions in a file called 'map.rb' if you want to run the
tests. I expect to be able to use it similar to the following:

    map = Map.new
    map[One] = True.new
	map[False.new] = Seven

    map[One] # => True.new
    map[False.new] # => Seven

### Challenge 6: implement a Hash replacement ###
### Challenge 7: replace List with the Hash replacement ###
