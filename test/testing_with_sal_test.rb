require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/converter'

class ConverterTest < Minitest::Test

  def test_it_can_convert_simple_letter_to_braille
    converter = Converter.new
    input = "a"
    actual = converter.translate_to_braille(input)
    expected = [["0.", "..", ".."]]

    assert_equal expected, actual
  end


  def test_it_can_convert_simple_letter_to_braille
      converter = Converter.new
      input = "b"
      actual = converter.translate_to_braille(input)
      expected = [["0.", "0.", ".."]]

      assert_equal expected, actual
    end

  def test_it_can_identify_a_capital_letter
    converter = Converter.new
    input = "H"
    actual = converter.translate_to_braille(input)
    expected = [["..0.", "..00", ".0.."]]

    assert_equal expected, actual
  end

  def test_it_can_identity_a_different_capital_letter
    converter = Converter.new
    input = "Y"
    actual = converter.translate_to_braille(input)
    expected = [["..00", "...0", ".000"]]

    assert_equal expected, actual
  end

  def test_convert_word_to_braille
    converter = Converter.new
    input = "hi"
    actual = converter.translate_to_braille(input)
    expected = [["0.", "00", ".."], [".0", "0.", ".."]]

    assert expected, actual

  end

end
