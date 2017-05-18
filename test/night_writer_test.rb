require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './night_writer'
require 'pry'
class NightWriterTest < Minitest::Test

  def test_it_can_read_and_write
    skip
    night_writer = NightWriter.new

    reader = night_writer.file_reader.read
    expected = reader.length

    actual = night_writer.file_writer.write(reader)

    assert_equal expected, actual
  end

  def test_english_to_braille_translation
    skip
    night_writer = NightWriter.new
    reader = night_writer.file_reader.read
    expected = reader.length

    translate = night_writer.encode_to_braille(reader)
    writer = night_writer.file_writer.write(translate)
    actual = reader.length

    assert_equal expected, actual
  end

end
