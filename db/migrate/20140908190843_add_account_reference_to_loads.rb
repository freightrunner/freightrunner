class AddAccountReferenceToLoads < ActiveRecord::Migration
  def change
    add_reference :loads, :account, index: true
  end
end
