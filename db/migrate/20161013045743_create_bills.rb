class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :content
      t.float :amount
      t.integer :sender_id
      t.integer :receiver_id
      t.references :booking, foreign_key: true

      t.timestamps
    end
    add_index :bills, :sender_id
    add_index :bills, :receiver_id
    add_index :bills, [:sender_id, :receiver_id], unique: true
  end
end
