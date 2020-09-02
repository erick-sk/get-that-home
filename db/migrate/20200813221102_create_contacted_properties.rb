class CreateContactedProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :contacted_properties do |t|
      #t.belongs_to :user
      #t.belongs_to :property


      t.references :property, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end    

  end


end
