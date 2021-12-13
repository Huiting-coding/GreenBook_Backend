class RemoveCategoryFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :owner_id
  end
end
