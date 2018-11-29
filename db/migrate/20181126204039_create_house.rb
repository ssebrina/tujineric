class CreateHouse < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :houses
      t.string :property_type
      t.decimal :price
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :description
    end
  end
end
