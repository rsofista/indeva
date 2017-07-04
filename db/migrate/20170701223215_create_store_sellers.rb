class CreateStoreSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :store_sellers do |t|
      t.belongs_to :store
      t.belongs_to :seller
    end
  end
end
