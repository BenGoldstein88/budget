class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
	    t.string :name
	    t.string :description
	    t.integer :price_in_pennies
	    t.boolean :active, default: false
	    t.integer :budgeter_id

	    t.timestamps null: false
    end
  end
end