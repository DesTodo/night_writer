class FileWriter

  def write(output)
    file_writer = File.open(ARGV[1], "w")
    file_writer.write(output)
    file_writer.close

    # puts "Created #{ARGV[1]} containing #{@character_count} characters"
  end

end
