class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.integer :contact_number

      t.timestamps
    end
  end
end
