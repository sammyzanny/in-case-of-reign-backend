class CreateBundles < ActiveRecord::Migration[6.0]
  def change
    create_table :bundles do |t|
      t.string :theme

      t.timestamps
    end
  end
end
