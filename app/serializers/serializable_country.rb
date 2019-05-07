class SerializableCountry < SerializableRecord
  attributes :name, :code
  has_many :states
end