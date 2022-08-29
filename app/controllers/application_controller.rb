class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
get '/Food' do 
  food = Food.all
  food.to_json(include:[{city: {only:[:city_name]}},frequent: {only: [:go_back]}])
end

post '/Food' do
  food = Food.create(
    food_name: params[:food_name],
    location: params[:location],
    r_name: params[:r_name],
    review: params[:review],
    scale: params[:scale],
    city_id: params[:city_id],
    frequent_id: params[:frequent_id]

  )
  food.to_json
end

post '/City' do 
  city = City.create(
    city_name: params[:city_name]
  )
  city.to_json
end

post '/Frequent' do
  frequent = Frequent.create(
    go_back: params[:go_back]
  )
  frequent.to_json
end


patch '/Food/:id' do 
  food = Food.find(params[:id])
  food.update( food_name: params[:food_name],
    location: params[:location],
    r_name: params[:r_name],
    review: params[:review],
    scale: params[:scale],
    city_id: params[:city_id],
    frequent_id: params[:frequent_id])
    food.to_json
  end

delete '/Food/:id' do
  food = Food.find(params[:id])
  food.destroy
  food.to_json
end

# post '/Location' do
#   location = Location.create(
#     location_name: params[:location_name]
#   )
#   location.to_json
# end

# post '/Review' do
#   review = Review.create(
#     review: params[:review],
#     scale: params[:scale]
#   )
#   review.to_json
# end

end
