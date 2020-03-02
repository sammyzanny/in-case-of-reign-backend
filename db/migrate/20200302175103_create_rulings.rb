class CreateRulings < ActiveRecord::Migration[6.0]
  def change
    create_table :rulings do |t|
      t.integer :verdict
      t.belongs_to :user
      t.belongs_to :case

      t.timestamps
    end
  end
end
