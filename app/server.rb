require 'sinatra/base'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions
  get '/' do
    erb :index
  end


  get '/play' do
    name = ""
    erb :play
  end



  post '/board' do
    @board = Board.new :size => 10, :content => Cell
    session[:board] = @board
    ship = Ship.submarine
    @name = params[:name]
    erb :board
  end

  post '/place_ship' do
    name = ""
    ship = Ship.submarine
    @board = session[:board]
    @place_ship = @board.place(ship, :A1)
    erb :board
  end



 # start the server if ruby file executed directly
 run! if app_file == $0
end
