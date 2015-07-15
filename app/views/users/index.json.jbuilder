json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :galaxy, :planet, :planet_no, :country, :city, :city_citizens, :street, :house
  json.url user_url(user, format: :json)
end
