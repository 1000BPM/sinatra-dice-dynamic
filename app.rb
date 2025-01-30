require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:num_dice/:num_sides") do
  @rolls = []
  @dice_user_input = params.fetch("num_dice").to_i
  @sides_user_input = params.fetch("num_sides").to_i

  @dice_user_input.times do
    die = rand(1..@sides_user_input)

    @rolls.push(die)
  end

  erb(:flexible)
end
