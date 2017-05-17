class FileWriter

  def write(output)
    filename = ARGV[1]
    # file_writer = File.open(filename, "w")
    File.write(filename)
    # file_writer.write(filename)
    # character_count = output.length
    # return "Created #{ARGV[0]} containing #{character_count} characters"
  end

end
