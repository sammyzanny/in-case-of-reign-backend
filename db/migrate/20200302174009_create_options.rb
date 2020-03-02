class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.integer :points
      t.string :description
      t.belongs_to :case

      t.timestamps
    end
  end
end
