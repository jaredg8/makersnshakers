class Item < ApplicationRecord
  belongs_to :user
  has_many :reviews, as: :reviewable
  has_many :transactions


end
