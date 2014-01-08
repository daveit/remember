class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :wphone
      t.string :hphone
      t.string :fax
      t.string :mobile
      t.string :email
      t.text :notes
      t.references :village, index: true
      t.references :com_type, index: true

      t.timestamps
    end
  end
end
