class AddUserIdToGroup < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :rank, :string
  end
end
