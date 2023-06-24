class CreatePostDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :post_details do |t|
      t.integer :post_id
      t.integer :nice
      t.text :comment
      t.timestamps
    end
  end
end
