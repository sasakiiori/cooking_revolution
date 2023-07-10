class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.boolean :is_deleted, default: false, null: false
      t.timestamps
    end
  end
end
