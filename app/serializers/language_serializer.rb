class LanguageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :language, :language_code
end
