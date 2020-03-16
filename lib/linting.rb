class Linter
  attr_reader :my_stack, :pairs
  def initialize
    @my_stack = []
    @pairs = { '{' => '}', '[' => ']', '(' => ')' }
  end

  def linter_pairs?(str)
    str.each_char do |c|
      @my_stack << c if @pairs.key?(c)
      return false if @pairs.key(c) && @pairs.key(c) != @my_stack.pop
    end
    @my_stack.empty?
  end
end
