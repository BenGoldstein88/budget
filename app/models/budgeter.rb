class Budgeter < ActiveRecord::Base

	has_many :items

	def active_items
		self.items.select { |item| 	item.active }
	end

	def total_in_pennies
		active_totals = self.active_items.map do |item|
			item.price_in_pennies
		end
		active_totals.reduce(:+)
	end

	def pretty_total
		"$#{((self.total_in_pennies.to_f) / 100).round(2)}"
	end


end

