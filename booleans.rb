class If
  def initialize(cond)
    @cond = cond
  end

  def then(value)
    @cond.then(value)
  end
end

class TrueResult
  def initialize(value)
    @value = value
  end

  def else(_)
    @value
  end
end

class True
  def then(value)
    TrueResult.new(value)
  end

  def inspect
    "<true>"
  end
end

class FalseResult
  def else(value)
    value
  end
end

class False
  def then(_)
    FalseResult.new
  end

  def inspect
    "<false>"
  end
end
