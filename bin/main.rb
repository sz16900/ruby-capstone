require_relative '../lib/bracket'
require_relative '../lib/output'
require_relative '../lib/color'

files = Dir.glob(File.join('**', '*.css')).reject { |f| f['spec/'] }

data = ''
lint = Bracket.new
output = Output.new
color = Color.new

files.each do |file|
  f = File.open(file, 'r')
  f.each_line do |line|
    data += line
  end
end

brackets = lint.linter_pairs?(data)
str = "\nBrackets"
puts color.magenta(str)

if brackets == false && lint.close_error == true
  puts color.green(output.closed_pair(lint.line))
elsif brackets == false
  puts color.green(output.open_errors(lint.my_stack))
else
  puts color.green(output.all_good)
end
