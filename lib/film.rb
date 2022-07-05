class Film
  attr_reader :text, :director, :year

  def initialize (text, director, year)
    @text = text
    @director = director
    @year = year
  end

  def to_s
    "#{@text} #{@year}"
  end
end
