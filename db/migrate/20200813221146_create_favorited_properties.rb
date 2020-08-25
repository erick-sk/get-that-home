class CreateFavoritedProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :favorited_properties do |t|
      t.belongs_to :user
      t.belongs_to :property
      
      t.integer :favorited, default: 0

      t.timestamps
    end
  end
end
