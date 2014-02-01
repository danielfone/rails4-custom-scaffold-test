json.array!(@smart_users) do |smart_user|
  json.extract! smart_user, :id, :name, :pass, :user_type_id
  json.url smart_user_url(smart_user, format: :json)
end
