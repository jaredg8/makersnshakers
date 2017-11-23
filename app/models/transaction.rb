class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :meetup_location, :status, presence: true

end
