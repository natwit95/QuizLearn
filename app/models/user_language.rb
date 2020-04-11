class UserLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :language
  has_many :translations
end
