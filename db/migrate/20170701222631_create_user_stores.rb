class CreateUserStores < ActiveRecord::Migration[5.1]
  def change
    create_table :user_stores do |t|
      t.belongs_to :user
      t.belongs_to :store
    end
  end
end
