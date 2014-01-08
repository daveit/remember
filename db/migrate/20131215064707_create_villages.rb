class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.belongs_to :suburb, index: true
      t.string :phone
      t.string :email
      t.date :financial_to
      t.integer :residents

      t.timestamps
    end
  end
end
