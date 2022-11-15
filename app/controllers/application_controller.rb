class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Routes for Cocktails
  get "/cocktails" do
    cocktail_menu = Cocktail.all
    cocktail_menu.to_json
  end

  post "/cocktails" do
    new_cocktail = Cocktail.create(name:params[:name], glassware_id:params[:glassware_id], spirit_id:params[:spirit_id], ingredients:params[:ingredients], description:params[:description])
    new_cocktail.to_json
  end

  delete "/cocktails/:id" do
    delete_cocktail = Cocktail.find(params[:id])
    delete_cocktail.destroy
    delete_cocktail.to_json
  end


  #Routes for Spirits
  get "/spirits" do
    spirits = Spirit.all
    spirits.to_json
  end

  get "/spirits/:id" do
    spirit_cocktails = Spirit.find(params[:id]).cocktails
    spirit_cocktails.to_json
  end


  #Routes for Glassware
  get "/glassware" do
    glassware = Glassware.all
    glassware.to_json
  end

end
