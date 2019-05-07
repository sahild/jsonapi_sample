class SerializableAddress < SerializableRecord
  belongs_to :user
  belongs_to :city
  attributes :line_1, :line_2
end