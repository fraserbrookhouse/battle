require 'sinatra/base'

class Battle < Sinatra::Base
  require_relative 'lib/player'
  require_relative 'lib/game'
  require_relative 'lib/attack'
  require_relative 'lib/skip_turn'

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.init(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @game.switch_turn
    erb :play
  end

  get '/attack' do
    @game = Game.instance
    @game.switch_turn
    erb :attack
  end

  post '/attack' do
    @game = Game.instance
    Attack.punch(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/skip_turn' do
    @game = Game.instance
    erb :skip_turn
  end

  get '/game_over' do
    @game = Game.instance
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
