class AddUserRefToCatalogs < ActiveRecord::Migration
  def change
    add_reference :catalogs, :user, index: true
    add_foreign_key :catalogs, :users
  end
end
