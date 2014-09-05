class AddNameToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :name, :string, index: true
  end
end
