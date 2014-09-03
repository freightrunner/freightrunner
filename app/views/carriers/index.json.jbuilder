json.array!(@carriers) do |carrier|
  json.extract! carrier, :id, :name, :md
  json.url carrier_url(carrier, format: :json)
end
