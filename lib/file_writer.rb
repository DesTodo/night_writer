class FileWriter

  def write(filename, content)
    file_writer = File.open(filename, "w")
    file_writer.write(content)
    file_writer.close

    # puts "Created #{ARGV[1]} containing #{@character_count} characters"
  end

end
