class Translation < ApplicationRecord
  belongs_to :user_language
  has_many :quiz_translations
  has_many :quizzes, through: :quiz_translations
  has_one :user, through: :user_language
  has_one :language, through: :user_language
end
