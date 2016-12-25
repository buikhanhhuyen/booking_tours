class CreateNotificationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.integer :notifiable_id
      t.string :notifiable_type
      t.boolean :seen

      t.timestamps null: false
    end
  end
end
