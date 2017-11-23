class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :start_date, :end_date, presence: true

  def final_price
    rental_days * item.price
  end

  def rental_days
    (end_date - start_date).to_i
  end
end
