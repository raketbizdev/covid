class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.date :observation_date
      t.string :province
      t.string :country
      t.date :last_update
      t.integer :confirmed
      t.integer :deaths
      t.integer :recovered

      t.timestamps
    end
  end
end
