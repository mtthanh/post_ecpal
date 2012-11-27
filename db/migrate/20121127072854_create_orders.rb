class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :id
      t.string :order_number
      t.date :order_date
      t.string :status
      t.integer :total

      t.timestamps
    end
  end
end
