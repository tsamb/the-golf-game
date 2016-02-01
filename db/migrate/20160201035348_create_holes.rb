class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :number
      t.integer :par
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
