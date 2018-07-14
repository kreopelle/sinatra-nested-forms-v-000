require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do
      @pirates = Pirate.all

      erb :'/pirates/index'
    end

    get '/pirates/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      pirate = Pirate.create(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
      end

      redirect to '/pirates/#{pirate.id}'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])

      

      erb :'/pirates/show'
    end



    # code other routes/actions here
    # get '/' do
    #   erb :root
    # end
    #
    # get '/new' do
    #   erb :'pirates/new'
    # end
    #
    # post '/pirates' do
    #   @pirate = Pirate.new(params[:pirate])
    #
    #   params[:pirate][:ships].each do |details|
    #     Ship.new(details)
    #   end
    #
    #   @ships = Ship.all
    #
    #   erb :'/pirates/show'
    # end

  end
end
