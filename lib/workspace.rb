require 'pry'
#
# many_dots = [[["0", "."], [".","."], [".","."]], [["0", "."], [".","."], [".","0"]], [["0", "."], [".","."], [".","."]]]
# => [[["0", "."], [".", "."], [".", "."]], [["0", "."], [".", "."], [".", "0"]], [["0", "."], [".", "."], [".", "."]]]
# [53] pry(main)> many_dots.each do |dot|
# [53] pry(main)*   p dot.join
# [53] pry(main)* end
# "0....."
# "0....0"
# "0....."

letters_library = { a: {a1: "o.", a2: "..", a3: ".."},
                    b: {b1: "o.", b2: "o.", b3: ".."} }
letters_library_2 = { a: ["o.", "..", ".."],
                      b: ["o.", "o.", ".."] }
letters_library[:a][:a1]

line1 = letters_library_2[:a][0]
line2 = letters_library_2[:a][1]
line3 = letters_library_2[:a][2]


text_file = "#{line1}\n""#{line2}\n""#{line3}"
writer = File.open(ARGV[0], "w")
writer.write(text_file)
writer.close
binding.pry

puts "Created #{ARGV[0]}"



# which are all the classes /objects needed
require 'pry'

# input = ARGV
# puts input.inspect

class Files
  attr_reader :filename

  def initialize(filename)
    @filename = filename
    File.open(filename)

  def read
    filename = ARGV[0]
    File.read(filename).split("\n")
  end

  def write
    filename = ARGV[1]
    File.write(filename)
  end

letters_library = { a: {a1: "o.", a2: "..", a3: ".."},
                    b: {b1: "o.", b2: "o.", b3: ".."} }


letters_library[:a][:a1]

line1 = letters_library_2[:a][0]
line2 = letters_library_2[:a][1]
line3 = letters_library_2[:a][2]


text_file = "#{line1}\n #{line2}\n #{line3}"

#text_file = ARGV[0]

writer = File.new(text_file)
#binding.pry
#writer = File.open(ARGV[0], "w")
binding.pry

writer.write(text_file)
writer.close

end


puts "Created #{ARGV[0]}"


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

class BrailleCharacter
  attr_reader :dots, :print


  def initialize(dots)
    @dots = dots
  end

  def print
    dots.each do |dot|
      p dot.join
    end
  end


end

class BrailleRow
    attr_reader :braille_characters

    def initialize(row)
      @braille_characters = []

      input_length = row[0].length
      index = 0

      while index < input_length

        @braille_characters << BrailleCharacter.new(
          [
            [row[0][index], row[0][index + 1]],
            [row[1][index], row[1][index + 1]],
            [row[2][index], row[2][index + 1]]
          ]
        )
        index += 2

      end

    end

    def print

    end

end


# input_file_name = ARGV[0]
# output_file_name = ARGV[1]

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename).split("\n")
  end
end

class FileWriter
  def write(output)
    filename = ARGV[1]
    file_writer = File.open(filename, "w")
    file_writer.write(output)
  end
end

class BraileLibrary
  attr_reader :braille_to_english,
        :english_to_braille

  def initialize

  end
end

class NightWriter
  attr_reader :reader,
          :writer

  def initialize
    @reader = FileReader.new
    @writer = FileWriter.new
  end

  def encode_file_to_braille
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string

    writer.write(input)

  end
end

night_writer = NightWriter.new
night_writer.encode_file_to_braille


# which are all the classes /objects needed
require 'pry'

# input = ARGV
# puts input.inspect

class Files
  attr_reader :filename

  def initialize(filename)
    @filename = filename
    File.open(filename)

  def read
    filename = ARGV[0]
    File.read(filename).split("\n")
  end

  def write
    filename = ARGV[1]
    File.write(filename)
  end

letters_library = { a: {a1: "o.", a2: "..", a3: ".."},
                    b: {b1: "o.", b2: "o.", b3: ".."} }


letters_library[:a][:a1]

line1 = letters_library_2[:a][0]
line2 = letters_library_2[:a][1]
line3 = letters_library_2[:a][2]


text_file = "#{line1}\n #{line2}\n #{line3}"

#text_file = ARGV[0]

writer = File.new(text_file)
#binding.pry
#writer = File.open(ARGV[0], "w")
binding.pry

writer.write(text_file)
writer.close

end


puts "Created #{ARGV[0]}"


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

class BrailleCharacter
  attr_reader :dots, :print


  def initialize(dots)
    @dots = dots
  end

  def print
    dots.each do |dot|
      p dot.join
    end
  end


end

class BrailleRow
    attr_reader :braille_characters

    def initialize(row)
      @braille_characters = []

      input_length = row[0].length
      index = 0

      while index < input_length

        @braille_characters << BrailleCharacter.new(
          [
            [row[0][index], row[0][index + 1]],
            [row[1][index], row[1][index + 1]],
            [row[2][index], row[2][index + 1]]
          ]
        )
        index += 2

      end

    end

    def print

    end

end


# input_file_name = ARGV[0]
# output_file_name = ARGV[1]

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename).split("\n")
  end
end

class FileWriter
  def write(output)
    filename = ARGV[1]
    file_writer = File.open(filename, "w")
    file_writer.write(output)
  end
end

class BraileLibrary
  attr_reader :braille_to_english,
        :english_to_braille

  def initialize

  end
end

class NightWriter
  attr_reader :reader,
          :writer

  def initialize
    @reader = FileReader.new
    @writer = FileWriter.new
  end

  def encode_file_to_braille
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string

    writer.write(input)

  end
end

night_writer = NightWriter.new
night_writer.encode_file_to_braille
