require './lib/file_reader'
require './lib/file_writer'
require './lib/converter'

class NightWriter
  attr_reader :reader,
              :writer

  def initialize
    @reader = FileReader.new
    @writer = FileWriter.new
  end

  def encode_file_to_braille(input, output)
    plain = reader.read(input)
    braille = encode_to_braille(plain)
    @writer.write(output, braille)
  end

  def encode_to_braille(plain)
    converter = Converter.new
    translation = converter.translate_to_braille(plain)
    output = converter.output_to_braille(translation)
  end

#   def encode_to_braille(input)
#     converter = Converter.new
#     converter.one_shot(input)
#   end

  def encode_file_from_braille(input, output)
    plain = reader.read(input)
    braille = encode_from_braille(plain)
    @writer.write(output, braille)
  end

  def encode_from_braille(plain)
    converter = Converter.new
    converter.translate_from_braille(plain)
  end

end
