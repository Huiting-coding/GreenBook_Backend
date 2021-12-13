class RemoveCategoryIdFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :category_id
  end
end
