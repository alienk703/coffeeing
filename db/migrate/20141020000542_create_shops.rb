class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
	  t.string :addrss, null: false
      t.timestamps
    end
  end
end
