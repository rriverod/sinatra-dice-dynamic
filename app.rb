require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_die/:size_of_die") do
  @num_dice=params.fetch("number_of_die").to_i
  @size_dice=params.fetch("size_of_die").to_i

  @rolls = []

@num_dice.times do
    die = rand(1..@size_dice)

    @rolls.push(die)
  end

  erb(:flexible)
end
