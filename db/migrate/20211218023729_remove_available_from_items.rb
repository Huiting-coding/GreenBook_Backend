class RemoveAvailableFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :available, :boolean
  end
end
