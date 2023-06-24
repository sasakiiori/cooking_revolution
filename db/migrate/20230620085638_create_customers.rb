class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :password
      t.boolean :is_deleted
      t.timestamps
    end
  end
end
