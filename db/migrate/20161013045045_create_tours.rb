class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.integer :start_place_id
      t.integer :end_place_id
      t.float :price
      t.integer :currency
      t.datetime :start_date
      t.datetime :end_date
      t.integer :min_visitors
      t.integer :max_visitors
      t.integer :seat
      t.integer :status, default: 0
      t.string :accommodation
      t.string :meals
      t.string :transport
      t.string :additional_services
      t.references :place, foreign_key: true
      t.references :category, foreign_key: true
      t.references :discount, foreign_key: true

      t.timestamps
    end
  end
end
