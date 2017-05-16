require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/converter'
require './lib/file_writer'

require 'pry'
class FileWriterTest < Minitest::Test

  def test_output_letter_to_text_file
    skip
    # not sure how to get the return value
    file_writer = FileWriter.new
    # filename = "braille.txt" (entered on the command line)
    output = "T"
    actual = file_writer.write(output)
    expected = "Created braille.txt containing 1 characters"

    assert_equal expected, actual
  end

  def test_translation_output_letter_to_text_file
    skip
    file_writer = FileWriter.new
    converter = Converter.new
    input = "H"
    translation = converter.translate_to_braille(input)
    output = converter.output_to_braille(translation)
    actual = file_writer.write(output)
    # filename = "braille.txt" (entered on the command line)
    expected = "Created braille.txt containing 6 characters"

    assert_equal expected, actual
  end

  def test_translation_output_word_to_text_file
    file_writer = FileWriter.new
    converter = Converter.new
    input = "Hi"
    translation = converter.translate_to_braille(input)
    output = converter.output_to_braille(translation)
    actual = file_writer.write(output)
    # filename = "braille.txt" (entered on the command line)
    expected = "Created braille.txt containg 18 characters"

    assert_equal expected, actual
  end

end
