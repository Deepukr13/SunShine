class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :index
      t.string :show

      t.timestamps
    end
  end
end
