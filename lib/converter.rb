class Converter
require 'pry'

  def braille_collection
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
                        " " => ["..", "..", ".."]
                        }
    end

  def braille_to_english
    braille_collection.invert
  end

  def translate_to_braille(input)
    letters = input.split(//)
    braille_characters = []
    letters.each do |letter|
      braille_characters << braille_collection[letter]
    end
    braille_characters.pop
    braille_characters
    # binding.pry
  end

  def output_to_braille(translation)
    divide_by_line = translation.transpose
    line_one = divide_by_line[0].join
    line_two = divide_by_line[1].join
    line_three = divide_by_line[2].join
    "#{line_one[0, 160]}\n""#{line_two[0, 160]}\n""#{line_three[0, 160]}\n""#{line_one[161, 321]}\n""#{line_two[161, 321]}\n""#{line_three[161, 321]}""#{line_one[322, 482]}\n""#{line_two[322, 482]}\n""#{line_three[322, 482]}\n""#{line_one[323, 483]}\n""#{line_two[323, 483]}\n""#{line_three[323, 483]}"
  end

  def one_shot(input)
    @character_count = input.length
    translate = translate_to_braille(input)
    output = output_to_braille(translate)
  end

  def translate_from_braille(input)
      input_lines = input.split("\n")
      characters = []

      index = 0
      # this loop only works on one row of Braille
      while index < input_lines[0].length
        # if character_key = c

          character_key = [
            input_lines[0][index] + input_lines[0][index + 1],
            input_lines[1][index] + input_lines[1][index + 1],
            input_lines[2][index] + input_lines[2][index + 1]
          ]
        english_character = braille_to_english[character_key]

        characters << english_character

        index += 2
      end

      characters
  end

end
