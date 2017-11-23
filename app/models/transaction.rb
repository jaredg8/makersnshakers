class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item

  def final_price
    rental_days * item.price
  end

  def rental_days
    (end_date.to_date - start_date.to_date).to_i
  end
end
