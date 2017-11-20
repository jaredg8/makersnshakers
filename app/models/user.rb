class User < ApplicationRecord
  has_many :reviews, as: :reviewable
  has_many :items
  has_many :transactions

  validates :name, :address, :city, :state, :postal_code, :email, :phone_number, presence: true



end
