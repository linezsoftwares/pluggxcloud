class Device
  include Mongoid::Document
  field :hid, type: String
  field :fwversion, type: String
  field :hwversion, type: String
  field :moduleinfo, type: String
  field :name, type: String

  embeds_many :controls
end
