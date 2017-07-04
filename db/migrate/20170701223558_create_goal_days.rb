class CreateGoalDays < ActiveRecord::Migration[5.1]
  def change
    create_table :goal_days do |t|
      t.belongs_to :goal
      t.date    :date
      t.integer :day
      t.float   :value
    end
  end
end
