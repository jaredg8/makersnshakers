class AddAddressToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :address, :string
  end
end
