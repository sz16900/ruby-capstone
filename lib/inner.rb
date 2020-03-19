class Inner
  attr_reader :log, :warning_space
  def initialize
    @ln = 0
    @log = []
    @warning_space = []
    @symbols = ['{', '}', ',', '/*', '\*']
  end

  def cleanup(str)
    str.each_line do |line|
      @ln += 1
      next if @symbols.any? { |sym| line.include?(sym) }
      next if line.start_with? "\n"

      @warning_space << [@ln, line, 'start of line'] if line[/\A */].size != 4
      @log << [@ln, line, ':'] if line.include?(':') == false
      @log << [@ln, line, ';'] if line.include?(';') == false
    end
  end
end
