class UserLanguageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :language_id
end
