class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :likable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :likes, [:likable_id, :user_id], unique: true
  end
end
