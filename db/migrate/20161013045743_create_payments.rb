class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :content
      t.float :amount
      t.integer :sender_id
      t.integer :receiver_id
      t.references :booking, foreign_key: true

      t.timestamps
    end
    add_index :payments, :sender_id
    add_index :payments, :receiver_id
    add_index :payments, [:sender_id, :receiver_id], unique: true
  end
end
