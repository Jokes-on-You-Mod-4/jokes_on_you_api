require "rails_helper"

RSpec.describe NinjaService do 
  describe "gets 10 trivia questions" do 
    it "returns 10 trivia questions based on category" do
      category = "music"
      trivia = NinjaService.get_trivia(category)
      
      expect(trivia).to be_an Array

      trivia.each do |t|
        check_hash_structure(t, :category, String)
        check_hash_structure(t, :question, String)
        check_hash_structure(t, :answer, String)
      end
    end
  end

  describe 'gets emojis' do 
    it 'returns a positive emoji' do 
      category = 'correct'
      emoji = NinjaService.get_emoji(category)
      
      expect(emoji).to be_an Array

      emoji.each do |e|
        check_hash_structure(e, :code, String)
        check_hash_structure(e, :character, String)
        check_hash_structure(e, :image, String)
        check_hash_structure(e, :group, String)
        check_hash_structure(e, :sub_group, String)
      end
    end
  end
end