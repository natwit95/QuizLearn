class User < ApplicationRecord
    has_many :quizzes
    has_many :quiz_translations, through: :quizzes
    has_many :translations
    has_many :languages, through: :translations
end
