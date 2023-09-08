require 'rails_helper'

RSpec.describe Emoji do
  before(:each) do
    info = {
            code: "U+1F4A9",
            character: "💩",
            image: "https://api-ninjas-data.s3.us-west-2.amazonaws.com/emojis/U%2B1F4A9.png",
            name: "pile of poo",
            group: "smileys_emotion",
            subgroup: "face_costume"
          }
    @emoji = Emoji.new(info)
  end

  describe 'initialize' do 
    it 'exists' do 
      expect(@emoji).to be_an Emoji
    end

    it 'has attributes' do 
      expect(@emoji.code).to eq("U+1F4A9")
      expect(@emoji.character).to eq("💩")
      expect(@emoji.image).to eq('https://api-ninjas-data.s3.us-west-2.amazonaws.com/emojis/U%2B1F4A9.png')
      expect(@emoji.name).to eq('pile of poo')
      expect(@emoji.id).to eq(nil.to_json)
    end
  end
end