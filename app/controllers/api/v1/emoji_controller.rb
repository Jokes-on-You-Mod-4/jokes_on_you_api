class Api::V1::EmojiController < ApplicationController
  def show
    emoji = Emoji.new(NinjaService.get_emoji(params[:category]).first)
    render json: EmojiSerializer.new(emoji)
    require 'pry'; binding.pry
  end
end