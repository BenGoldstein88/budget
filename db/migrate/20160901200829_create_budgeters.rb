class CreateBudgeters < ActiveRecord::Migration
  def change
    create_table :budgeters do |t|

      t.timestamps null: false
    end
  end
end
