class CreateMatchPlayHoleWins < ActiveRecord::Migration
  def change
    create_table :match_play_hole_wins do |t|
      t.references :hole, index: true, foreign_key: true
      t.references :pair, index: true, foreign_key: true
      t.references :round, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
