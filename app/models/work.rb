class Work < ApplicationRecord
  belongs_to :diary
  has_one :memo, dependent: :destroy
 
  validates :category, presence: true
  validates :title, presence: true
end