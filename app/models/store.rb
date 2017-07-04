class Store < ApplicationRecord
	has_many :goals
	has_many :store_sellers
	has_many :sellers, through: :store_sellers
	has_many :user_stores
	has_many :users, through: :user_stores

	validates :name, presence: true

	accepts_nested_attributes_for :sellers
end
