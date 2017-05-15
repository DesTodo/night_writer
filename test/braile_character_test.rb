gem 'minitest', '~> 5.2'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/braile_character'


class BraileCharacterTest < Minitest::Test

  def test_it_exists

    braile_a = BraileCharacter.new([["0", "."], [".","."], [".","."]])

    assert_equal BraileCharacter, braile_a.class

    #assert_match
    braile_a.dots.include?(["0", "."]), ([["0", "."], [".","."], [".","."]])


  end

end
