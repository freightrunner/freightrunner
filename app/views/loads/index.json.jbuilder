json.array!(@loads) do |load|
  json.extract! load, :id, :origin, :destination
  json.url load_url(load, format: :json)
end
