require './lib/file_reader'
require './lib/file_writer'
require './lib/converter'
require 'pry'

class NightWriter

  attr_reader :file_reader,
              :file_writer

  def initialize
    @file_reader = FileReader.new
    @file_writer = FileWriter.new
  end

  def encode_to_braille(input)
    converter = Converter.new
    converter.one_shot(input)
  end
# binding.pry


end
