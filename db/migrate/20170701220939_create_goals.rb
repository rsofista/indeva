class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer    :user_id
      t.belongs_to :store
      t.date       :start_date
      t.date       :end_date
      t.float      :value
      t.integer    :year
      t.integer    :month
    end
  end
end
