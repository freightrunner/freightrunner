class RenameMdColumnInCarriers < ActiveRecord::Migration
  def change
  	change_table :carriers do |t|
  		t.rename :md, :mc_no
  		t.integer :dot_no
  	end
  	change_table :loads do |t|
  		t.references :carrier, index: true
  	end
  end
end
