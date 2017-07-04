class GoalDay < ApplicationRecord
	belongs_to :goal

	has_many :seller_goal_days
	has_many :sellers, through: :seller_goal_days

	before_validation :set_date_from_day

	validates :date, :day, :value, presence: true

	private
		def set_date_from_day
			if self.day && self.goal && self.goal.start_date && self.goal.end_date
				# primeiro dia do mês seguinte
				if self.day == 1
					self.date = self.goal.end_date
				else
					self.date = self.goal.start_date
					self.date.change day: self.day
				end
			end
		end
end
