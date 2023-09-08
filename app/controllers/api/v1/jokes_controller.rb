class JokesController < ApplicationController
  def index
    jokes = JokeFacade.new.jokes_index(params[:num])
    render json: JokeSerializer.new(jokes)
  end
end