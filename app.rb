require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do 

      erb :'pirates/new'
    end

    post '/pirates' do
      p = params[:pirate]
      @info = params["pirate"]
      erb :'pirates/show'
    end
  end
end
