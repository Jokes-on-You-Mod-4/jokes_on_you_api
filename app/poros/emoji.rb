class Emoji
  attr_reader :code, 
              :character, 
              :image,
              :name, 
              :id
  
  def initialize(attributes)
    @code = attributes[:code]
    @character = attributes[:character]
    @image = attributes[:image]
    @name = attributes[:name]
    @id = nil.to_json
  end
end