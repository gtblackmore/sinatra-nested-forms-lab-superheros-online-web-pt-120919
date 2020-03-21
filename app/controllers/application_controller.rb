require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
  get '/' do
    erb :super_hero
  end
  
  post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @team_members = params[:team][:members]
    @hero_name = []
    @hero_power = []
    @hero_bio = []
    @team_member.each do |hero, attribute]
      @hero_name << attribute[:name]
      @hero_power << attribute[:power]
      @hero_bio << attribute[:bio]
    end
    
    erb :team
  end


end
