class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :content
      t.float :amount
      t.integer :status
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
