json.array!(@users) do |user|
  json.extract! user, :name, :l_name, :key
  json.url user_url(user, format: :json)
end
