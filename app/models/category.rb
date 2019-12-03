class Category < ApplicationRecord
  has_many :works, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
