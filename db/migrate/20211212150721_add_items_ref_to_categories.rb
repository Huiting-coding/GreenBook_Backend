class AddItemsRefToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :item, null: false, foreign_key: true
  end
end