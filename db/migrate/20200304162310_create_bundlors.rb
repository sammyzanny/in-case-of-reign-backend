class CreateBundlors < ActiveRecord::Migration[6.0]
  def change
    create_table :bundlors do |t|
      t.references :case, null: false, foreign_key: true
      t.references :bundle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
