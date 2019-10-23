class Item < ApplicationRecord

  has_many :purchases
  has_many :customers, through: :purchases
  has_many :reviews
  accepts_nested_attributes_for :reviews

  belongs_to :category

end
