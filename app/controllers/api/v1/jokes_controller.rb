class Api::V1::JokesController < ApplicationController
  def index
    jokes = JokesFacade.new.jokes_index(params[:limit])
    render json: JokeSerializer.new(jokes)
  end
end