class Translation < ApplicationRecord
  belongs_to :user
  belongs_to :language  
  has_many :quiz_translations, dependent: :destroy
  has_many :quizzes, through: :quiz_translations
end
