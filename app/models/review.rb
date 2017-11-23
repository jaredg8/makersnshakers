class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :user

  attr_accessor :item_text, :item_rating
  after_create :create_item_review

  def create_item_review
    return false unless reviewable_type == "Transaction"
    reviewable.item.reviews.create(
      text: item_text,
      rating: item_rating
      )
  end
end
