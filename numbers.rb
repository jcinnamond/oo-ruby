require "./booleans"

class LessThanZero
  def pred
    self
  end

  def zero?
    False.new
  end
end

class NumberZero
  def succ
    Number.new(self)
  end

  def pred
    LessThanZero.new
  end

  def +(other)
    other
  end

  def ==(other)
    other.zero?
  end

  def zero?
    True.new
  end

  def inspect
    "<zero>"
  end
end

class Number
  attr_reader :pred

  def initialize(pred)
    @pred = pred
  end

  def succ
    Number.new(self)
  end

  def zero?
    False.new
  end

  def +(other)
    (@pred + other).succ
  end

  def ==(other)
    @pred == other.pred
  end

  def inspect
    @pred + "-"
  end
end
