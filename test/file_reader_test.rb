require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_reader'

class FileReaderText < Minitest::Test

  def test_it_can_read
    file_reader = FileReader.new
    actual = file_reader.read

    assert_equal 16, actual.length
  end
end
