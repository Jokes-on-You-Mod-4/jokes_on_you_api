class Api::V1::TriviaController < ApplicationController
  def index
    @facade = TriviaFacade.new(params[:category])
    render json: TriviaSerializer.new(@facade.trivia_index), status: 200
  end
end