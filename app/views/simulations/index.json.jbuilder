json.array!(@simulations) do |simulation|
  json.extract! simulation, :simuid, :name
  json.url simulation_url(simulation, format: :json)
end
