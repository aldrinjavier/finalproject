class AddAddressToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :address, :string

    add_column :customers, :latitude, :float

    add_column :customers, :longitude, :float

  end
end
