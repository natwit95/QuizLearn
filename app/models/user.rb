class User < ApplicationRecord
    has_many :quizzes
    has_many :quiz_translations, through: :quizzes
    has_many :user_languages
    has_many :translations, through: :user_languages
    has_many :languages, through: :user_languages
end
