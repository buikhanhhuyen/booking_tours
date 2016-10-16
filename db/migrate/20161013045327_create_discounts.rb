class CreateDiscounts < ActiveRecord::Migration[5.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.float :percent
      t.text :description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
