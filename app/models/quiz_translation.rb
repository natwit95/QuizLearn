class QuizTranslation < ApplicationRecord
  belongs_to :translation
  belongs_to :quiz
  has_one :user, through: :quiz
end
