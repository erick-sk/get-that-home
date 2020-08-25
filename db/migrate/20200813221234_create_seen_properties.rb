class CreateSeenProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :seen_properties do |t|
      t.belongs_to :user
      t.belongs_to :property
      
      t.integer :seen, default: 0

      t.timestamps
    end
  end
end
