class AddUserRefToLoads < ActiveRecord::Migration
  def change
    add_reference :loads, :user, index: true
  end
end
