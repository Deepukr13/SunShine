class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :home
      t.string :guest
      t.string :member
      t.string :search
      t.string :donor
      t.string :community
      t.string :news
      t.string :contact
      t.string :login

      t.timestamps
    end
  end
end
