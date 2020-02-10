require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do @letters << ('A'..'Z').to_a.sample
    end
  end
  def score
    raise
    @letters = params[:letters]
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    user_serialized = open(url).read
    english = JSON.parse(user_serialized)
    if english["word"].downcase != @letters.join.downcase
      @sentence = "Sorry but TEST can't be built out of #{@letters}"


  end
end
