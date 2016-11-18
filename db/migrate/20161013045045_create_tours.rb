class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :startPlace
      t.string :endPlace
      t.text :description
      t.float :price
      t.integer :currency
      t.float :rating
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status
      t.references :place, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
