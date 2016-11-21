class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :start_place
      t.string :end_place
      t.text :description
      t.float :price
      t.integer :currency
      t.datetime :start_date
      t.datetime :end_date
      t.integer :min_visitors
      t.integer :max_visitors
      t.references :place, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
