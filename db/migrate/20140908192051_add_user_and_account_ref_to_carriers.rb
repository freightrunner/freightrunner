class AddUserAndAccountRefToCarriers < ActiveRecord::Migration
  def change
  	add_reference :carriers, :user, index: true
  	add_reference :carriers, :account, index: true
  	add_index :carriers, :mc_no
  	add_index :carriers, :dot_no
  	add_index :carriers, :name
  end
end
