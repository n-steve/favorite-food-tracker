class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
get '/Food' do 
  food = Food.all
  food.to_json
end

post '/Food' do 
  food = Food.create(
    food_name: params[:food_name],
    category: params[:category]
  )
food.to_json
end

patch '/Food/:id' do
  food = Food.find(params[:id])
  food.update(
    food_name: params[:food_name],
    catergory: params[:category]
  )
  food.to_json
end
delete '/Food/:id' do 
  food = Food.find(params[:id])
  food.destroy
  food.to_json
end

# delete '/Food/:id' do 
#   food = Food.find(:id)
#   food.destroy
# food.to_json
# end


# get '/Location' do
#   location = Location.all
#   location.to_json
# end

# get '/Ratings' do 
#   ratings = Rating.all
#   ratings.to_json
# end


end
