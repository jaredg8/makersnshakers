class AddReviewableFieldsToReviews < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :object_id, :reviewable_id
    rename_column :reviews, :object_type, :reviewable_type
  end
end
