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
  describe 'gets a number of jokes' do 
    it 'gets jokes' do 
      num = 2
      jokes = NinjaService.get_jokes(num)
      expect(jokes).to be_a Array
      expect(jokes.count).to eq(2)

      jokes.each do |joke|
        expect(joke[:joke]).to be_a(String)
      end
    end
  end
end