require './lib/night_writer'

nw = NightWriter.new
nw.encode_file_to_braille(ARGV[0], ARGV[1])
