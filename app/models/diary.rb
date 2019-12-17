class Diary < ApplicationRecord
  validates :date, uniqueness: true
  has_many :works, dependent: :destroy
  belongs_to :user
end
