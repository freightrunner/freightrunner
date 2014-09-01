class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
