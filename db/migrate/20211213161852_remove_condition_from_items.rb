class RemoveConditionFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :condition
  end
end
