class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :customer_id
      t.integer :category_id
      t.string :name
      t.text :explanation
      t.boolean :status, default: true, null: false
      t.timestamps
    end
  end
end
