class FileWriter

  def write(output)
    filename = ARGV[0]
    file_writer = File.open(filename, "w")
    file_writer.write(output)
    character_count = output.length
    return "Created #{ARGV[0]} containing #{character_count} characters"
  end

end
