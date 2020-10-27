class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end


  get '/' do
    redirect '/recipes'
  end

  get '/recipes' do
    @recipes = Recipes.all
  end
end
