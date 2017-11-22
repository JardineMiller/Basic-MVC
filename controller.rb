require('sinatra')
require('sinatra/reloader')
require_relative('models/game.rb')

get '/' do
  erb :home
end

get '/:player1/:player2' do
  player1 = params[:player1]
  player2 = params[:player2]
  game = Game.new(player1, player2)
  @winner = game.determine_winner
  erb :result
end