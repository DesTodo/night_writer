gem 'minitest', '~> 5.2'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/braile_character'
require './lib/braile_row'
require './lib/night_writer'

class TextFileTest <Minitest::Test

def test_if_file_exists
file = File.open(incoming_test), "r"]
# get first word from incoming_test
# incoming_test.class ExpectedClass
end


def test_if_print_times_three
# input a line from file
incoming_test[1]
# print each onput times three
end

letter_a = {:a => [["0","."], [".", "."], [".","."]]}

class BrailleCharacterTest < Minitest::Test

  def test_it_exists
    braille_a = BrailleCharacter.new([["0", "."], [".","."], [".","."]])
    assert_equal BrailleCharacter, braile_a.class
    #assert_match
    braille_a.dots.include?(["0", "."]), ([["0", "."], [".","."], [".","."]])
  end

end

class BrailleRowTest < Minitest::Test

  def test_it_prints_in_three_lines_per_row_of_braille

    line_one = "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.".chars
    line_two = "...........Y....................................................................".chars
    line_three = "..........X.....................................................................".chars
    row_of_braille = [line_one, line_two, line_three]
    brailleRow = BrailleRow.new(row_of_braile)
    brailleRow.braille_characters[5].print
    true
  end

end
