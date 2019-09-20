class Work < ApplicationRecord
  belongs_to :diary
 
  validates :category, presence: true
  validates :title, presence: true
end