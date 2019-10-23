class Review < ApplicationRecord

  belongs_to :item
  belongs_to :customer


  validates :rating, presence: true
  validates :content, presence: true
end
