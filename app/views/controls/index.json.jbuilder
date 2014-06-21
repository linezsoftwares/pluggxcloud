json.array!(@controls) do |control|
  json.extract! control, :id, :cid, :name, :type, :status, :installation_type, :usage_time, :activity_count
  json.url control_url(control, format: :json)
end
