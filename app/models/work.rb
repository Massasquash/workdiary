class Work < ApplicationRecord
  belongs_to :diary
 
  with_options presence: true do
    validates :category
    validates :title
  end
end
