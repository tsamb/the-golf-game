class CreateFoursomes < ActiveRecord::Migration
  def change
    create_table :foursomes do |t|
      t.references :round, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
