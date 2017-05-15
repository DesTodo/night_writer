gem 'minitest', '~> 5.2'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/braile_character'
require './lib/braile_row'


class BraileRowTest < Minitest::Test

  def test_it_prints_in_three_lines_per_row_of_braile

    line_one = "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.".chars
    line_two = "...........Y....................................................................".chars
    line_three = "..........X.....................................................................".chars
    row_of_braile = [line_one, line_two, line_three]


    braileRow = BraileRow.new(row_of_braile)

    braileRow.braile_characters[5].print

    true
  end

end
