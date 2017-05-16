require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/file_writer'

class FileWriterTest < Minitest::Test

  def test_output_letter_to_text_file
    filewriter = FileWriter.new
    # filename = "braille.txt" (entered on the command line)
    output = "T"
    actual = filewriter.write(output)
    expected = "Created 'braille.txt' containing 1 characters"
  end


end
