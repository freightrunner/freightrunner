class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :name
      t.integer :md

      t.timestamps
    end
  end
end
