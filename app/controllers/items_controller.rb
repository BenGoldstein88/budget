class ItemsController < ApplicationController


	def index
		@budgeter = Budgeter.first
		@items = Item.all
	end

	def new

	end

	def update
		@item = Item.find(params[:id])
		if @item.active?
			@item.update(active: false)
		else
			@item.update(active: true)
		end
		redirect_to root_path
	end

	def create
		item_params = params[:item]
		@name = item_params[:name]
		@description = item_params[:description]
		@active = params[:active] || false
		@price_in_pennies = params[:price_in_pennies]
		budgeter = Budgeter.first
		@budgeter_id = budgeter.id
		@item = Item.create!(name: @name, description: @description, price_in_pennies: @price_in_pennies, active: @active, budgeter_id: @budgeter_id)
		redirect_to root_path
	end

	def destroy
		@item = Item.find(params[:id])
		@item.delete
		redirect_to root_path
	end

end
