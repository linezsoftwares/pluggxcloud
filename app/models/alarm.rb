class Alarm
  include Mongoid::Document
  field :name, type: String
  field :enabled, type: String
  field :days, type: String
  field :start, type: Integer
  field :stop, type: Integer
end
