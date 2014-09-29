class AddPhoneToCarrier < ActiveRecord::Migration
  def change
  	add_column :carriers, :phone_number, :integer, index: true
  end
end
