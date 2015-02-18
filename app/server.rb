require 'sinatra/base'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end


  get '/play' do
    @visitor = ""
    erb :play
  end

  get '/board' do
    @board = Board.new :size => 10, :content => Cell
    ship = Ship.submarine
    @place_ship = @board.place(ship, :A1)
    @get_coordinates = @board.get_coordinates(:A1, 3, :horizontally)
    @name = params[:name]
    erb :board
  end



 # start the server if ruby file executed directly
 run! if app_file == $0
end
