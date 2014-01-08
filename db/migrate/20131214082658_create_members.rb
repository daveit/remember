class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :phone
      t.string :mobile
      t.string :email
      t.references :suburb, index: true
      t.references :category, index: true
      t.references :member_village, index: true

      t.timestamps
    end
  end
end
