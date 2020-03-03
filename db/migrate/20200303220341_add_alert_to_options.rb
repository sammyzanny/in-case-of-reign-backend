class AddAlertToOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :options, :alert, :text
  end
end
