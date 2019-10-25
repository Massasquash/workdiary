class Work < ApplicationRecord
  belongs_to :diary
  has_one :memo
 
  validates :category, presence: true
  validates :title, presence: true
end