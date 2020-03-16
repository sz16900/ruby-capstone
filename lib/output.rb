require_relative '../lib/color'

class Output
  attr_reader :log
  def initialize
    @log = ''
    @color = Color.new
  end

  def closed_pair(line)
    str = "\nTrailing closed bracket in line: #{line}.\nI cannot continue with the linting.\n\n"
    str
  end

  def all_good
    str = "\nAll good.\nThere seems to be no errors with your brackets.\n\n"
    str
  end

  def open_errors(arr)
    str = "\nThere is/are open bracket(s) that need to be checked.\n\nLines:\n"
    arr.each do |x|
        str += "         #{x[0]}\n"
    end
    @color.magenta(str)
  end
end
