class Work < ApplicationRecord
  belongs_to :diary
  has_one :memo, dependent: :destroy
  belongs_to :category
 
  validates :category, presence: true
  validates :title, presence: true
end