class ItemsController < ApplicationController


	def index
		@budgeter = Budgeter.first
		@items = Item.all
	end
end
