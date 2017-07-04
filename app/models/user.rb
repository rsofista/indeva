class User < ApplicationRecord
	has_many :user_stores
	has_many :stores, through: :user_stores
	has_many :goals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable
  # :database_authenticatable, :registerable
  # :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable

  validates :email, presence: true
end
