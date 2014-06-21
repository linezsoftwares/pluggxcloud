json.array!(@alarms) do |alarm|
  json.extract! alarm, :id, :name, :enabled, :days, :start, :stop
  json.url alarm_url(alarm, format: :json)
end
