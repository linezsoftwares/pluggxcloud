json.array!(@devices) do |device|
  json.extract! device, :id, :hid, :fwversion, :hwversion, :moduleinfo, :name
  json.url device_url(device, format: :json)
end
