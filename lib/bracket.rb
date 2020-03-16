require_relative '../lib/output'

class Bracket
  attr_reader :my_stack, :line, :close_error
  def initialize
    @my_stack = []
    @line = 1
    @close_error = false
  end

  def linter_pairs?(str)
    str.each_char do |c|
      @line += 1 if c == "\n"
      @my_stack << [@line, c] if c == '{'
      if @my_stack.empty? && c == '}'
        @close_error = true
        return false
      end
      @my_stack.pop if c == '}'
    end
    @my_stack.empty?
  end
end
