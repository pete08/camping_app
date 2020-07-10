class Supply < ApplicationRecord

  # array_prices = [10.00, 15.00, 20.00, 25.00, 30.00]

  validates :name, presence: true
  validates :"description", length: { in: 1..50 }
  validates :price, numericality: {greater_than_or_equal_to: 5}
  validates :title, presence: true , inclusion: {in: [10.00, 15.00, 20.00, 25.00, 30.00]
  }
  ### validate :price, if: :correct_price 

  # def correct_price?
  #   x = 5
  #   if x == 20
  #   end

  #   # prices = [10.00, 15.00, 20.00, 25.00, 30.00]
  #   # prices.each do |n|
  #   #   :price == n
  # end
end
