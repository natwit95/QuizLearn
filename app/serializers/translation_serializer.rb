class TranslationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :input, :output, :user_id, :language_id
end
