require_relative '../lib/color'

class Output
  attr_reader :log
  def initialize
    @log = ''
    @color = Color.new
  end

  def closed_pair(line)
    str = "\n     I cannot continue with the linting."
    str += "\n     Trailing closed bracket in line:" + @color.red(" #{line}\n")
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

  def all_good_inner
    str = "\n     All good.\n"
    str += "     There seems to be no errors with your inner structure.\n\n"
    str
  end

  def missing_colon(arr)
    str = "\n     You are missing a symbol.\n"
    arr.each do |x|
      str += @color.red("
                Line #{x[0]}
                Looks like #{x[1]}                Missing Symbol #{x[2]}\n")
    end
    str
  end

  def warning_space(arr)
    str = "   Warning:\n\n"
    arr.each do |x|
      str += "        - Line #{x[0]} -> #{x[2]} white space\n"
    end
    str
  end
end
