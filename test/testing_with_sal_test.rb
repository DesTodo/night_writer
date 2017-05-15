require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/converter'

class ConverterTest < Minitest::Test

  def test_it_can_convert_simple_letter_to_braille
    converter = Converter.new
    input = "a"
    actual = converter.translate_to_braille(input)
    expected = ["0.", "..", ".."]

    assert_equal expected, actual
  end


  def test_it_can_convert_simple_letter_to_braille
      converter = Converter.new
      input = "b"
      actual = converter.translate_to_braille(input)
      expected = ["0.", "0.", ".."]

      assert_equal expected, actual
    end

  def test_it_can_convert_any_letter
    skip
    converter = Converter.new
    input = @braille_library.keys.sample
  end


end
