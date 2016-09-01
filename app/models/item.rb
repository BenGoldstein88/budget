class Item < ActiveRecord::Base


	validates :name, :description, :price_in_pennies, presence: true
	belongs_to :budgeter
	
	def pretty_price
		"$#{((self.price_in_pennies.to_f) / 100).round(2)}"	
	end

end