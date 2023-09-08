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
    it 'returns a party popper emoji' do 
      category = 'correct'
      emoji = NinjaService.get_emoji(category)
      
      expect(emoji).to be_an Array

      emoji.each do |e|
        check_hash_structure(e, :code, String)
        expect(e[:code]).to eq('U+1F389')
        check_hash_structure(e, :character, String)
        check_hash_structure(e, :image, String)
        check_hash_structure(e, :group, String)
        check_hash_structure(e, :subgroup, String)
      end
    end

    it 'returns a poop emoji' do 
      category = 'incorrect'
      emoji = NinjaService.get_emoji(category)
      
      expect(emoji).to be_an Array

      emoji.each do |e|
        check_hash_structure(e, :code, String)
        expect(e[:code]).to eq('U+1F4A9')
        check_hash_structure(e, :character, String)
        check_hash_structure(e, :image, String)
        check_hash_structure(e, :group, String)
        check_hash_structure(e, :subgroup, String)
      end
    end
  end
end