require_relative '../lib/color'

class Output
  attr_reader :log
  def initialize
    @log = ''
    @color = Color.new
  end

  def closed_pair(line)
    str = "\n     I cannot continue with the linting."
    str += "\n     Trailing closed bracket in line:" +  @color.red(" #{line}\n")
    str
  end

  def all_good
    str = "\n     All good.\n"
    str += "     There seems to be no errors with your brackets.\n\n"
    str
  end

  def open_errors(arr)
    str = "\n     There is/are open bracket(s) that need to be checked.\n     Line(s):\n"
    arr.each do |x|
      str += @color.red("               #{x[0]}\n")
    end
    str
  end
end
