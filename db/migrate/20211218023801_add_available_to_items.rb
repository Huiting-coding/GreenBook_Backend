class AddAvailableToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :available, :boolean, default: true
  end
end
