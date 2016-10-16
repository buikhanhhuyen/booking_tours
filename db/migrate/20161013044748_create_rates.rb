class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :tour, foreign_key: true

      t.timestamps
    end
    add_index :rates, [:user_id, :tour_id], unique: true
  end
end
