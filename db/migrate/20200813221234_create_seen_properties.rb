class CreateSeenProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :seen_properties do |t|
      t.belongs_to :user
      t.belongs_to :property
      
      t.integer :seen

      t.timestamps
    end
  end
end
