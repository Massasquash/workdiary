class Category < ApplicationRecord
  has_many :works, dependent: :nullify
  validates :name, uniqueness: true, presence: true
end
