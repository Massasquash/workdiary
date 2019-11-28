class Work < ApplicationRecord
  belongs_to :diary
  belongs_to :category
  has_one :memo, dependent: :destroy
  validates :title, presence: true
end