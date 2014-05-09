class AddStatesToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :state, :string
  end
end
