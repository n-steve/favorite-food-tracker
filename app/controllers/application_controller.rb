class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/Category' do
    category = Category.all
    category.to_json
  end


get '/Category/:id' do
  category = Category.find(params[:id])
  category.to_json
end

post '/Category' do 
  category = Category.create(
    category: params[:category]
  )
  category.to_json
end

patch '/Category/:id' do
  category = Category.find(params[:id])
  category.update(
    category: params[:category]
  )
  category.to_json
end


delete '/Category/:id' do
  category = Category.find(params[:id])
  category.destroy
  category.to_json
end
##################################################################################
get '/Food' do
  food = Food.all
  food.to_json
end



get '/Food/:id' do
  food = Food.find(params[:id])
  food.to_json
end

post '/Food' do 
  food = Food.create(
    food_name: params[:food_name],
    location: params[:location],
    category_id: params[:category_id],
    rate_id: params[:rate_id]
  )
  food.to_json
end


patch '/Food/:id' do 
  food = Food.find(params[:id])
  food.update(
    food_name: params[:food_name],
    location: params[:location],
    category_id: params[:category_id],
    rate_id: params[:rate_id]
  )
  food.to_json
end

delete '/Food/:id' do
  food = Food.find(params[:id])
  food.destroy
  food.to_json
end

#######################################################################


get '/Rating/:id' do 
  rate = Rate.find(params[:id])
  rate.to_json
end

post '/Rating' do 
  rate = Rate.create(
    rating: params[:rating],
    like: params[:like]
  )
rate.to_json
end

patch '/Rating/:id' do 
  rate = Rate.find(params[:id])
  rate.update(
    rating: params[:rating],
    like: params[:like]
  )
  rate.to_json
end

delete '/Rating/:id' do
  rate = Rate.find(params[:id])
  rate.destroy
  rate.to_json
end


end
