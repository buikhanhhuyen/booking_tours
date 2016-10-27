class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone_number
      t.boolean :sex
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
