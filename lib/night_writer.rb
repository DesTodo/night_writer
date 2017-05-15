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
