json.array!(@users) do |user|
  json.extract! user, :login, :email, :crypted_password, :salt
  json.url user_url(user, format: :json)
end