class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :course, index: true, foreign_key: true
      t.date :date

      t.timestamps null: false
    end
  end
end
