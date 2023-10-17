require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end
get("/rock") do
  @player_choice = "rock"
  @computer_choice = ["rock", "paper", "scissors"].sample
  @outcome = find_outcome(@player_choice, @computer_choice)
  erb(:rps)
end
get("/paper") do
  @player_choice = "paper"
  @computer_choice = ["rock", "paper", "scissors"].sample
  @outcome = find_outcome(@player_choice, @computer_choice)
  erb(:rps)
end
get("/scissors") do
  @player_choice = "scissors"
  @computer_choice = ["rock", "paper", "scissors"].sample
  @outcome = find_outcome(@player_choice, @computer_choice)
  erb(:rps)
end
def find_outcome(player, computer)
  return "We tied!" if player == computer
  case player
  when "rock"
    computer == "scissors" ? "We won!" : "We lost!"
  when "paper"
    computer == "rock" ? "We won!" : "We lost!"
  when "scissors"
    computer == "paper" ? "We won!" : "We lost!"
  end
end
