json.array!(@policies) do |policy|
  json.extract! policy, :player_id, :setting_id, :value
  json.url policy_url(policy, format: :json)
end
