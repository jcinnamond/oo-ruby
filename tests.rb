require "./numbers"
require "./booleans"
require "./assert"

#
# Numbers
#

Zero = NumberZero.new
One = Zero.succ
Two = One.succ
Three = Two.succ
Four = Three.succ
Five = Four.succ
Six = Five.succ

puts Assert.new("1 + 1 = 2").check(One + One == Two)

# Multiplication
puts Assert.new("1 * 1 = 1").check(One * One == One)
puts Assert.new("2 * 3 = 6").check(Two * Three == Six)
puts Assert.new("5 * 0 = 0").check(Five * Zero == Zero)
puts Assert.new("0 * 5 = 0").check(Zero * Five == Zero)

# Subtraction
puts Assert.new("5 - 1 = 4").check(Five - One == Four)
puts Assert.new("5 - 0 = 5").check(Five - Zero == Five)
puts Assert.new("5 - 5 = 0").check(Five - Five == Zero)
puts Assert.new("0 - 0 = 0").check(Zero - Zero == Zero)
puts Assert.new("2 - 5 = <LessThanZero>").check(Two - Five == LessThanZero.new)

# Division
puts Assert.new("3 / 1 = 3").check(Three / One == Three)
puts Assert.new("6 / 3 = 2").check(Six / Three == Two)
puts Assert.new("2 / 5 = 0").check(Two / Five == Zero)


#
# Lists
#

require "./list"

list = List.new
list << Six
list << Two
list << Two
list << Three

puts Assert.new("List element 0 is Six").check(list[Zero] == Six)
puts Assert.new("List element 1 is Two").check(list[One] == Two)
puts Assert.new("List element 2 is Two").check(list[Two] == Two)
puts Assert.new("List element 3 is Three").check(list[Three] == Three)


#
# Map
#

require "./map"

map = Map.new
map[One] = Two
map[Two] = Four
map[Three] = Six

puts Assert.new("Map[One] is Two").check(map[One] == Two)
puts Assert.new("Map[Two] is Two").check(map[Two] == Four)
puts Assert.new("Map[Three] is Two").check(map[Three] == Six)
