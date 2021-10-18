class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :total
      t.string :ship_to_address
      t.string :status
      t.date :order_placed
      t.date :delivered_on
      t.boolean :slime
      
      t.belongs_to :user

      t.timestamps
    end
  end
end
