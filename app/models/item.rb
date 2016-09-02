class Item < ActiveRecord::Base


	validates :name, :description, :price_in_pennies, presence: true
	belongs_to :budgeter
	
	def pretty_price
		"$#{sprintf('%.02f', (self.price_in_pennies.to_f) / 100)}"	
	end

end