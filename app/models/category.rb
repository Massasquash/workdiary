class Category < ApplicationRecord
  has_many :works
  validates :name, uniqueness: true, presence: true
end
