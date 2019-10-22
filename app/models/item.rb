class Item < ApplicationRecord

  has_many :purchases
  has_many :customers, through: :purchases
  has_many :reviews, through: :purchases

  belongs_to :category

end
