class Language < ApplicationRecord
    has_many :user_languages
    has_many :translations, through: :user_languages
end
