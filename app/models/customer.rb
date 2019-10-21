class Customer < ApplicationRecord

  has_many :purchases
  has_many :items, through: :purchases

  has_many :reviews
  has_many :items, through: :reviews

end
