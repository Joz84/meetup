class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :post, :string
    add_column :users, :company, :string
    add_column :users, :motivated, :integer
    add_column :users, :informed, :integer
    add_column :users, :interested, :integer
  end
end
