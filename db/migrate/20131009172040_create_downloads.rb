class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.integer :customer_id
      t.integer :album_id
      t.date :date
      t.string :payment_method

      t.timestamps
    end
  end
end
