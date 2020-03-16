class Inner
  attr_reader :log
  def initialize
    @ln = 1
    @log = []
  end

  def cleanup(str)
    str.each_line do |line|
      @ln += 1
      next if line.include?('{') || line.include?('}')

      @log << [@ln, line, ':'] if line.include?(':') == false
      @log << [@ln, line, ';'] if line.include?(';') == false
    end
  end
end
