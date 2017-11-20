class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :meetup_location, :status, :price, presence: true
  # validates_uniqueness_of :user_id, :scope => [:user, item: [:user]]
  # before_save :check_user_transaction





  # def check_user_transaction
  #   if self.user == self.item.user
  #     errors.add("You cant book yourself.")
  #   end
  # end


end
