class SerializableUser < SerializableRecord
  attributes :first_name , :last_name , :title, :email, :full_name
  has_many :addresses
end