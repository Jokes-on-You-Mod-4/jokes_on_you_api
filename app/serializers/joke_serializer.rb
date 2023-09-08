class JokeSerializer
  include JSONAPI::Serializer
  set_id :id
  attributes  :id, :joke
end