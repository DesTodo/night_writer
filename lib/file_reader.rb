class FileReader

  def read(filename)
    filename = ARGV[0]
    File.read(filename)

    # puts "Created #{ARGV[1]} containing #{@character_count} characters"
  end
end
