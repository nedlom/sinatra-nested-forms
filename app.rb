require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do 
      puts params
      @pirate = Pirate.new(params[:pirate])

     params[:pirate][:ships].map do |s|
        Ship.new(s)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
