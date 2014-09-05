class AddPicksToLoads < ActiveRecord::Migration
  def change
    add_column :loads, :picks, :integer, default: 1
    add_column :loads, :drops, :integer, default: 1
  end
end
