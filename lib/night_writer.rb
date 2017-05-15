# which are all the classes /objects needed

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
