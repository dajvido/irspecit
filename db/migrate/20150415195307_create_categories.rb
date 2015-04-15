class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :user, index: true
      t.references :catalog, index: true

      t.timestamps null: false
    end
    add_foreign_key :categories, :users
    add_foreign_key :categories, :catalogs
  end
end
