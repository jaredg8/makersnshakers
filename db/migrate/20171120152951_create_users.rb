class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :phone_number

      t.timestamps
    end
  end
end
