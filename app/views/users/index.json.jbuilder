json.array!(@users) do |user|
  json.extract! user, :id, :name, :pass, :user_type_id
  json.url user_url(user, format: :json)
end
