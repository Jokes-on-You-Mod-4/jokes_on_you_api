class Emoji
  attr_reader :code, 
              :character, 
              :image,
              :name
  
  def initialize(attributes)
    @code = attributes[:code]
    @character = attributes[:character]
    @image = attributes[:image]
    @name = attributes[:name]
  end
end