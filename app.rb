require 'sinatra'
require 'sinatra/reloader'

get('/') do

  erb(:main)

end

get("/rock") do
  rock = "rock"
  @roll = ["rock", "paper", "scissors"].sample

  if @roll == "rock"
    @result = "tied"
  elsif @roll == "paper"
    @result = "lost"
  elsif @roll == "scissors"
    @result = "won"
  end

  erb(:rock)

end

get("/paper") do
  paper = "paper"
  @roll = ["rock", "paper", "scissors"].sample

  if @roll == "rock"
    @result = "won"
  elsif @roll == "paper"
    @result = "tied"
  elsif @roll == "scissors"
    @result = "lost"
  end

  erb(:paper)

end

get("/scissors") do
  scissors = "scissors"
  @roll = ["rock", "paper", "scissors"].sample

  if @roll == "rock"
    @result = "lost"
  elsif @roll == "paper"
    @result = "won"
  elsif @roll == "scissors"
    @result = "tied"
  end

  erb(:scissors)

end
