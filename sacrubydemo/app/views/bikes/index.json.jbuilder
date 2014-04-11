json.array!(@bikes) do |bike|
  json.extract! bike, :id, :name, :latitude, :longitude
  json.url bike_url(bike, format: :json)
end
