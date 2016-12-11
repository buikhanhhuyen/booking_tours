class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :description
      t.float :amount
      t.string :email
      t.string :customer_token
      t.string :charge_token
      t.integer :status
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
