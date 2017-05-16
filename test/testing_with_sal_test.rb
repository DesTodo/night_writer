require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/converter'
require 'pry'
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

  def test_convert_a_different_word
    converter = Converter.new
    input = "hello"
    actual = converter.translate_to_braille(input)
    expected = [ ["0.", "00", ".."],
                 ["0.", ".0", ".."],
                 ["0.", "0.", "0."],
                 ["0.", "0.", "0."],
                 ["0.", ".0", "0."] ]
    assert_equal expected, actual

  end

  def test_convert_two_words
    converter = Converter.new
    input = "hello world"
    actual = converter.translate_to_braille(input)
    expected = [ ["0.", "00", ".."],
                 ["0.", ".0", ".."],
                 ["0.", "0.", "0."],
                 ["0.", "0.", "0."],
                 ["0.", ".0", "0."],
                 ["..", "..", ".."],
                 [".0", "00", ".0"],
                 ["0.", ".0", "0."],
                 ["0.", "00", "0."],
                 ["0.", "0.", "0."],
                 ["00", ".0", ".."] ]
    assert_equal expected, actual
  end

  def test_convert_word_with_capital_letter
    converter = Converter.new
    input = "Hello"
    actual = converter.translate_to_braille(input)
    expected = [ ["..0.", "..00", ".0.."],
                 ["0.", ".0", ".."],
                 ["0.", "0.", "0."],
                 ["0.", "0.", "0."],
                 ["0.", ".0", "0."] ]
    assert_equal expected, actual
  end

  def test_convert_two_words_with_capital_letters
    converter = Converter.new
    input = "Hello World"
    actual = converter.translate_to_braille(input)
    expected = [ ["..0.", "..00", ".0.."],
                 ["0.", ".0", ".."],
                 ["0.", "0.", "0."],
                 ["0.", "0.", "0."],
                 ["0.", ".0", "0."],
                 ["..", "..", ".."],
                 ["...0", "..00", ".0.0"],
                 ["0.", ".0", "0."],
                 ["0.", "00", "0."],
                 ["0.", "0.", "0."],
                 ["00", ".0", ".."] ]

   assert_equal expected, actual
  end

  def test_ouput_one_letter_to_three_lines
    converter = Converter.new
    input = "X"
    expected =  "..00\n" "....\n" ".000"
    translator = converter.translate_to_braille(input)
    actual = converter.output_to_braille(translator)
    assert_equal expected, actual
  end

  def test_output_to_three_lines_for_multiple_letters
    converter = Converter.new
    input = "Hi"
    expected = "..0..0\n" "..0000\n" ".0...."
    translator = converter.translate_to_braille(input)
    actual = converter.output_to_braille(translator)
binding.pry
    assert_equal expected, actual
  end

end
