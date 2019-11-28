class Template < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :body, presence: true
end