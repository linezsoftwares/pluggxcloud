json.array!(@powerconsumptions) do |powerconsumption|
  json.extract! powerconsumption, :id, :day, :data
  json.url powerconsumption_url(powerconsumption, format: :json)
end
