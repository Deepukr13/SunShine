class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :From
      t.string :To
      t.text :Body

      t.timestamps
    end
  end
end
