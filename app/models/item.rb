class Item < ApplicationRecord
  belongs_to :user

  has_many :reviews, as: :reviewable
  has_many :transactions

  # has_attachments :photos, maximum: 2

end

