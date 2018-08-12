class AddChampionIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :champions, :user_id, :integer
    add_index :champions, :user_id
  end
end
