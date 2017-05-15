class BraileCharacter
  attr_reader :dots, :print


  def initialize(dots)
    @dots = dots
  end

  def print
    dots.each do |dot|
      p dot.join
    end
  end


end
