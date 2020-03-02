class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :picture
      t.integer :rating_boost
      t.text :disclosure
      t.integer :creator_id

      t.timestamps
    end
  end
end
