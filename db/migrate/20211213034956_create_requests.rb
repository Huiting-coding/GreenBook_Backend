class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.reference :user
      t.reference :item

      t.timestamps
    end
  end
end
