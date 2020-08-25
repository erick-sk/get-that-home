class CreateContactedProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :contacted_properties do |t|
      t.belongs_to :user
      t.belongs_to :property

      t.integer :contacted, default: 0

      t.timestamps
    end
  end
end
