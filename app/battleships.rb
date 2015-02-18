require 'sinatra/base'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

 get '/' do
   erb :index
 end


get '/play' do
    @visitor = ""
    erb :index
  end

  get '/board' do
    @board = ""
    @name = params[:name]
    erb :place_ships
  end



 # start the server if ruby file executed directly
 run! if app_file == $0
end
