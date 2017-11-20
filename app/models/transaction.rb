class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :meetup_location, :status, :price, presence: true


end
