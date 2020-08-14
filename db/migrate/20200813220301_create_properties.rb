class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      
      t.string :address
      t.integer :price
      t.integer :security_deposit
      t.integer :operation_mode
      t.integer :maintenance
      t.integer :area
      t.text :description
      t.float :latitude
      t.float :longitude
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :type  
      t.boolean :closed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
