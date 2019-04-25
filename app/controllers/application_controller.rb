require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:hero].each do |details|
        Superhero.new(name: details[:name], power: details[:power], biography: details[:biography] )
      end

      @superheroes = Superhero.all

      erb :team
    end





end
