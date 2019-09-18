class Diary < ApplicationRecord
  validates :date, uniqueness: true
end
