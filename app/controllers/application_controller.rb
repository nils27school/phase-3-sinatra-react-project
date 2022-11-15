class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/cocktails" do
    cocktail_menu = Cocktail.all
    cocktail_menu.to_json
  end

  get "/spirits" do
    spirits = Spirit.all
    spirits.to_json
  end

  get "/glassware" do
    glassware = Glassware.all
    glassware.to_json
  end

end
