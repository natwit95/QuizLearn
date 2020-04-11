class TranslationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :input, :output, :user_language_id
end
