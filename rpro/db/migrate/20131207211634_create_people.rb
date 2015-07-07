class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :lastName
      t.text :address
      t.date :dob
      t.integer :phone
      t.string :blood
      t.date :last_given
      t.string :image
      t.decimal :weight
      t.string :email

      t.timestamps
    end
  end
end
