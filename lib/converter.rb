class Converter

  def english_to_braille
                       {"a" => ["0.", "..", ".."],
                        "b" => ["0.", "0.", ".."],
                        "c" => ["00", "..", ".."],
                        "d" => ["00", ".0", ".."],
                        "e" => ["0.", ".0", ".."],
                        "f" => ["00", "0.", ".."],
                        "g" => ["00", "00", ".."],
                        "h" => ["0.", "00", ".."],
                        "i" => [".0", "0.", ".."],
                        "j" => [".0", "00", ".."],
                        "k" => ["0.", "..", "0."],
                        "l" => ["0.", "0.", "0."],
                        "m" => ["00", "..", "0."],
                        "n" => ["00", ".0", "0."],
                        "o" => ["0.", ".0", "0."],
                        "p" => ["00", "0.", "0."],
                        "q" => ["00", "00", "0."],
                        "r" => ["0.", "00", "0."],
                        "s" => [".0", "0.", "0."],
                        "t" => [".0", "00", "0."],
                        "u" => ["0.", "..", "00"],
                        "v" => ["0.", "0.", "00"],
                        "w" => [".0", "00", ".0"],
                        "x" => ["00", "..", "00"],
                        "y" => ["00", ".0", "00"],
                        "z" => ["0.", ".0", "00"],
                        "1" => [".0..", ".0..", "00.0"],
                        "2" => [".00.", ".00.", "00.."],
                        "3" => [".000", ".0..", "00.."],
                        "4" => [".000", ".0.0", "00.."],
                        "5" => [".00.", ".0.0", "00.."],
                        "6" => [".000", ".00.", "00.."],
                        "7" => [".000", ".000", "00.."],
                        "8" => [".00.", ".000", "00.."],
                        "9" => [".0.0", ".00.", "00.."],
                        "A" => ["..0.", "....", ".0.."],
                        "B" => ["..0.", "..0.", ".0.."],
                        "C" => ["..00", "....", ".0.."],
                        "D" => ["..00", "...0", ".0.."],
                        "E" => ["..0.", "...0", ".0.."],
                        "F" => ["..00", "..0.", ".0.."],
                        "G" => ["..00", "..00", ".0.."],
                        "H" => ["..0.", "..00", ".0.."],
                        "I" => ["...0", "..0.", ".0.."],
                        "J" => ["...0", "..00", ".0.."],
                        "K" => ["..0.", "....", ".00."],
                        "L" => ["..0.", "..0.", ".00."],
                        "M" => ["..00", "....", ".00."],
                        "N" => ["..00", "...0", ".00."],
                        "O" => ["..0.", "...0", ".00."],
                        "P" => ["..00", "..0.", ".00."],
                        "Q" => ["..00", "..00", ".00."],
                        "R" => ["..0.", "..00", ".00."],
                        "S" => ["...0", "..0.", ".00."],
                        "T" => ["...0", "..00", ".00."],
                        "U" => ["..0.", "....", ".000"],
                        "V" => ["..0.", "..0.", ".000"],
                        "W" => ["...0", "..00", ".0.0"],
                        "X" => ["..00", "....", ".000"],
                        "Y" => ["..00", "...0", ".000"],
                        "Z" => ["..0.", "...0", ".000"],
                        " " => ["..", "..", ".."],
                        "." => ["..", ".0", ".0"],
                        "," => ["..", "0.", ".."],
                        "!" => ["..", "00", "0."],
                        "?" => ["..", "0.", "00"],
                        "'" => ["..", "..", "0."],
                        # "1" => ["0.", "..", ".."],
                        "-" => ["..", "..","00"]
                      }
    end

    def braille_to_english
      english_to_braille.invert
    end

    def translate_to_braille(input)
        letters = input.split(//)
        braille_characters = []
        letters.each do |letter|
          braille_characters << english_to_braille[letter]
        end
        braille_characters.pop
        braille_characters
      end

      def output_to_braille(translation)
        divide_by_line = translation.transpose
        line_one = divide_by_line[0].join
        line_two = divide_by_line[1].join
        line_three = divide_by_line[2].join
        "#{line_one[0, 160]}\n""#{line_two[0, 160]}\n""#{line_three[0, 160]}\n""#{line_one[161, 321]}\n""#{line_two[161, 321]}\n""#{line_three[161, 321]}\n""#{line_one[322, 482]}\n""#{line_two[322, 482]}\n""#{line_three[322, 482]}\n""#{line_one[323, 483]}\n""#{line_two[323, 483]}\n""#{line_three[323, 483]}"
      end

 def translate_from_braille(input)
    input_lines = input.split("\n")
    characters = ""
    index = 0
    upper_case = ["..","..",".0"]
    number_hash = [".0",".0","00"]

    while index < input_lines[0].length

      character_key = [
          input_lines[0][index] + input_lines[0][index + 1],
          input_lines[1][index] + input_lines[1][index + 1],
          input_lines[2][index] + input_lines[2][index + 1]
        ]

        if character_key == upper_case

          character_key = [
            character_key[0] + input_lines[0][index + 2] + input_lines[0][index + 3],
            character_key[1] + input_lines[1][index + 2] + input_lines[1][index + 3],
            character_key[2] + input_lines[2][index + 2] + input_lines[2][index + 3]
          ]
          english_character = braille_to_english[character_key]
          characters += english_character

          index += 4

        elsif character_key == number_hash

          character_key = [
            character_key[0] + input_lines[0][index + 2] + input_lines[0][index + 3],
            character_key[1] + input_lines[1][index + 2] + input_lines[1][index + 3],
            character_key[2] + input_lines[2][index + 2] + input_lines[2][index + 3]
          ]
          english_character = braille_to_english[character_key]
          characters += english_character

          index += 4

        else

          english_character = braille_to_english[character_key]
          characters += english_character

          index += 2
        end
      end
    characters
  end


end
