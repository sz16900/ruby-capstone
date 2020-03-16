require_relative '../lib/linting'
require_relative '../lib/output'

files = Dir.glob(File.join('**', '*.css')).reject { |f| f['spec/'] }

data = ''
lint = Linter.new
output = Output.new

files.each do |file|
  f = File.open(file, 'r')
  f.each_line do |line|
    data += line
  end
end

brackets = lint.linter_pairs?(data)
if brackets == false && lint.close_error == true
  puts output.closed_pair(lint.line)
elsif brackets ==  false
  puts output.open_errors(lint.my_stack)
end