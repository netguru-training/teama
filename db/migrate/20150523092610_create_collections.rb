class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.references :user, index: true
      t.references :board_game, index: true

      t.timestamps null: false
    end
    add_foreign_key :collections, :users
    add_foreign_key :collections, :board_games
  end
end
