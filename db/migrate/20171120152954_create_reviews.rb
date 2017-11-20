class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :text
      t.integer :object_id
      t.string :object_type

      t.timestamps
    end
  end
end
