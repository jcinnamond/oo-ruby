require "./booleans"
require "./numbers"

class Assert
  def initialize(desc)
    @desc = desc
  end

  def check(cond)
    If.new(cond)
      .then("OK: #{@desc}")
      .else("Failed: #{@desc}")
  end
end
