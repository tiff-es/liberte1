class Review < ApplicationRecord

  belongs_to :item
  belongs_to :customer, optional: true


  validates :rating, presence: true
  validates :content, presence: true
end
