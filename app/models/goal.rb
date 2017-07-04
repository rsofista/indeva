class Goal < ApplicationRecord
	belongs_to :user
	belongs_to :store

	has_many :goal_days
	has_many :store_goals
	has_many :stores, through: :store_goals

	validates :store_id, :start_date, :end_date, :value, :year, :month, presence: true
	validates :month, uniqueness: { scope: [:year, :store_id], message: 'Não pode haver mais de uma meta para o mesmo mês' }
	validate :goal_days_sum_value

	accepts_nested_attributes_for :goal_days

	before_validation :set_values_from_start_date
	after_initialize :set_default_values

	def goal_days_sum_value
		goal_values_sum = self.goal_days.inject(0) { |sum, goal_day| sum + goal_day.value }

		if goal_values_sum.round(2) != self.value.round(2)
			errors.add :value, "A soma dos dias: #{self.value.round(2)}, deve ser igual a da meta: #{goal_values_sum.round(2)}"
		end
	end

	def build_days
		if self.goal_days.empty?
			day_value = self.value / ((self.end_date - self.start_date) + 1).to_i

			start_date.upto(end_date) do |date|
				self.goal_days.build date: date, value: day_value, day: date.day
			end
		end
	end

private
	def set_default_values
		today = Date.today

		self.start_date ||= today.beginning_of_month + 1.day
		self.end_date   ||= today.end_of_month + 1.day
		self.value      ||= ((self.end_date - self.start_date).to_i+1) * 1000
	end

	def set_values_from_start_date
    if self.start_date
      self.year     = self.start_date.year
      self.month    = self.start_date.month
      self.end_date = self.start_date + 1.month - 1.day
    end
  end
end
