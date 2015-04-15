class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :important, default: false
      t.datetime :deadline
      t.boolean :is_done, default: false
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :categories
  end
end
