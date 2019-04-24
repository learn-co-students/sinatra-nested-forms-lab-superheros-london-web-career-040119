require 'sinatra/base'

class App < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }

  get '/' do
    erb :team
  end

  post '/teams' do
    @team = params[:team].reject { |k, _| k == 'members' }
    @members = params[:team][:members]

    erb :super_hero
  end
end
