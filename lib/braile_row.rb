require './lib/braile_character'

class BraileRow
    attr_reader :braile_characters

    def initialize(row)
      @braile_characters = []

      input_length = row[0].length
      index = 0

      while index < input_length

        @braile_characters << BraileCharacter.new(
          [
            [row[0][index], row[0][index + 1]],
            [row[1][index], row[1][index + 1]],
            [row[2][index], row[2][index + 1]]
          ]
        )

        #row[0][0] => first braile representation character
        # row[0][1] => second braile symbol (0 or .)
        # next to it, on the same line,
        # row[1][0] => first symbol of second braile character
        # row[1][1] => second (0 or .) of second braile character
        # row [2][0] => frist "top" line of the third braile character
        #  
        index += 2

      end

    end

    def print

    end

end
