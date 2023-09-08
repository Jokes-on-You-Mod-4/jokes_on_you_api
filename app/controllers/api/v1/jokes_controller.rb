class API::V1::JokesController < ApplicationController
  def index
    jokes = JokeFacade.new.jokes_index(params[:limit])
    render json: JokeSerializer.new(jokes)
  end
end