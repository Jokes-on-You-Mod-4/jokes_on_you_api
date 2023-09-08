require 'rails_helper'

RSpec.describe TriviaFacade do
  describe 'Trivia' do
    describe '#trivia_index' do
      it 'can produce a list of trivia questions' do
        category_query = 'mathematics'
        data = TriviaFacade.new(category_query).trivia_index

        # require 'pry'; binding.pry
        # expect(data).to be_a Nutrition

        # expect(data.total_weight_in_grams).to be_a(Float)
        # expect(data.total_weight_in_grams).to eq(453.592)
      end
    end
  end
end