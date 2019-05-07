class SerializableState < SerializableRecord
 attributes :name
 belongs_to :country
 has_many :cities
end