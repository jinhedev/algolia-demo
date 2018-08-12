class CreateChampions < ActiveRecord::Migration[5.1]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :location
      t.text :quote
      t.text :summoner_spell
      t.text :masteries

      t.timestamps
    end
  end
end
