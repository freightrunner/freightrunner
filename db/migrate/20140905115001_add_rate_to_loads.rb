class AddRateToLoads < ActiveRecord::Migration
  def change
  	change_table :loads do |t|
  		t.decimal :pay_truck, precision: 8, scale: 2
  		t.decimal :bill_customer, precision: 8, scale: 2
  		t.date :pick_date
  		t.time :pick_time
  		t.date :drop_date
  		t.time :drop_time
  	end
  end
end
