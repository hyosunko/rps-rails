class GameController < ApplicationController
  def play
    @human = params[:human]

    rps_arr = ["rock", "paper", "scissors"]
    human_winners = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}
    @computer = rps_arr[rand(0..2)]

    if !rps_arr.include?(@human)
			@result = "You entered wrong word. Please enter again"
		else
			if @human == @computer
				@result = "Tied"
			elsif human_winners[@human] == @computer
				@result ="You won"
			else
				@result ="You lost"
			end
		end

    # @result_string = "You were #{@human}, and Computer was #{computer}. #{result}"
    render 'play.html.erb'
  end
end
