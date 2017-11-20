class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_many :reviews, as: :reviewable
  # has_many :items
  # has_many :transactions

  # validates :name, :address, :city, :state, :postal_code, :email, :phone_number, presence: true


end
