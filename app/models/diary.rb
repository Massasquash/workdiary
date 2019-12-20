class Diary < ApplicationRecord
  validates :date, uniqueness:  { scope: :user_id }
  has_many :works, dependent: :destroy
  belongs_to :user
end
