class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :galaxy
      t.string :planet
      t.integer :planet_no
      t.string :country
      t.string :city
      t.float :city_citizens
      t.string :street
      t.string :house

      t.timestamps null: false
    end
  end
end
