class StoreSeller < ApplicationRecord
	belongs_to :store
	belongs_to :seller

	validates :store_id, :seller_id, presence: true
end
