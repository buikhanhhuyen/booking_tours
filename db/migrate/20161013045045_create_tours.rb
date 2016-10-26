class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.float :price
      t.float :rating
      t.datetime :startDate
      t.datetime :endDate
      t.integer :status
      t.references :place, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
