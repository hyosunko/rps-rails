class GameController < ApplicationController
  def play
    @human = params[:human]

    @computer = ["rock", "paper", "scissors"].sample
    human_winners = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}

		if @human == @computer
			@result = "The game was tied"
		elsif human_winners[@human] == @computer
			@result ="You won the game"
		else
			@result ="You lost the game"
		end

    render 'play.html.erb'
  end
end
