class SerializableCity < SerializableRecord
  attributes :name
  belongs_to :state

end