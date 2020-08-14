class CreateBuildAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :build_amenities do |t|
      t.belongs_to :property
      
      t.integer :name

      t.timestamps
    end
  end
end
