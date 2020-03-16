require_relative '../lib/linting'

files = Dir.glob(File.join('**', '*.json')).reject { |f| f['spec/'] }

f_line = 1
data = ''
lint = Linter.new

files.each do |file|
  f = File.open(file, 'r')
  f.each_line do |line|
    data += line
  end
end

p lint.linter_pairs?(data)
