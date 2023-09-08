class EmojiSerializer
  include JSONAPI::Serializer
  attributes :code, :character, :image, :name
end


