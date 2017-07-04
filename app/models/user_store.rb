class UserStore < ApplicationRecord
	belongs_to :user
	belongs_to :store

	validates :user_id, :store_id, presence: true
end
