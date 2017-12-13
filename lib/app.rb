require 'sinatra/base'
require_relative './player'
require_relative './game'
require_relative './computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/single_player' do
    erb(:single_player)
  end

  post '/names' do
    name = params[:player1_name]
    Game.create(Player.new(name), Computer.new)
    redirect to('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player = @game.player1
    erb(:play)
  end

  post '/choice' do
    @game.player1.choose(params[:player1_choice])
    redirect to('/result')
  end

  get '/result' do
    @player1 = @game.player1
    @player2 = @game.player2
    @player2.choose
    erb(:result)
  end

  run! if app_file == $0

end
