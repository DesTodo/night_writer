input_text_from_terminal_inside_text_file = File.open(ARGV[0], "r") #pull text into .rb file

#OR
# in terminal file.rb text_file_name.txt

# in file.rb
# text_file_input = ARGV
# then manipulate ARGV array
# still need to File.open/close???
# I think not because text has been imported and transformed into an array = [ARGV] with
# ARGV command line method

# is it a array of words or line? Need array of characters ?
first_assignemnt, *the_rest = ARGV # ARGV[0] value is assigned to first_assignemnt

# ARGV[0] assigns the first value of the text (probably) "
# to it's own variable
# and can be used as a command --> start something when ARGV[0]

text_from_file = text_from_terminal.read

text_from_terminal.close

puts text_from_file

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end
end

puts ARGV.inspect


hash_letter_a = {:a => [["0","."],[".", "."],[".","."]]}

hash_letter_a.to_a

hash_letter_a.inspect 
