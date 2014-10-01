class RemoveAccountReferenceFromUser < ActiveRecord::Migration
  def change
  	remove_reference :users, :account
  end
end
