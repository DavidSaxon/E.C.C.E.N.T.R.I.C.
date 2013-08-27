json.array!(@displays) do |display|
  json.extract! display, :name, :group, :pathname
  json.url display_url(display, format: :json)
end
