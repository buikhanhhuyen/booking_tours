class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.float :total_price
      t.datetime :date
      t.references :user, foreign_key: true
      t.references :tour, foreign_key: true
      t.references :discount, foreign_key: true

      t.timestamps
    end
  end
end
