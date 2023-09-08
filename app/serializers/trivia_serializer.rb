class TriviaSerializer
  include JSONAPI::Serializer
  set_id :id
  attributes  :trivia_category,
              :trivia_question,
              :trivia_answer
end