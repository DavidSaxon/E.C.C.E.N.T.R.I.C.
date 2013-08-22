json.array!(@users) do |user|
  json.extract! user, :userid, :username
  json.url user_url(user, format: :json)
end
