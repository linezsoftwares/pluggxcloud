class Control
  include Mongoid::Document
  field :cid, type: String
  field :name, type: String
  
  field :type, type: String
  field :status, type: String
  field :installation_type, type: Integer
  field :usage_time, type: Integer
  field :activity_count, type: Integer

embedded_in :device
end
