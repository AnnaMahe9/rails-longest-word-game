class GamesController < ApplicationController
  def new
    letters = ('A'..'Z').to_a
    @letters = letters.sample(10)
  end

  def score
    challenge = params[:letters].split
    @guess = params[:guess].upcase.chars
    @guess.all? do |letter|
      # la quantité de lettres du mot doit être <= array
      @guess.count(letter) <= challenge.count(letter)
    end
    # word.exist?
  end
end
