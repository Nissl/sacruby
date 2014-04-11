class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street
      t.integer :zip

      t.timestamps
    end
  end
end
