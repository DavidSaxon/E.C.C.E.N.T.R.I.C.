json.array!(@settings) do |setting|
  json.extract! setting, :settid, :title, :description
  json.url setting_url(setting, format: :json)
end
