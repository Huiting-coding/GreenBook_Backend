class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :condition
      t.references :user, null: false, foreign_key: true
      t.boolean :available
    end
  end
end
