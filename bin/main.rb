files = Dir.glob(File.join('**', '*.json')).reject { |f| f['spec/'] }

line  = 1
open_pair = ["{", "[", "(", "\"", "\'"]
closed_pair = ["}", "]", ")", "\"", "\'"]
error_obj = []

files.each do |file|
    File.open(file).each_char do |c|
        line += 1 if c == "\n"
        error_obj.push(c) if open_pair.include?(c) 
        if closed_pair.include?(c) 
            if error_obj.pop != "("
        else
            p "ERROR line #{line}"
        end
    end
end

p error_obj