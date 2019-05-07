class SerializableRecord < JSONAPI::Serializable::Resource
  type { @object.class.to_s }
end