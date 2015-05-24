class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :friend_id
      t.boolean :accepted
      t.references :user, index: true

      t.timestamps null: false
    end
    add_index :friends, :friend_id
    add_foreign_key :friends, :users
  end
end
