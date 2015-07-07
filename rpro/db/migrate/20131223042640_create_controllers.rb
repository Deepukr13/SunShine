class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :Store
      t.string :index
      t.string :show

      t.timestamps
    end
  end
end
