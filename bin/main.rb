#!/usr/bin/env ruby

require_relative '../lib/bracket'
require_relative '../lib/output'
require_relative '../lib/color'
require_relative '../lib/inner'

class Linter
  def initialize
    @files = Dir.glob(File.join('**', '*.css')).reject { |f| f['spec/'] }
    @data = ''
    @output = Output.new
    @color = Color.new
  end

  def read_file
    @files.each do |file|
      f = File.open(file, 'r')
      f.each_line do |line|
        @data += line
      end
    end
    # Start of the linting: set the important methods to private for security reasons
    inner_method if brackets_method
  end

  private

  def brackets_method
    lint = Bracket.new

    brackets = lint.linter_pairs?(@data)
    str = "\nBrackets"
    puts @color.magenta(str)

    if brackets == false && lint.close_error == true
      puts @color.green(@output.closed_pair(lint.line))
    elsif brackets == false
      puts @color.green(@output.open_errors(lint.my_stack))
    else
      puts @color.green(@output.all_good)
      true
    end
  end

  def inner_method
    inner = Inner.new
    inner.cleanup(@data)
    str = "\nInner Structure"
    puts @color.magenta(str)

    puts @color.green(@output.all_good_inner) if inner.log.empty?
    puts @color.green(@output.missing_colon(inner.log)) if inner.log.empty? == false
    puts @color.yellow(@output.warning_space(inner.warning_space)) if inner.warning_space.empty? == false
  end
end

starts = Linter.new
starts.read_file
