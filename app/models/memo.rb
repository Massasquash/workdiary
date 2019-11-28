class Memo < ApplicationRecord
  belongs_to :work
  validates :body, presence: true
end
