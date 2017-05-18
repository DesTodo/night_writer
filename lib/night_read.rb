require './lib/night_writer'

nw = NightWriter.new
nw.encode_file_from_braille(ARGV[0], ARGV[1])
