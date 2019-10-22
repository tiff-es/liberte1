class Item < ApplicationRecord

  has_many :purchases
  has_many :customers, through: :purchases

  belongs_to :category

end
