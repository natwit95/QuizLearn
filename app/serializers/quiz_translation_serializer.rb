class QuizTranslationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :quiz_id, :translation_id
end
