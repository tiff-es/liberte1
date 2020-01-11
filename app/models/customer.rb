class Customer < ApplicationRecord
  validates :first_name, presence: true, length: {minimum: 1}
  validates :last_name, presence: true, length: {minimum: 1}
  validates :address, presence: true, uniqueness: {message: "Address already in database, please try again"}
  validates :birthday, presence: true
  validates :username, presence: true, uniqueness: {message: 'Username taken, please try again'}

  has_many :purchases
  has_many :items, through: :purchases

  has_many :reviews
  has_many :items, through: :reviews


  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  def purchase_list # returns array of purchased item instances for a customer
    purchase_list = []
    if self.purchases.length > 0
     self.purchases.each do |purchase|
        purchase_list << purchase.item
     end
     return purchase_list
     end
  end


  #     WRITE EASIER ADDRESS METHOD? vvv
  # def consolitdate_addresss(street,state,zip)
  #   @address_array = []
  #   @address_array[0] = street
  #   @address_array[1] = state
  #   @address_array[3] = zip
  # def validate_addrres
  #   if self.match(/(\d{4}\b) (\D\w+)\b (Ave.|ave.|avenue|Avenue|street|Street|St|st|Drive|drive|Dr|dr|Court|court|ct|Ct|lane|Lane|ln|Ln)\b (\w{2})\b (\d{5}\b)/)
  #
  #   end
  #
end




