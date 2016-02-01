class CreatePairGroupings < ActiveRecord::Migration
  def change
    create_table :pair_groupings do |t|
      t.references :pair, index: true, foreign_key: true
      t.references :foursome, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
