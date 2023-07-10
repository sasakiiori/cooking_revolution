class CreateNices < ActiveRecord::Migration[6.1]
  def change
    create_table :nices do |t|
      t.integer :customer_id
      t.integer :post_id
      
      t.index [:customer_id, :post_id], unique: true
      t.timestamps
    end
  end
end
