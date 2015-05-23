class CreateBoardGames < ActiveRecord::Migration
  def change
    create_table :board_games do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
