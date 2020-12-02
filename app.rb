require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "secret"
      end 

      get '/' do
        erb :index
      end

      post '/checkout' do
        session["item"] = params[:item]
        @session = session
        @item = item

      end
end
# <input type="text" id="item" name="item" value="item">