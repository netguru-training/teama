class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :board_game, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :board_games
    add_foreign_key :reviews, :users
  end
end
