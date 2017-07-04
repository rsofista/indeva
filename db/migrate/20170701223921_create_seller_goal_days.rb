class CreateSellerGoalDays < ActiveRecord::Migration[5.1]
  def change
    create_table :seller_goal_days do |t|
      t.belongs_to :goal_day
      t.belongs_to :seller
      t.float      :value
    end
  end
end
