class Seller < ApplicationRecord
	has_many :store_sellers
	has_many :stores, through: :store_sellers

	validates :name, presence: true
end
